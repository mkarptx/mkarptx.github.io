function mybode(pnom,pden,w)
% plot my bode with 3db line

Giw = polyval(pnom,1i*w)./polyval(pden,1i*w);

Gain = 20*log10(abs(Giw));
Phase = angle(Giw);

% find (w,G) when gain drops by 3db:
Gbw = Gain(1)-3;
ind = find(Gain<Gbw,1);
wbw = interp1(Gain(ind-1:ind),w(ind-1:ind),Gbw);

subplot(2,1,1)
semilogx(w,Gain);
hold on;
plot([w(1) w(end)],[Gbw Gbw],'k--')
plot([wbw wbw],[min(Gain) max(Gain)],'k--')
ylabel('Magnitude (dB)')

subplot(2,1,2)
semilogx(w,Phase*180/pi);
xlabel('Frequency (rad/sec)')
ylabel('Phase (deg)')