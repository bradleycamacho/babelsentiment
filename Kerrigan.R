library(syuzhet)

##tokenizes input and stores sentiment in vectors //change so ellipses to not delimmeter
input <- get_text_as_string("Texts/Kerrigan.txt")
iSent <- get_sentences(input)
syuzhetInput <- get_sentiment(iSent, method="syuzhet")
bingInput <- get_sentiment(iSent, method="bing")
nrcInput <- get_sentiment(iSent, method="nrc", lang = "english")
afinnInput <- get_sentiment(iSent, method="afinn")

##signed head of all vectors
x <- (rbind(
  sign(head(syuzhetInput)),
  sign(head(bingInput)),
  sign(head(afinnInput)),
  sign(head(nrcInput))
))

## writes table (fix this)
write.table(x, file = "binded.csv", sep = " ", col.names = NA,
            qmethod = "double")

print(x)

#################
#Unsigned
#################
png("Plots/Unsigned/Kerrigan/Syuzhet.png", width = 1200,height = 700)
plot(
  syuzhetInput, 
  type="l", 
  main="Syuzhet Analysis", 
  xlab = "Narrative Time", 
  ylab= "Emotional Valence"
)
dev.off()

png("Plots/Unsigned/Kerrigan/Bing.png", width = 1200,height = 700)
plot(
  bingInput, 
  type="l", 
  main="Bing Analysis", 
  xlab = "Narrative Time", 
  ylab= "Emotional Valence"
)
dev.off()

png("Plots/Unsigned/Kerrigan/afinn.png", width = 1200,height = 700)
plot(
  afinnInput, 
  type="l", 
  main="afinn Analysis", 
  xlab = "Narrative Time", 
  ylab= "Emotional Valence"
)
dev.off()

png("Plots/Unsigned/Kerrigan/nrc.png", width = 1200,height = 700)
plot(
  nrcInput, 
  type="l", 
  main="nrc Analysis", 
  xlab = "Narrative Time", 
  ylab= "Emotional Valence"
)
dev.off()



##########################
#Signed
##########################
png("Plots/Signed/Kerrigan/Syuzhet.png", width = 1200,height = 700)
plot(
  sign(syuzhetInput), 
  type="l", 
  main="Syuzhet Analysis", 
  xlab = "Narrative Time", 
  ylab= "Emotional Valence"
)
dev.off()

png("Plots/Signed/Kerrigan/Bing.png", width = 1200,height = 700)
plot(
  sign(bingInput), 
  type="l", 
  main="Bing Analysis", 
  xlab = "Narrative Time", 
  ylab= "Emotional Valence"
)
dev.off()

png("Plots/Signed/Kerrigan/afinn.png", width = 1200,height = 700)
plot(
  sign(afinnInput), 
  type="l", 
  main="afinn Analysis", 
  xlab = "Narrative Time", 
  ylab= "Emotional Valence"
)
dev.off()

png("Plots/Signed/Kerrigan/nrc.png", width = 1200,height = 700)
plot(
  sign(nrcInput), 
  type="l", 
  main="nrc Analysis", 
  xlab = "Narrative Time", 
  ylab= "Emotional Valence"
)
dev.off()

##############
#Simple
##############
png("Plots/Simple/Kerrigan/syuzhet.png", width = 1200,height = 700)
simple_plot(syuzhetInput)
dev.off()

png("Plots/Simple/Kerrigan/bing.png", width = 1200,height = 700)
simple_plot(bingInput, title = "Bing Plot")
dev.off()

png("Plots/Simple/Kerrigan/afinn.png", width = 1200,height = 700)
simple_plot(afinnInput, title = "afinn Plot")
dev.off()

png("Plots/Simple/Kerrigan/nrc.png", width = 1200,height = 700)
simple_plot(nrcInput, title = "nrc Plot")
dev.off()

