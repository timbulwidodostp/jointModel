# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Joint models (modelling) for Longitudinal and Survival Data Use jointModel With (In) R Software
install.packages("remotes")
remotes::install_github("drizopoulos/JM")
library("JM")
# Estimation Joint models (modelling) for Longitudinal and Survival Data Use jointModel With (In) R Software
jointModel_1 = read.csv("https://raw.githubusercontent.com/timbulwidodostp/jointModel/main/jointModel/jointModel_1.csv",sep = ";")
jointModel_LME <- lme(log(serBilir) ~ drug * year, random = ~ 1 | id, data = jointModel_1)
jointModel_2 = read.csv("https://raw.githubusercontent.com/timbulwidodostp/jointModel/main/jointModel/jointModel_2.csv",sep = ";")
jointModel_SURV <- survreg(Surv(years, status2) ~ drug, data = jointModel_2, x = TRUE)
jointModel<- jointModel(jointModel_LME, jointModel_SURV, timeVar = "year")
summary(jointModel)
# Joint models (modelling) for Longitudinal and Survival Data Use jointModel With (In) R Software
# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Finished