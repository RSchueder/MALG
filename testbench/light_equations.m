close all
Tr1     =        285.000   ;  %reference temperature 1 for respiration                (degK)
Tr2     =        290.000   ;   %reference temperature 2 for respiration                (degK)
P1      =        1.22e-3     ;   %Reference photosynthetic rate at T1                    (gC/m2/d)
P2      =        1.44e-3     ;   %Reference photosynthetic rate at T2                    (gC/m2/d)
Tp1     =        283.000   ;   %temp for reference photosynthetic rate 1               (degK)
Tp2     =        288.000   ;   %temp for reference photosynthetic rate 2               (degK)
Tap     =        1694.000  ;   %Arrhenius temperature for photosynthesis               (degK)
Taph    =        25924.000 ;   %Arrhenius temp for photosynthesis high end             (degK)
Tapl    =        27774.000 ;  %Arrhenius temp for photosynthesis low end              (degK)
Tar     =        11033.000 ;   %Arrhenius temp for respiration                         (degK)
fact = 0.5;
Isat = 44 * 4.57; % umol/m2s
I = Isat * fact;
% P1 = P1 / 2400.0

% extremely important parameter!
Tpl = 274.0;
Tph = 298.0;
% this is the alpha for gC/dm2 plant/hr
alpha0 = 3.75e-5;
% gC/(dm2 hr)

%beta = logspace(-12,-6,1000);
Temp = [Tpl:0.1:Tph];
beta = logspace(-12,-6,1000);

PmaxT = P1 .* exp((Tap/Tp1) - (Tap./Temp)) ./ (1 + exp((Tapl./Temp) - (Tapl/Tpl)) + exp((Taph/Tph) - (Taph./Temp)));

PmaxB = ((alpha0*Isat./log(1+(alpha0./beta))) .*(alpha0./(alpha0+beta)) .* (beta./(alpha0+beta)).^(beta./alpha0));

Ps = alpha0*Isat./log(1+(alpha0./beta)); 

figure(1)
subplot(1,3,1)
title('Pmax via Temp')
plot(Temp-273,PmaxT,'o-');hold on
ylim([0 0.002])
subplot(1,3,2)
title('Pmax via beta')
plot(beta,PmaxB,'o-') ; hold on
ylim([0 0.002])
set(gca, 'XScale', 'log')
subplot(1,3,3)
title('Gross rate')
for fact = 0.1:0.1:1
    I = Isat * fact;
    
    P = Ps .* (1-exp(-alpha0*I./Ps)).*exp(-beta.*I./Ps);
    
    plot(beta,P); hold on
    ylim([0 0.002])
    set(gca, 'XScale', 'log')
end

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
        fprintf(fid,'                ELSE IF (Temp .ge. %.1f .AND. Temp .lt. %.1f) THEN \n', Temp(tt-1), Temp(tt))
        fprintf(fid,'                    beta = %.3e \n', beta(ind));       
    end
    subplot(1,3,2)
    plot([min(beta) beta(ind)],[PmaxB(ind) PmaxB(ind)],'k'); hold on
    plot([beta(ind) beta(ind)],[0 PmaxB(ind)],'k'); hold on
    subplot(1,3,1)
    if PmaxT(tt) >= min(PmaxB)
        plot([Temp(tt)-273 max(Temp)-273],[PmaxT(tt) PmaxT(tt)],'k');hold on
        plot([Temp(tt)-273 Temp(tt)-273], [0 PmaxT(tt)],'k'); hold on
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
            
    
    
    