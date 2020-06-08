@echo off
mkdir converted
for %%a in ("*.wav") do start ffmpeg -i "%%a" -acodec pcm_s16le -ac 1 -ar 16000 -af lowpass=3000,highpass=200 "converted\%%~na.wav"
pause