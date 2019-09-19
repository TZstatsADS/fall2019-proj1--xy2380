sentiment.words<-function(df,genre){
  sentiment.df<-get_nrc_sentiment(df[df$genre==genre,]$stemmedwords)
  return(apply(sentiment.df,2,sum))
}

#to calculate the proportion of different sentiments by genre in order to create a heatmap