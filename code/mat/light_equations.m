close all
clear all
%% BROCH
P1      =        1.22e-3   ;   %Reference photosynthetic rate at T1                    (gC/m2/d)
P2      =        1.30e-3   ;   %Reference photosynthetic rate at T2                    (gC/m2/d)
Tp1     =        285.000   ;   %temp for reference photosynthetic rate 1               (degK)
Tp2     =        288.000   ;   %temp for reference photosynthetic rate 2               (degK)
% extremely important parameter!
PL      =        3.394e-4  ;
PH      =        6.787e-4  ;
TpL     =        271.0     ;   % low end of photosynthetic range
TpH     =        296.0     ;   % high end of photosynthetic range
TapL    =        27774.000 ;   % Arrhenius temp for photosynthesis low end  
TapH    =        25924.000 ;   % Arrhenius temp for photosynthesis high end             (degK)
%
R1      =        2.785e-4;
R2      =        5.429e-4;
Tr1     =        285;
Tr2     =        290;

% this is the alpha for gC/dm2 plant/hr
alpha0  = 0.0000375;

Tap     = log(P2/P1)/((1/Tp1)-(1/Tp2)); 
Tar     = log(R2/R1)/((1/Tr1)-(1/Tr2));
%TapL    = log(P1/PL)/((1/TpL)-(1/Tp1));
%TapH    = log(P2/PH)/((1/Tp2)-(1/TpH));

Isat    =        200.0;
%% CALCULATION
beta = logspace(-12,-6,1000);
interval = 0.1;
T = [TpL:interval:TpH];

PmaxT = (P1 .* exp((Tap/Tp1) - (Tap./T))) ./ (1 + exp((TapL./T) - (TapL/TpL)) + exp((TapH/TpH) - (TapH./T)));

PmaxB = ((alpha0*Isat./(log(1+(alpha0./beta)))) .*(alpha0./(alpha0+beta)) .* (beta./(alpha0+beta)).^(beta./alpha0));

Ps = (alpha0*Isat)./(log(1+(alpha0./beta))); 

figure(1)

subplot(1,3,1)
title('Pmax via Temp')
plot(T-273,PmaxT,'o-');hold on
ylim([0 0.002])
xlabel('Temperature [^0C]')
ylabel('gross production [gC/dm^2 h^-^1]')
xlim([min(T)-273,max(T)-273])
set(gca,'FontSize',14)

subplot(1,3,2)
title('Pmax via beta')
plot(beta,PmaxB,'o-') ; hold on
plot(beta,Ps,'x-'); hold on
ylim([0 0.002])
set(gca, 'XScale', 'log')
ylabel('gross production [gC/dm^2 h^-^1]')
xlabel('beta')
set(gca,'FontSize',14)
%legend('P_m_a_x','P_s')

subplot(1,3,3)
title('Gross rate')
ii = 1;
for fact = 0.05:0.05:1
    I = Isat * fact;
    lnd{ii} = strcat('I = ',num2str(I),' ',' umol m^-^2 s^-1');
    P = Ps .* (1-exp(-alpha0*I./Ps)).*exp(-beta.*I./Ps);
    
    plot(beta,P); hold on
    ylim([0 0.002])
    set(gca, 'XScale', 'log')
    ii = ii + 1;
end
xlabel('beta')
ylabel('gross production [gC/dm^2 h^-^1]')
legend(lnd,'Location','northwest')
set(gca,'FontSize',14)

fid = fopen('d:\projects\IMPAQT\MALG\code\beta_condition.f','w');
for tt = 1:length(T)
    [~,ind] = min(abs(PmaxB-PmaxT(tt)));

    if tt == 1
        fprintf(fid,'                IF (Temp .lt. %.1f) THEN \n', T(tt))
        fprintf(fid,'                    beta = %.3e \n', beta(ind));
    elseif tt == length(T)
        fprintf(fid,'                ELSE IF (Temp .gt. %.1f) THEN \n', T(tt))
        fprintf(fid,'                    beta = %.3e \n', beta(ind));  
    else
        [~,nind] = min(abs(PmaxB-PmaxT(tt+1)));
        fprintf(fid,'                ELSE IF (Temp .ge. %.1f .AND. Temp .lt. %.1f) THEN \n', T(tt-1), T(tt))
        fprintf(fid,'                    beta = %.3e + (1.0 - %.1f*(%.1f-Temp))*%.3e \n', beta(ind),1/interval,T(tt),beta(nind)-beta(ind));
    end
    subplot(1,3,2)
    if mod(tt,10) == 0
        plot([min(beta) beta(ind)],[PmaxB(ind) PmaxB(ind)],'k'); hold on
        plot([beta(ind) beta(ind)],[0 PmaxB(ind)],'k'); hold on
        subplot(1,3,1)
        if PmaxT(tt) >= min(PmaxB)
            plot([T(tt)-273 max(T)-273],[PmaxT(tt) PmaxT(tt)],'k');hold on
            plot([T(tt)-273 T(tt)-273], [0 PmaxT(tt)],'k'); hold on
        end
    end
    
end

fprintf(fid,'                ENDIF\n')
fclose(fid)

subplot(1,3,1)
title('Pmax via Temp')

subplot(1,3,2)
title('Pmax via beta')

subplot(1,3,3)
title('Gross rate as function of Radiation')
clear beta
beta = logspace(-12,-6,1000);

pm = max(PmaxT);
[~,ind] = min(abs(PmaxB-pm));
plot([min(beta) beta(ind)],[pm pm],'k--'); hold on
plot([beta(ind) beta(ind)],[0 pm],'k--'); hold on
set(gcf,'Units','Normalized','OuterPosition',[0 0 1 1])
set(gcf,'PaperPositionMode','auto');
% saveas(gcf,['../../documentation/manual/figures/light_equations.png'])

% check 12 degC value from paper
I = 200;
TempI = 273 + 12;
TempI = 271
tind = find(T == TempI);
[~,ind] = min(abs(PmaxB-PmaxT(tind)));
beta = beta(ind);
T = TempI;
PmaxT = (P1 .* exp((Tap/Tp1) - (Tap./T))) ./ (1 + exp((TapL./T) - (TapL/TpL)) + exp((TapH/TpH) - (TapH./T)));
Ps = alpha0*Isat./(log(1+(alpha0./beta))); 
P = Ps .* (1-exp(-alpha0*I./Ps)).*exp(-beta.*I./Ps);




    
    