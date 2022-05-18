cleanPath = 'videos\X.mp4';

inputTemplate = cleanPath;
outputTemplate = 'testing_mfcc\X.mfc';

for i=1:5
    input = strrep(inputTemplate,'X', num2str(i));
    output = strrep(outputTemplate,'X', num2str(i));
    
    [sample,fs] = audioread(input);
    %sample = specsub(sample,fs);
    featureExtraction(sample, fs, output,80);
end