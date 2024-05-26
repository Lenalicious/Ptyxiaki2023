filename = '../files/20_05_24/smurf_attack.txt'; % Name of your file
fileID = fopen(filename, 'r'); % Open the file for reading
data = fscanf(fileID, '%f'); % Read the data as floating-point numbers
fclose(fileID); % Close the file

numValues = 19200; % Number of values per file

% Check if the data length is enough to split into three files
if length(data) <  1* numValues
    error('The file does not contain enough data to split into three parts of 16000 values each.');
end

part1 = data(1:numValues);
%part2 = data(numValues+1:2*numValues);
%part3 = data(2*numValues+1:3*numValues);

% Write part1 to file1.txt
fileID1 = fopen('../files/20_05_24/smurf2.txt', 'w');
fprintf(fileID1, '%f\n', part1);
fclose(fileID1);

% Write part2 to file2.txt
%fileID2 = fopen('../files/19_05_24/file2.txt', 'w');
%fprintf(fileID2, '%f\n', part2);
%fclose(fileID2);

% Write part3 to file3.txt
%fileID3 = fopen('../files/19_05_24/file3.txt', 'w');
%fprintf(fileID3, '%f\n', part3);
%fclose(fileID3);

