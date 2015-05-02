----------------------------------------------------------------------------------
-- This script imports datasets from their respective files. It imports the words 
-- list and their corresponding embedding vectors, and also imports the sentences
-- with their lables. After reading the data into the torch7 environment this sc-
-- ript also prepares them to be used in the training and testing of the model.
----------------------------------------------------------------------------------
require 'csvigo'
----------------------------------------------------------------------------------
-- Step1: Getting words embeddings and creating the look-up table.
----------------------------------------------------------------------------------
embeddings = csvigo.load{path='Data/embeddings.csv', header=false,mode='raw'}
-- For the words we use the space as a separator because some words contain commas
words = csvigo.load{path='Data/words.csv', header=false,mode='tidy',separator=' '}
words = words.var_1
-- This table will serve as the look-up table for the words.
wordsembeddings = {
words = words,
embeddings = embeddings
}

----------------------------------------------------------------------------------
-- Step2: Getting the sentences with their labels.
----------------------------------------------------------------------------------
labeledsentences = csvigo.load{path='Data/A2_B1_Edited.csv', header=true,mode='tidy',separator='\t'}

