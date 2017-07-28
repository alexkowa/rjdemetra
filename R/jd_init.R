

jd_params<-function(data, type){
  x<-list()
  len<-length(data)
  pclass<-J("java/lang/Class", "forName", "ec.tstoolkit.Parameter",TRUE,.jclassLoader())
  pobjs<-.jcall("java/lang/reflect/Array", "Ljava/lang/Object;", "newInstance", pclass, as.integer(len))
  if (len>0){
    for (i in 1:len){
      z<-as.double(data[i])
      pobj<-.jnew("ec/tstoolkit/Parameter",z, type)
      .jcall("java/lang/reflect/Array", "V", "set", .jcast(pobjs, "java/lang/Object"), as.integer(i-1), .jcast(pobj, "java/lang/Object"))
    }
  }
  pobjs
}

month_r2jd<-function(s){
  .jcall("ec/tstoolkit/timeseries/Month", "Lec/tstoolkit/timeseries/Month;", "valueOf", as.integer(s-1))
}

month_jd2r<-function(jd_month){
  .jcall(jd_month, "I", "intValue")+1
}

matrix_jd2r<-function(jd_matrix){
  nrows=.jcall(jd_matrix, "I", "getRowsCount")
  ncols=.jcall(jd_matrix, "I", "getColumnsCount")
  rmat<-numeric(nrows*ncols)
  dim(rmat)<-c(nrows,ncols)
  for (i in 1:nrows){
    for (j in 1:ncols){
      rmat[i, j]=.jcall(jd_matrix, "D", "get", as.integer(i-1), as.integer(j-1))
    }
  }
  rmat
}

matrix_r2jd<-function(m){
  nd<-dim(m)
  jd_m<-.jnew("ec/tstoolkit/maths/matrices/Matrix", as.integer(nd[1]), as.integer(nd[2]))
  for (i in 1:nd[1]){
    for (j in 1:nd[2]){
      .jcall(jd_m, "V", "set", as.integer(i-1), as.integer(j-1), as.double(m[i,j]))
    }
  }
  jd_m
}