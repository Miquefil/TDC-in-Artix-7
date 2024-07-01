TEN_MHZ        = 'C:/Users/mique/Desktop/TDC-in-Artix-7/data/5 fifth attempt/processed/data_10M.txt';
FIFTEEN_MHZ    = 'C:/Users/mique/Desktop/TDC-in-Artix-7/data/5 fifth attempt/processed/data_15.txt';
MAGIC_MHZ      = 'C:/Users/mique/Desktop/TDC-in-Artix-7/data/5 fifth attempt/processed/data_5_123_456.txt';
path           = FIFTEEN_MHZ;

fileID  = fopen(path, 'r');
if fileID == -1
    error('Failed to open the file. Check the file path.');
end
data    = textscan(fileID, '%s');
fclose(fileID);

% Flatten the cell array
data = data{1};

% Convert hex values to decimal
decimal_values = hex2dec(data);

% Extract start_edge, stop_byte, and coarse_count values
start_edges = [];
stop_bytes = [];
coarse_counts = [];

% disp(decimal_values)
for i = 1:4:length(decimal_values)-1
    stop_byte       = decimal_values(i);
    start_edge      = decimal_values(i + 1);
    coarse_count    = decimal_values(i + 3) * 256 + decimal_values(i + 2);  % Combine two bytes for coarse_count

    start_edges = [start_edges; start_edge];
    stop_bytes = [stop_bytes; stop_byte];
    coarse_counts = [coarse_counts; coarse_count];
end

% Plot histograms
figure;

subplot(1, 3, 1);
histogram(start_edges, 'BinMethod', 'integers');
title('Start Edge');
xlabel('Value');
ylabel('Frequency');

subplot(1, 3, 2);
histogram(stop_bytes, 'BinMethod', 'integers');
title('Stop Byte');
xlabel('Value');
ylabel('Frequency');

subplot(1, 3, 3);
histogram(coarse_counts, 'BinMethod', 'integers');
title('Coarse Count');
xlabel('Value');
ylabel('Frequency');

% Adjust the layout
set(gcf, 'Position', [100, 100, 1200, 400]);

% Save the figure as a PNG file
[~, name, ~] = fileparts(path);
saveas(gcf, [name, '-dsvg', '_histograms.svg']);