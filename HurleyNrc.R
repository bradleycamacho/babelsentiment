library(syuzhet)

##tokenizes input and stores sentiment in vectors. 
input <- get_text_as_string("Texts/Hurley.txt")
iSent <- get_sentences(input)

nrcInput <- get_nrc_sentiment(iSent)

png("Plots/nrc/Hurley/total.png", width = 1200,height = 700)
barplot(
  sort(colSums(prop.table(nrcInput[, 1:8]))), 
  horiz = TRUE, 
  cex.names = 0.7, 
  las = 1, 
  main = "Emotions in Hurley", xlab="Percentage"
)
dev.off()

png("Plots/nrc/Hurley/Sent.png", width = 1200,height = 700)
barplot(
  sort(colSums(prop.table(nrcInput[, 9:10]))), 
  horiz = TRUE, 
  cex.names = 0.7, 
  las = 1, 
  main = "Sentiment in Hurley", xlab="Percentage"
)
dev.off()
library(syuzhet)

##tokenizes input and stores sentiment in vectors
input <- get_text_as_string("Texts/Hurley.txt")
iSent <- get_sentences(input)

nrcInput <- get_nrc_sentiment(iSent)

png("Plots/nrc/Hurley/total.png", width = 1200,height = 700)
barplot(
  sort(colSums(prop.table(nrcInput[, 1:8]))), 
  horiz = TRUE, 
  cex.names = 0.7, 
  las = 1, 
  main = "Emotions in Hurley", xlab="Percentage"
)
dev.off()

png("Plots/nrc/Hurley/Sent.png", width = 1200,height = 700)
barplot(
  sort(colSums(prop.table(nrcInput[, 9:10]))), 
  horiz = TRUE, 
  cex.names = 0.7, 
  las = 1, 
  main = "Sentiment in Hurley", xlab="Percentage"
)
dev.off()
