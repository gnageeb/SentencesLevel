
-- This function returns the index of an item in a list (sequential search, should be changed for enhanced performance)
function find(list,item)
for key,value in ipairs(list) do
if value == item 
then return key 
end 
end
return 1
end

-- This function gets the embedding of a given word
function get_embedding(word,wordsembeddings)
return wordsembeddings.embeddings[find(wordsembeddings.words,word)]
end
