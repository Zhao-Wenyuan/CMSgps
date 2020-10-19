# CMSgps.R

CMSgps=function(Exp)
{
  data(pairs)
  library(randomForest)
  G <- unique(c(pair1[,1],pair1[,2]))
  Exp <- missingValue(Exp,G)

  coms=(Exp[match(pair1[,1],rownames(Exp)),,drop=F]-Exp[match(pair1[,2],rownames(Exp)),,drop=F])>0
  coms=apply(coms,2,function(x) as.numeric(x))
  rownames(coms)=paste("pair",1:nrow(coms),sep = "")

  res <- as.data.frame(predict(rf, t(coms), type = "prob"))
  names(res) <- paste(names(res), ".posteriorProb", sep = "")
  res$predictedCMS <- apply(res, 1, function(z) {
    y <- which(z == max(z))
    paste(c("CMS1", "CMS2", "CMS3", "CMS4")[y], collapse = ",")
  })
  res
}
