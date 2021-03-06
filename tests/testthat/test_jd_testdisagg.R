library(rjdemetra)
library(tempdisagg)
test_that("jd_testdisagg.R",{
  
s1<-ts(xm[,1], start=c(1995,1), frequency=12)
s2<-ts(xm[,2], start=c(1995,1), frequency=12)
sy<-ts_aggregate(s1,1)

cl1<-td(sy~s2)
z1<-predict(cl1)
w1<-jd_td(sy~s2)
"chow-lin with intercept"
summary(z1-w1)

cl1<-td(sy~s2+0)
z2<-predict(cl1)
w2<-jd_td(sy~s2+0)
"chow-lin without intercept"
summary(z2-w2)

cl1<-td(sy~s2, method="fernandez")
z3<-predict(cl1)
w3<-jd_td(sy~s2+0, model="Rw")
"fernandez"
summary(z3-w3)

cl1<-td(sy~s2, method="fernandez")
z4<-predict(cl1)
w4<-jd_td(sy~s2+1, model="Rw", zeroinit=TRUE)
"fernandez2"
summary(z4-w4)

cl1<-td(sy~s2+0, method="fernandez")
z5<-predict(cl1)
w5<-jd_td(sy~s2+0, model="Rw", zeroinit=TRUE)
"fernandez without intercept"
summary(z5-w5)
expect_true(TRUE)
})