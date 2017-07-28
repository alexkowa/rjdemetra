.onLoad <- function(libname, pkgname) {
  .jinit()  
  .jaddClassPath("inst/java/demetra-tstoolkit-2.1.0.jar")
  .jaddClassPath("inst/java/jcruncher-2.1.0.jar")
  .jaddClassPath("inst/java/demetra-tss-2.1.0.jar")
  .jaddClassPath("inst/java/demetra-utils-2.1.0.jar")
  .jaddClassPath("inst/java/demetra-common-2.1.0.jar")
  .jaddClassPath("inst/java/guava-18.0.jar")
  .jaddClassPath("inst/java/slf4j-api-1.7.13.jar")
  .jaddClassPath("inst/java/slf4j-simple-1.7.13.jar")
  .jaddClassPath("inst/java/opencsv-2.3.jar")
  .jaddClassPath("inst/java/jsr305-3.0.1.jar")
  #specifying package location
  .jpackage(pkgname, lib.loc = libname)
  
}
### jd_init
jd_month<-function().jfield("ec/tstoolkit/timeseries/simplets/TsFrequency","Lec/tstoolkit/timeseries/simplets/TsFrequency;","Monthly")
jd_quarter<-function().jfield("ec/tstoolkit/timeseries/simplets/TsFrequency","Lec/tstoolkit/timeseries/simplets/TsFrequency;","Quarterly")
jd_year<-function().jfield("ec/tstoolkit/timeseries/simplets/TsFrequency","Lec/tstoolkit/timeseries/simplets/TsFrequency;","Yearly")
jd_undef<-function().jfield("ec/tstoolkit/timeseries/simplets/TsFrequency","Lec/tstoolkit/timeseries/simplets/TsFrequency;","Undefined")
jd_january<-function().jfield("ec/tstoolkit/timeseries/Month","Lec/tstoolkit/timeseries/Month;","January")
jd_february<-function().jfield("ec/tstoolkit/timeseries/Month","Lec/tstoolkit/timeseries/Month;","February")
jd_march<-function().jfield("ec/tstoolkit/timeseries/Month","Lec/tstoolkit/timeseries/Month;","March")
jd_april<-function().jfield("ec/tstoolkit/timeseries/Month","Lec/tstoolkit/timeseries/Month;","April")
jd_may<-function().jfield("ec/tstoolkit/timeseries/Month","Lec/tstoolkit/timeseries/Month;","May")
jd_june<-function().jfield("ec/tstoolkit/timeseries/Month","Lec/tstoolkit/timeseries/Month;","June")
jd_july<-function().jfield("ec/tstoolkit/timeseries/Month","Lec/tstoolkit/timeseries/Month;","July")
jd_august<-function().jfield("ec/tstoolkit/timeseries/Month","Lec/tstoolkit/timeseries/Month;","August")
jd_september<-function().jfield("ec/tstoolkit/timeseries/Month","Lec/tstoolkit/timeseries/Month;","September")
jd_october<-function().jfield("ec/tstoolkit/timeseries/Month","Lec/tstoolkit/timeseries/Month;","October")
jd_november<-function().jfield("ec/tstoolkit/timeseries/Month","Lec/tstoolkit/timeseries/Month;","November")
jd_december<-function().jfield("ec/tstoolkit/timeseries/Month","Lec/tstoolkit/timeseries/Month;","December")
jd_allmonths<-function()c(jd_january(), jd_february(), jd_march(), jd_april(), jd_may(), jd_june(), jd_july(), jd_august(),
                          jd_september(), jd_october(), jd_november(), jd_december())


jd_clobj<-function().jcall("java/lang/Class", "Ljava/lang/Class;", "forName", "java.lang.Object")

jd_pfixed<-function().jfield("ec/tstoolkit/ParameterType","Lec/tstoolkit/ParameterType;","Fixed")
jd_pinitial<-function().jfield("ec/tstoolkit/ParameterType","Lec/tstoolkit/ParameterType;","Initial")
jd_pestimated<-function().jfield("ec/tstoolkit/ParameterType","Lec/tstoolkit/ParameterType;","Estimated")
jd_pundefined<-function().jfield("ec/tstoolkit/ParameterType","Lec/tstoolkit/ParameterType;","Undefined")

jd_td0<-function().jfield("ec/tstoolkit/timeseries/calendars/TradingDaysType","Lec/tstoolkit/timeseries/calendars/TradingDaysType;","TradingDays")
jd_wd<-function().jfield("ec/tstoolkit/timeseries/calendars/TradingDaysType","Lec/tstoolkit/timeseries/calendars/TradingDaysType;","WorkingDays")
### jd_calendars
jd_BEG<-function().jfield("ec/tstoolkit/timeseries/Day", "Lec/tstoolkit/timeseries/Day;", "BEG")
jd_END<-function().jfield("ec/tstoolkit/timeseries/Day", "Lec/tstoolkit/timeseries/Day;", "END")
### jd_sa
jd_tramoseats<-function().jnew("ec/satoolkit/algorithm/implementation/TramoSeatsProcessingFactory")
jd_x13<-function().jnew("ec/satoolkit/algorithm/implementation/X13ProcessingFactory")
jd_stm<-function().jnew("ec/satoolkit/algorithm/implementation/StmProcessingFactory")
## jd_sa_advanced
jd_pr<-function()J("java/lang/Class", "forName", "ec.tstoolkit.algorithm.IProcResults",TRUE,.jclassLoader())