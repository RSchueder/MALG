close all
clear all
run('N:\Deltabox\Bulletin\jacobsen\OpenFoamTools\matlabUtilities\matlabUtilitiesSettings.m');
C_del = load('n:\Deltabox\Bulletin\bruinsma\Matlab\plotSetup\deltaresColor.txt');
G_del = load('n:\Deltabox\Bulletin\bruinsma\Matlab\plotSetup\deltaresGray.txt'); 
set(groot,'defaulttextinterpreter','latex');  
set(groot, 'defaultAxesTickLabelInterpreter','latex');  
set(groot, 'defaultLegendInterpreter','latex');
fs = 20
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
beta0 = logspace(-12,-6,100);

interval = 0.1;
T = [TpL:interval:TpH];

PmaxT = (P1 .* exp((Tap/Tp1) - (Tap./T))) ./ (1 + exp((TapL./T) - (TapL/TpL)) + exp((TapH/TpH) - (TapH./T)));

PmaxB = ((alpha0*Isat./(log(1+(alpha0./beta)))) .*(alpha0./(alpha0+beta)) .* (beta./(alpha0+beta)).^(beta./alpha0));

Ps = (alpha0*Isat)./(log(1+(alpha0./beta))); 

figure(1)
subplot(1,3,1)
plot(T-273,PmaxT,'-','LineWidth',2);hold on
ylim([0 0.002])
xlabel('temperature [$^0C$]','interpreter','latex')
ylabel('gross production rate [gC dm$^{-2}$ h$^{-1}$]','interpreter','latex')
xlim([min(T)-273,max(T)-273])
set(gca,'FontSize',fs)
legend('P$_{max}$','AutoUpdate','off','interpreter','latex')
subplot(1,3,2)
plot(beta,PmaxB,'-','LineWidth',2) ; hold on
%plot(beta,Ps,'x-'); hold on
ylim([0 0.002])
set(gca, 'XScale', 'log')
ylabel('gross production rate [gC dm$^{-2}$ h$^{-1}$]','interpreter','latex')
xlabel('$\beta$ [gC dm$^{-2}$ h$^{-1}$ (umol$_{p}$ m$^{-2}$ s$^{-1}$)$^{-1}]$','interpreter','latex')
set(gca,'FontSize',fs)
legend('P$_{max}$','AutoUpdate','off','interpreter','latex')
xlim([1e-12 1e-6])

subplot(1,3,3)
ii = 1;
for fact = 0.05:0.1:1.05
    I = Isat * fact;
    lnd{ii} = strcat('I = ',num2str(I),' ',' umol$_{p}$ m$^{-2}$ s$^{-1}$');
    P = Ps .* (1-exp(-alpha0*I./Ps)).*exp(-beta.*I./Ps);
    
    plot(beta,P); hold on
    ylim([0 0.002])
    set(gca, 'XScale', 'log')
    ii = ii + 1;
end
xlabel('$\beta$ [gC dm$^{-2}$ h$^{-1}$ (umol$_{p}$ m$^{-2}$ s$^{-1}$)$^{-1}]$','interpreter','latex')
ylabel('gross production rate [gC dm$^{-2}$ h$^{-1}$]','interpreter','latex')
leg1 = legend(lnd,'Location','northwest');
set(leg1,'interpreter','latex','AutoUpdate','off')
set(gca,'FontSize',fs)
xlim([1e-12 1e-6])


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
title('P$_{max}$(T)','interpreter','latex')

subplot(1,3,2)
title('P$_{max}$($\beta$)','interpreter','latex')

subplot(1,3,3)
title('P(T,I)','interpreter','latex')
clear beta
set(gca,'FontSize',fs)
beta = logspace(-12,-6,1000);

pm = max(PmaxT);
[~,ind] = min(abs(PmaxB-pm));
plot([min(beta) beta(ind)],[pm pm],'k--'); hold on
plot([beta(ind) beta(ind)],[0 pm],'k--'); hold on
set(gcf,'Units','Normalized','OuterPosition',[0 0 1 1])
set(gcf,'PaperPositionMode','auto');
print('-dpng','-r300',['../../documentation/manual/figures/light_equations.png'])

subplot(1,3,1)
plot(T,PmaxT,'ro-')
%xlim([4e-9 8e-9])
ylim([8.45e-4 8.8e-4])

subplot(1,3,2)
%beta = beta0;
PmaxB = ((alpha0*Isat./(log(1+(alpha0./beta)))) .*(alpha0./(alpha0+beta)) .* (beta./(alpha0+beta)).^(beta./alpha0));
plot(beta,PmaxB,'ro-')
xlim([4e-9 8e-9])
ylim([8.45e-4 8.8e-4])

subplot(1,3,3)
xlim([4e-9 8e-9])
ylim([8.45e-4 8.8e-4])
print('-dpng','-r300',['../../documentation/manual/figures/light_equations_zoom.png'])

% check 12 degC value from paper
I = 200;
TempI = 273 + 12;
TempI = 271;
tind = find(T == TempI);
[~,ind] = min(abs(PmaxB-PmaxT(tind)));
beta = beta(ind);
T = TempI;
PmaxT = (P1 .* exp((Tap/Tp1) - (Tap./T))) ./ (1 + exp((TapL./T) - (TapL/TpL)) + exp((TapH/TpH) - (TapH./T)));
Ps = alpha0*Isat./(log(1+(alpha0./beta))); 
P = Ps .* (1-exp(-alpha0*I./Ps)).*exp(-beta.*I./Ps);




    
    