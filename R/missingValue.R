# missingValue.R

missingValue=function (Exp,G)
{
  m <- rowMeans(Exp, na.rm = T)
  mm <- mean(m, na.rm = T)
  m[which(is.na(m))] <- mm
  mna <- rowMeans(Exp)
  w <- which(is.na(mna))
  for (i in w) {
    try(Exp[i, which(is.na(Exp[i, ]))] <- m[i])
  }
  G <- setdiff(G, rownames(Exp))
  if (!is.null(G)) {
    tmp <- as.data.frame(array(mm, dim = c(length(G), ncol(Exp))))
    rownames(tmp) <- G
    colnames(tmp) <- colnames(Exp)
    Exp <- rbind(Exp, tmp)
  }
  Exp
}
