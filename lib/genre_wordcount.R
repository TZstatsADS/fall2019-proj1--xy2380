genre_wordcount<-function(df,genre){
  stem_splitwords<-strsplit(as.character(df[df$genre==genre,]$stemmedwords),split=" ")
  stem_splitwords<-unlist(stem_splitwords)
  count_words<-table(stem_splitwords)
  count_words<-sort(count_words,decreasing = TRUE)
  return(head(count_words,10))
} 

#count words frequency for each genre