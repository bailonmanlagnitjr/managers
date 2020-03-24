  dose <- c(20,30,40,45,60)
  drugA <- c(16,20,27,40,60)
  drugB <- c(15,18,25,31,40)
  
  drugs <- data.frame(dose, drugA, drugB)
  str(drugs)
  
  plot(drugs)
  
  attach(drugs)
  plot(dose, type = "o", col = "Blue")
  
  #option "b" indicates that both points and lines should be plotted
  plot(dose, drugA, type = "b")
  
  #par function - parameter of a graph
  opar <- par(no.readonly = TRUE)
  #lty = line type
  #lwd = line width
  
  #lty=2 dashed line
  #pcd =17 solid traiangle
  par(lty = 2, pch = 17)
  plot(dose, drugA, type = "b")
  par(opar)
  
  
  