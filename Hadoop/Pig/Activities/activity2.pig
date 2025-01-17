-- Load the input1 file
inputFile = LOAD 'hdfs:///user/abhilasha/input1.txt' AS (line:chararray);
-- Tokenize the lines into words
words = FOREACH inputFile GENERATE FLATTEN(TOKENIZE(line)) AS word;
-- Combine the words from the above stage
grpd = GROUP words BY word;
-- Count the occurence of each word (Reduce)
cntd = FOREACH grpd GENERATE $0 AS word, COUNT($1) AS no_of_words;
--To remove old outputs
rmf hdfs:///user/abhilasha/PigOutput1;
-- Store the result in HDFS
STORE cntd INTO 'hdfs:///user/abhilasha/PigOutput1';

