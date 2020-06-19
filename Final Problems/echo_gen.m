%Write a function called echo_gen that adds an echo effect to an audio recording. The function is to be called like this:
%output = echo_gen(s, Fs, delay, amp);
%where input is a *column* vector with values between -1 and 1 representing a time series of digitized sound data. The input argument fs is the sampling rate. The sampling rate specifies how many samples we have in the data each second. For example, an audio CD uses 44,100 samples per second. The input argument delay represent the delay of the echo in seconds. That is, the echo should start after delay seconds have passed from the start of the audio signal. Finally, amp specifies the amplification of the echo which normally should be a value less than 1, since the echo is typically not as loud as the original signal. 
%The output of the function is a column vector containing the original sound with the echo superimposed. The output vector will be longer than the input vector if the delay is not zero (round to the nearest number of points needed to get the delay, as opposed to floor or ceil). A sound recording has values between -1 and 1, so if the echo causes some values to be outside of this range, you will need to scale the entire vector, so that all values are within the range *while retaining their relative amplitudes*.
%MATLAB has several sample audio files included that you can try: splat, gong, and handel are a few examples. Try the following:
%load gong %loads two variables, y and Fs
%sound(y, Fs) %Outputs sound
%To hear the sound you will need to use desktop MATLAB or MATLAB Online
function output = echo_gen(s, Fs, delay, amp)
 dt = 1/Fs;
 N = round(delay/dt);
 s1 = [s; zeros(N, 1)];
 s2 = [zeros(N, 1); s.*amp];
 output = s1 + s2;
 if max(abs(output)) > 1
 output = output./max(abs(output));
 end
end
