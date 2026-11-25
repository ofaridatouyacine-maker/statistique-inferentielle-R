####DS TP Estimation echantillonnage
#OUEDRAOGO
#FARIDATOU YACINE

##EXERCICE 1

#1

setwd("/home/UCA/fyouedraga/DS_TP_STAT/")

data <- read.csv("./data.csv",header=TRUE)
data$Jours <- as.Date(data$Jours)
data
data$Jours
#l'option "header =true" permet de specifier qu'il y a une entete 
#dans le fichier .cette entete correspond au noms respectifs des variables du fichiers
#data$jours recoit les elements du fichier qui correspond au dates 

#2
x=data$Jours
y=data$nbre_pas
plot(x,y, type="p" ,col = "black",
     xlab = "   ", ylab = "Nombre de pas",
     main = "Évolution du nombre de pas quotidiens")

abline(v=as.Date("2020-03-17"), col = "black")




#3

pas_confinement <- data$nbre_pas[data$Jours >= "2020-03-17"]
pas_confinement
# pas_confinement recois les nombre de pas  pour les dates à partir du 17 mars 2020
#4 teste de student pour risque=5%

t_test_5 <- t.test(pas_confinement, mu = 7000, conf.level = 0.95)
t_test_5
# 5 test de student pour risque = 1%
t_test_1 <- t.test(pas_confinement, mu = 7000, conf.level = 0.99)
t_test_1
# 6
#pour risque=5% p-value< risque donc H0 rejeté
#pour risque= 1% p-value >risque donc H0 est accepté 
# 7
pas_avant <- data$nbre_pas[data$jours < "2020-03-17"]
t_test_avant <- t.test(pas_avant, mu = 7000)
t_test_avant
# Conclusion globale :

# Exercice 2

# 1
duree_nuit <- data$duree_nuit[!is.na(data$duree_nuit)]
duree_nuit
# Supprime les valeurs manquantes de la colonne durée_nuit

# 2
mean_duree <- mean(duree_nuit)
mean_duree
# 3

ic_duree <- mean_duree+c(-1,1)*qt(0.95,n-1)*(sd(duree_nuit)/sqrt(length(duree_nuit)))
ic_duree
# 4
t_test_duree <- t.test(duree_nuit, mu = 8)
t_test_duree

# 5

n <- length(duree_nuit)
# Compte la taille de duree_nuit 
duree_nuit2 <- c(duree_nuit[duree_nuit < 7], duree_nuit[duree_nuit > 9])
# Concatène les durées inferieur à 7h et celles superieures à 9h 


# 6

p_chapeau <- length(duree_nuit2) / n
p_chapeau

# 7

ic_p <- p_chapeau + c(-1, 1) * qnorm(0.975) * sqrt(p_chapeau * (1 - p_chapeau) / n)
ic_p
# 8
#"p=10%" n'appartient pas à l'intervale de fluctuation donc l'hypothése est rejeté

# Exercice 3

# 1
sommeil <- data$score_sommeil[!is.na(data$score_sommeil)]
sommeil
# Supprime les valeurs manquantes de la variable score_sommeil
# 2

mean_sommeil <- mean(sommeil)
mean_sommeil
# 3

sd_sommeil <- sd(sommeil)
sd_sommeil

# 4
ic_sommeil <- t.test(sommeil, conf.level = 0.95)$conf.int
ic_sommeil
# 5
t_test_sommeil <- t.test(sommeil, mu = 70, conf.level = 0.99)
t_test_sommeil

#
t_test_sommeil$p.value < 0.01  #donc hyppthése accepté 

