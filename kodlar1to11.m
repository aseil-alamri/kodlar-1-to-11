% Implementing the frequency response of a Butterworth filter

% Sampling frequency in Hz
Fs = 200;

% Normalized cutoff frequency
Fc = 6 / (Fs/2);

% Filter order
m = 6;

% Compute frequency response
L = logspace(0, 2);
omega = 2 * pi * L / Fs;
H = 1 ./ sqrt(1 + (Fc ./ omega).^(2*m));

% Plot magnitude response
figure;
semilogx(L, abs(H), 'k');
grid on;
xlabel('Frequency (Hz)');
ylabel('Gain');
title('Butterworth Frequency Response');

