%Example of filter design
%(c)Anders Gjendemsjo
%December 14th 2004
%e-mail: gjendems@iet.ntnu.no

N = 20; %Filter order
R_p = 0.5; %Max passband ripple [dB]
R_s = 20; %Minimum stopband attenuation [dB]
W_cutoff = 0.2; %Normalized cutoff frequency (normalized to Fs/2).

[B,A] = ellip(N,R_p,R_s,W_cutoff); %designing filter, using elliptic design
[H,W] = freqz(B,A);

%plotting frequency responses

subplot(2,1,1);
plot(W,abs(H_scaled));
xlabel('Frequency');
ylabel('|H|');
axis([0 pi 0 1.3]);

subplot(2,1,2);
plot(W,20*log10(abs(H_scaled)));
xlabel('Frequency');
ylabel('|H| [dB]');
axis([0 pi -70 5]);
