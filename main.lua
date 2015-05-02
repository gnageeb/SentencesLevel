----------------------------------------------------------------------------------
-- The helperfunctions script contains the following functions: 
-- 1. find(list,item), returns either the index of the word or 1 which is the ind-
-- ex of <UNK>.
-- 2. get_embedding(word,wordsembeddings), which takes the look-up table of the w-
-- ords and embeddings as well as the word for whichwe need to retrieve the embed-
-- ding vector and returns the embedding vector for the specified word.
----------------------------------------------------------------------------------
dofile 'libs/helperfunctions.lua'
----------------------------------------------------------------------------------
-- 1_data.lua script does all the importing and preparing data.
----------------------------------------------------------------------------------
dofile '1_data.lua'

