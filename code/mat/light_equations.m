close all
clear all
%% BROCH
P1      =        0.00122     ;   %Reference photosynthetic rate at T1                    (gC/m2/d)
P2      =        0.0013     ;   %Reference photosynthetic rate at T2                    (gC/m2/d)
Tp1     =        285.000   ;   %temp for reference photosynthetic rate 1               (degK)
Tp2     =        288.000   ;   %temp for reference photosynthetic rate 2               (degK)
Taph    =        25924.000 ;   %Arrhenius temp for photosynthesis high end             (degK)
Tapl    =        27774.000 ;  %Arrhenius temp for photosynthesis low end              (degK)
R1     = 2.785e-4;
R2     = 5.429e-4;
Tr1    = 285;
Tr2    = 290;
Isat = 200.0;
% extremely important parameter!
Tpl = 271.0;
Tph = 296.0;
% this is the alpha for gC/dm2 plant/hr
alpha0 = 0.0000375;
% gC/(dm2 hr)
Tap = log(P2/P1)/((1/Tp1)-(1/Tp2)); 
Tar = log(R2/R1)/((1/Tr1)-(1/Tr2));

%% CALCULATION
beta = logspace(-12,-6,1000);
interval = 0.1;
Temp = [Tpl:interval:Tph];

PmaxT = (P1 .* exp((Tap/Tp1) - (Tap./Temp))) ./ (1 + exp((Tapl./Temp) - (Tapl/Tpl)) + exp((Taph/Tph) - (Taph./Temp)));

PmaxB = ((alpha0*Isat./log(1+(alpha0./beta))) .*(alpha0./(alpha0+beta)) .* (beta./(alpha0+beta)).^(beta./alpha0));

Ps = alpha0*Isat./(log(1+(alpha0./beta))); 

figure(1)

subplot(1,3,1)
title('Pmax via Temp')
plot(Temp-273,PmaxT,'o-');hold on
ylim([0 0.002])
xlabel('Temperature [^0C]')
ylabel('gross production [gC/dm^2 h^-^1]')
set(gca,'FontSize',14)
subplot(1,3,2)
title('Pmax via beta')
plot(beta,PmaxB,'o-') ; hold on
ylim([0 0.002])
set(gca, 'XScale', 'log')
ylabel('gross production [gC/dm^2 h^-^1]')
xlabel('beta')
set(gca,'FontSize',14)

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
for tt = 1:length(Temp)
    [~,ind] = min(abs(PmaxB-PmaxT(tt)));

    if tt == 1
        fprintf(fid,'                IF (Temp .lt. %.1f) THEN \n', Temp(tt))
        fprintf(fid,'                    beta = %.3e \n', beta(ind));
    elseif tt == length(Temp)
        fprintf(fid,'                ELSE IF (Temp .gt. %.1f) THEN \n', Temp(tt))
        fprintf(fid,'                    beta = %.3e \n', beta(ind));  
    else
        [~,nind] = min(abs(PmaxB-PmaxT(tt+1)));
        fprintf(fid,'                ELSE IF (Temp .ge. %.1f .AND. Temp .lt. %.1f) THEN \n', Temp(tt-1), Temp(tt))
        fprintf(fid,'                    beta = %.3e + (1.0 - %.1f*(%.1f-Temp))*%.3e \n', beta(ind),1/interval,Temp(tt),beta(nind)-beta(ind));
    end
    subplot(1,3,2)
    if mod(tt,10) == 0
        plot([min(beta) beta(ind)],[PmaxB(ind) PmaxB(ind)],'k'); hold on
        plot([beta(ind) beta(ind)],[0 PmaxB(ind)],'k'); hold on
        subplot(1,3,1)
        if PmaxT(tt) >= min(PmaxB)
            plot([Temp(tt)-273 max(Temp)-273],[PmaxT(tt) PmaxT(tt)],'k');hold on
            plot([Temp(tt)-273 Temp(tt)-273], [0 PmaxT(tt)],'k'); hold on
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
saveas(gcf,['../../documentation/manual/figures/light_equations.png'])

% check 12 degC value from paper
I = 200;
TempI = 273 + 12;
TempI = 271
tind = find(Temp == TempI);
[~,ind] = min(abs(PmaxB-PmaxT(tind)));
beta = beta(ind);
Temp = TempI;
PmaxT = (P1 .* exp((Tap/Tp1) - (Tap./Temp))) ./ (1 + exp((Tapl./Temp) - (Tapl/Tpl)) + exp((Taph/Tph) - (Taph./Temp)));
Ps = alpha0*Isat./(log(1+(alpha0./beta))); 
P = Ps .* (1-exp(-alpha0*I./Ps)).*exp(-beta.*I./Ps);




    
    