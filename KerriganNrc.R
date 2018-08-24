library(syuzhet)

##tokenizes input and stores sentiment in vectors
input <- get_text_as_string("Texts/Kerrigan.txt")
iSent <- get_sentences(input)

nrcInput <- get_nrc_sentiment(iSent)

png("Plots/nrc/Kerrigan/total.png", width = 1200,height = 700)
barplot(
  sort(colSums(prop.table(nrcInput[, 1:8]))), 
  horiz = TRUE, 
  cex.names = 0.7, 
  las = 1, 
  main = "Emotions in Kerrigan", xlab="Percentage"
)
dev.off()

png("Plots/nrc/Kerrigan/Sent.png", width = 1200,height = 700)
barplot(
  sort(colSums(prop.table(nrcInput[, 9:10]))), 
  horiz = TRUE, 
  cex.names = 0.7, 
  las = 1, 
  main = "Sentiment in Kerrigan", xlab="Percentage"
)
dev.off()
library(syuzhet)

##tokenizes input and stores sentiment in vectors
input <- get_text_as_string("Texts/Kerrigan.txt")
iSent <- get_sentences(input)

nrcInput <- get_nrc_sentiment(iSent)

png("Plots/nrc/Kerrigan/total.png", width = 1200,height = 700)
barplot(
  sort(colSums(prop.table(nrcInput[, 1:8]))), 
  horiz = TRUE, 
  cex.names = 0.7, 
  las = 1, 
  main = "Emotions in Kerrigan", xlab="Percentage"
)
dev.off()

png("Plots/nrc/Kerrigan/Sent.png", width = 1200,height = 700)
barplot(
  sort(colSums(prop.table(nrcInput[, 9:10]))), 
  horiz = TRUE, 
  cex.names = 0.7, 
  las = 1, 
  main = "Sentiment in Kerrigan", xlab="Percentage"
)
dev.off()
