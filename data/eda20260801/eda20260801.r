# eda20250723.r

#################################################

# package loading

library(lakhesis)
library(eratosthenes)
library(ggplot2)
library(Bchron)

#################################################

# upload serations from csv

upload_csv <- function(filename) {
    mat <- read.csv(filename, header = TRUE)
    rownames(mat) <- mat$Context
    mat$Context <- NULL
    mat <- as.matrix(mat)
    return(mat)
}

## new/revised
setwd("seriations")
ser_meligunis_lipara_ii <- upload_csv("ser_meligunislipara2.csv")

## from eda20251001
setwd("../..")
setwd("eda20251001")
ser_lattara <- upload_csv("caa2025_ser_lattara.csv") 
ser_shipwrecks <- upload_csv("caa2025_ser_shipwrecks.csv")

## from eda20260801
setwd("..")
setwd("eda20260723")
ser_aleria <- upload_csv("ser_aleria_20260723.csv") 
ser_leptis_magna_theater_necr <- upload_csv("ser_leptis_magna_theater_necr.csv")

setwd("..")
setwd("eda20260801")

#################################################

# create sequences and constraints

# create sequences

## aleria, shipwreck seriations
seq001 <- rownames(ser_aleria)
seq002 <- rownames(ser_shipwrecks)

## lattes - stratigraphic constraints
seq003 <- c("Lattara MR 129007", "Lattara US 129009", "Lattara US 129007", "Lattara US 129008")
seq004 <- c("Lattara US 129006", "Lattara US 129004", "Lattara US 129005")
seq005 <- c("Lattara US 129019", "Lattara US 129018", "Lattara US 129017", "Lattara US 129016", "Lattara PT 129011", "Lattara US 129003", "Lattara US 129030")
seq006 <- c("Lattara US 129012", "Lattara US 1290002", "Lattara US 129001", "Lattara PT 129011")
seq007 <- c("Lattara US 129034", "Lattara US 129032", "Lattara US 129033", "Lattara US 129025", "Lattara PT 129011")
seq008 <- c("Lattara MR 31115", "Lattara US 31115", "Lattara US 31116", "Lattara MR 31074", "Lattara MR 31071", "Lattara US 31072", "Lattara US 31074", "Lattara US 31075")
seq009 <- c("Lattara PR 31088", "Lattara US 30125", "Lattara US 31012")
seq010 <- c("Lattara MR 31084", "Lattara US 31084", "Lattara US 31085", "Lattara MR 31074")
seq011 <- c("Lattara MR 31086", "Lattara US 31086", "Lattara US 31087", "Lattara MR 31071", "Lattara US 31072", "Lattara US 31071", "Lattara US 31070")
seq012 <- c("Lattara MR 31082", "Lattara US 31082", "Lattara US 31083", "Lattara MR 31114", "Lattara US 31018", "Lattara US 31017")
seq013 <- c("Lattara MR 31081", "Lattara US 31081", "Lattara US 31018")
seq014 <- c("Lattara US 31081", "Lattara US 31016")
seq015 <- c("Lattara MR 31124", "Lattara US 31124", "Lattara MR 31015", "Lattara US 31015", "Lattara US 31016")
seq016 <- c("Lattara US 31113", "Lattara SB 311223", "Lattara US 31078", "Lattara US 31077", "Lattara US 31089", "Lattara US 31076", "Lattara US 31069 = 31010")
seq017 <- c("Lattara US 31113", "Lattara US 31117", "Lattara US 31078")
seq018 <- c("Lattara US 31113", "Lattara US 31110", "Lattara US 31078")
seq019 <- c("Lattara US 31113", "Lattara FY 31112", "Lattara US 31121", "Lattara US 31120", "Lattara US 31119", "Lattara US 31112", "Lattara US 31078")
seq020 <- c("Lattara MR 31013", "Lattara US 31013", "Lattara US 31028", "Lattara US 31014")
seq021 <- c("Lattara CN 128004", "Lattara US 128005", "Lattara US 128004", "Lattara US 128003", "Lattara US 128002", "Lattara US 128006", "Lattara US 128007", "Lattara US 30014", "Lattara US 128001")
seq022 <- c("Lattara MR 31005", "Lattara US 31005", "Lattara US 31026", "Lattara US 31006")
seq023 <- c("Lattara US 31032", "Lattara US 31034 = 31063", "Lattara US 31024", "Lattara US 31023", "Lattara US 31022", "Lattara US 31019", "Lattara US 31025")
seq024 <- c("Lattara US 31019", "Lattara MR 31011", "Lattara US 31021", "Lattara US 31011", "Lattara US 31012")
seq025 <- c("Lattara US 31019", "Lattara MR 31003", "Lattara US 31003", "Lattara US 31004", "Lattara MR 31137", "Lattara US 31137", "Lattara US 31166", "Lattara US 31009", "Lattara US 31002")
seq026 <- c("Lattara US 31033", "Lattara US 31025")
seq027 <- c("Lattara US 31056", "Lattara US 31027", "Lattara US 31058", "Lattara US 31025")
seq028 <- c("Lattara US 31057", "Lattara US 31029", "Lattara US 31059", "Lattara US 31025")
seq029 <- c("Lattara US 31007", "Lattara US 31008", "Lattara US 31025")
seq030 <- c("Lattara US 31213", "Lattara US 31212", "Lattara US 31201", "Lattara US 31195 = 31196", "Lattara US 31184 = 31204", "Lattara US 31188", "Lattara US 31163 = 31194", "Lattara US 31160", "Lattara US 31162", "Lattara US 31159", "Lattara US 31154 = 31143", "Lattara US 31151", "Lattara US 31142", "Lattara US 31132", "Lattara US 31125")
seq031 <- c("Lattara US 31184 = 31204", "Lattara US 31199", "Lattara US 31163 = 31194")
seq032 <- c("Lattara US 31201", "Lattara US 31183", "Lattara US 31176", "Lattara US 31160", "Lattara US 31172", "Lattara US 31164", "Lattara US 31154 = 31143", "Lattara US 31151", "Lattara US 31153", "Lattara US 31146", "Lattara US 31132")
seq033 <- c("Lattara US 31160", "Lattara US 31187", "Lattara US 31154 = 31143")
seq034 <- c("Lattara MR 31138", "Lattara US 31138")
seq035 <- c("Lattara US 31147", "Lattara US 31226", "Lattara US 31177", "Lattara US 31149")
seq036 <- c("Lattara US 31155", "Lattara US 31225", "Lattara US 31178", "Lattara US 31148")
seq037 <- c("Lattara US 31174", "Lattara US 31223", "Lattara US 32110", "Lattara US 31171", "Lattara US 31170", "Lattara US 31161", "Lattara US 31157", "Lattara US 31168", "Lattara US 31169", "Lattara US 31131", "Lattara US 31130", "Lattara SB 31131", "Lattara US 31179")
seq038 <- c("Lattara US 31174", "Lattara US 31224", "Lattara US 31208", "Lattara US 31171")
seq039 <- c("Lattara US 31174", "Lattara US 31229", "Lattara US 31228", "Lattara US 31171")
seq040 <- c("Lattara US 31174", "Lattara US 31236", "Lattara US 31230", "Lattara US 31171")
seq041 <- c("Lattara US 31174", "Lattara US 31227", "Lattara US 31207")
seq042 <- c("Lattara US 31157", "Lattara US 31167 = 31232", "Lattara US 31156 = 31209", "Lattara FS 31156", "Lattara US 31169")
seq043 <- c("Lattara US 31169", "Lattara US 129027", "Lattara US 129026", "Lattara SB 31131")
seq044 <- c("Lattara US 31139", "Lattara US 31179", "Lattara US 31127")
seq045 <- c("Lattara US 30073", "Lattara US 30069", "Lattara US 30059", "Lattara US 30058")
seq046 <- c("Lattara US 104002", "Lattara US 104003", "Lattara US 104010", "Lattara US 104001", "Lattara US 30001")
seq047 <- c("Lattara US 104002", "Lattara US 104004", "Lattara US 104010")
seq048 <- c("Lattara US 30012", "Lattara US 30073", "Lattara US 30003")
seq049 <- c("Lattara US 30002", "Lattara US 30073")
seq050 <- c("Lattara US 30008", "Lattara US 30079", "Lattara US 30078", "Lattara US 30001")
seq051 <- c("Lattara US 30073", "Lattara US 30081", "Lattara US 30093", "Lattara US 30082", "Lattara US 30070", "Lattara US 30067", "Lattara US 30005", "Lattara US 30001")
seq052 <- c("Lattara US 30019", "Lattara US 30063")
seq053 <- c("Lattara US 30010", "Lattara MR 30009")
seq054 <- c("Lattara US 30055", "Lattara MR 30009")
seq055 <- c("Lattara US 30006", "Lattara US 30011", "Lattara US 30001")
seq056 <- c("Lattara US 30054", "Lattara US 30046", "Lattara US 30044 = 30037", "Lattara US 30034", "Lattara US 30052", "Lattara US 30026", "Lattara US 30030", "Lattara US 30033", "Lattara US 30032", "Lattara US 30015", "Lattara US 30053", "Lattara US 30031")
seq057 <- c("Lattara US 30029", "Lattara US 30056", "Lattara US 30040", "Lattara US 30038", "Lattara US 30039", "Lattara US 30041", "Lattara US 30028", "Lattara US 30016", "Lattara US 30001")
seq058 <- c("Lattara US 30016", "Lattara US 30057", "Lattara US 30017", "Lattara US 30001")
seq059 <- c("Lattara US 30011", "Lattara PR 30004", "Lattara US 30004", "Lattara US 30151", "Lattara US 30111", "Lattara US 30001")
seq060 <- c("Lattara US 30212", "Lattara PR 30004", "Lattara US 30001")
seq061 <- c("Lattara US 30049", "Lattara US 30048", "Lattara US 30130")
seq062 <- c("Lattara US 30048", "Lattara US 30047 = 30149", "Lattara US 30043 = 30110 = 30118", "Lattara US 30131", "Lattara US 30151", "Lattara US 30111")
seq063 <- c("Lattara US 30051", "Lattara US 30050", "Lattara US 30155", "Lattara US 30043 = 30110 = 30118", "Lattara US 30042 = 30107", "Lattara US 30036", "Lattara US 30035", "Lattara US 30027 = 30105", "Lattara US 30021", "Lattara US 30018 = 30102", "Lattara US 30001")
seq064 <- c("Lattara US 30043 = 30010 = 30118", "Lattara US 30119", "Lattara US 30128", "Lattara US 30127", "Lattara US 30001")
seq065 <- c("Lattara US 30204", "Lattara US 30203", "Lattara US 30177", "Lattara US 30171", "Lattara US 30122", "Lattara US 30172", "Lattara US 30112", "Lattara US 30104", "Lattara US 30142", "Lattara US 30137", "Lattara US 30103", "Lattara US 30001")
seq066 <- c("Lattara US 30122", "Lattara US 30158", "Lattara US 30112")
seq067 <- c("Lattara US 30122", "Lattara US 30169", "Lattara US 30112")
seq068 <- c("Lattara US 30218", "Lattara US 30112", "Lattara US 30104", "Lattara US 30147", "Lattara US 30138", "Lattara US 30103")
seq069 <- c("Lattara US 30217", "Lattara US 30134", "Lattara US 30112")
seq070 <- c("Lattara US 30220", "Lattara US 30215", "Lattara US 30112")
seq071 <- c("Lattara US 30145", "Lattara US 30200", "Lattara US 30140", "Lattara US 30144", "Lattara US 30136", "Lattara US 30112")
seq072 <- c("Lattara US 30124", "Lattara US 30143", "Lattara US 30132", "Lattara US 30001")
seq073 <- c("Lattara US 30181", "Lattara US 30143")
seq074 <- c("Lattara US 30181", "Lattara US 30210")
seq075 <- c("Lattara US 30207", "Lattara US 30210", "Lattara US 30001")
seq076 <- c("Lattara US 30115", "Lattara US 30157", "Lattara US 30133", "Lattara US 30001")
seq077 <- c("Lattara US 30117", "Lattara US 30168", "Lattara US 30106", "Lattara US 30001")
seq078 <- c("Lattara PR 30120", "Lattara US 30185", "Lattara US 30168", "Lattara US 30106", "Lattara US 30001")
seq079 <- c("Lattara PR 30120", "Lattara US 30165", "Lattara US 30168")
seq080 <- c("Lattara US 30185", "Lattara US 30166", "Lattara US 30106")
seq081 <- c("Lattara US 30165", "Lattara US 30166")
seq082 <- c("Lattara US 30116", "Lattara US 30166")
seq083 <- c("Lattara US 30160", "Lattara US 30199", "Lattara US 30175", "Lattara US 30126", "Lattara US 30211", "Lattara US 30163", "Lattara US 30108", "Lattara US 30103", "Lattara US 30001")
seq084 <- c("Lattara US 30160", "Lattara US 30198", "Lattara US 30175")
seq085 <- c("Lattara US 30160", "Lattara US 30201", "Lattara US 30197", "Lattara US 30175")
seq086 <- c("Lattara US 30160", "Lattara US 30159", "Lattara US 30175")
seq087 <- c("Lattara US 30125", "Lattara US 30199")
seq088 <- c("Lattara US 30125", "Lattara US 30198")
seq089 <- c("Lattara US 30125", "Lattara US 30201")
seq090 <- c("Lattara US 30125", "Lattara US 30159")
seq091 <- c("Lattara US 30126", "Lattara US 30167", "Lattara US 30108")
seq092 <- c("Lattara US 30126", "Lattara US 30164", "Lattara US 30108")
seq093 <- c("Lattara US 30126", "Lattara US 30211", "Lattara US 30163", "Lattara US 30129", "Lattara US 30108")
seq094 <- c("Lattara US 30126", "Lattara US 30146", "Lattara US 30108")
seq095 <- c("Lattara US 30126", "Lattara US 30174", "Lattara US 30108")
seq096 <- c("Lattara US 30114", "Lattara US 30209", "Lattara US 30106", "Lattara US 30001")
seq097 <- c("Lattara US 30113", "Lattara US 30121", "Lattara US 30183", "Lattara US 30184", "Lattara US 30001")
seq098 <- c("Lattara US 30188", "Lattara US 30186 = 30205", "Lattara US 30189", "Lattara US 30179", "Lattara US 30187")
seq099 <- c("Lattara US 30280", "Lattara US 30221 = 30247", "Lattara US 30180", "Lattara US 30176 = 30178")
seq100 <- c("Lattara US 30221 = 30247", "Lattara US 30258")
seq101 <- c("Lattara US 30257", "Lattara US 30227", "Lattara US 30176 = 30178")
seq102 <- c("Lattara US 30233", "Lattara US 30224")
seq103 <- c("Lattara US 30230", "Lattara US 30229")
seq104 <- c("Lattara US 30289", "Lattara US 30290")
seq105 <- c("Lattara US 35543", "Lattara US 35547")
seq106 <- c("Lattara US 35540", "Lattara US 35544", "Lattara US 35543", "Lattara US 35537", "Lattara US 35536", "Lattara US 35532", "Lattara US 35533", "Lattara US 35526")
seq107 <- c("Lattara US 35536", "Lattara US 35535", "Lattara US 35534", "Lattara US 35526")
seq108 <- c("Lattara US 35533", "Lattara US 35165", "Lattara US 35171", "Lattara US 35170")
seq109 <- c("Lattara US 35533", "Lattara US 35285")
seq110 <- c("Lattara US 35526", "Lattara US 35518", "Lattara US 35492 = 35511", "Lattara US 35491", "Lattara US 35512", "Lattara US 35464", "Lattara US 35516", "Lattara US 35517", "Lattara US 35489", "Lattara US 35486", "Lattara US 35002")
seq111 <- c("Lattara US 35464", "Lattara US 35460", "Lattara US 35490", "Lattara US 35487", "Lattara US 35488", "Lattara US 35002")
seq112 <- c("Lattara US 35464", "Lattara US 35523", "Lattara US 35522", "Lattara US 35490")
seq113 <- c("Lattara US 35517", "Lattara US 35490")
seq114 <- c("Lattara US 35460", "Lattara US 35489")
seq115 <- c("Lattara US 35522", "Lattara US 35489", "Lattara US 35488")
seq116 <- c("Lattara US 35518", "Lattara US 35528", "Lattara US 35503", "Lattara US 35520", "Lattara US 35499", "Lattara US 35498", "Lattara US 35483", "Lattara US 35002")
seq117 <- c("Lattara US 35520", "Lattara US 35502", "Lattara US 35498")
seq118 <- c("Lattara US 35520", "Lattara US 35504", "Lattara US 35498")
seq119 <- c("Lattara US 35533", "Lattara US 35152", "Lattara US 35524", "Lattara US 35154", "Lattara US 35153")
seq120 <- c("Lattara US 35534", "Lattara US 35152")
seq121 <- c("Lattara US 35521", "Lattara US 35538", "Lattara US 35547")
seq122 <- c("Lattara US 35538", "Lattara US 35537")
seq123 <- c("Lattara US 35538", "Lattara US 35482")
seq124 <- c("Lattara US 35538", "Lattara US 35145")
seq125 <- c("Lattara US 35541", "Lattara US 35542", "Lattara US 35547")
seq126 <- c("Lattara US 35542", "Lattara US 35537")
seq127 <- c("Lattara US 35542", "Lattara US 35482")
seq128 <- c("Lattara US 35482", "Lattara US 35145", "Lattara US 35148", "Lattara US 35146")
seq129 <- c("Lattara US 35409", "Lattara US 35408", "Lattara US 35366", "Lattara US 35122")
seq130 <- c("Lattara US 35501", "Lattara US 35404 = 35443 = 35407")
seq131 <- c("Lattara US 35416", "Lattara US 35415")
seq132 <- c("Lattara US 35416", "Lattara US 35110", "Lattara US 35096", "Lattara US 35107", "Lattara US 35109", "Lattara US 35039", "Lattara US 35089", "Lattara US 35036", "Lattara US 35002 = 35046", "Lattara US 35001")
seq133 <- c("Lattara US 35039", "Lattara US 35158 = 35178", "Lattara US 35128", "Lattara US 35002 = 35046")
seq134 <- c("Lattara US 35416", "Lattara US 35426")
seq135 <- c("Lattara US 35416", "Lattara US 35134")
seq136 <- c("Lattara US 35404 = 35443 = 35407", "Lattara US 35451", "Lattara US 35402 = 35437", "Lattara US 35136 = 35364", "Lattara US 35168", "Lattara US 35398", "Lattara US 35415", "Lattara US 35207 = 35319", "Lattara US 35081", "Lattara US 35091", "Lattara US 35072")
seq137 <- c("Lattara US 35398", "Lattara US 35110")
seq138 <- c("Lattara US 35398", "Lattara US 35426")
seq139 <- c("Lattara US 35398", "Lattara US 35134")
seq140 <- c("Lattara US 35404 = 35443 = 35407", "Lattara US 35384 = 35436", "Lattara US 35136 = 35364")
seq141 <- c("Lattara US 35404 = 35443 = 35407", "Lattara US 35441", "Lattara US 35136 = 35364")
seq142 <- c("Lattara US 35080", "Lattara US 35454", "Lattara US 35509", "Lattara US 35168")
seq143 <- c("Lattara US 35424", "Lattara US 35139", "Lattara US 35423")
seq144 <- c("Lattara US 35151", "Lattara US 35140", "Lattara US 35217")
seq145 <- c("Lattara US 35138", "Lattara US 35405", "Lattara US 35344 = 35360", "Lattara US 35179", "Lattara US 35172", "Lattara US 35426")
seq146 <- c("Lattara US 35418", "Lattara US 35123", "Lattara US 35328", "Lattara US 35199", "Lattara US 35334", "Lattara US 35134", "Lattara US 35208", "Lattara US 35115", "Lattara US 35067")
seq147 <- c("Lattara US 35096", "Lattara US 35108", "Lattara US 35109")
seq148 <- c("Lattara US 35397", "Lattara US 35250", "Lattara US 35247", "Lattara US 35169")
seq149 <- c("Lattara US 35396", "Lattara US 35395", "Lattara US 35390")
seq150 <- c("Lattara US 35396", "Lattara US 35485")
seq151 <- c("Lattara US 35396", "Lattara US 35551")
seq152 <- c("Lattara US 35396", "Lattara US 35506")
seq153 <- c("Lattara US 35396", "Lattara US 35479", "Lattara US 35447")
seq154 <- c("Lattara US 35459", "Lattara US 35453", "Lattara US 35506", "Lattara US 35447", "Lattara US 35446", "Lattara US 35445", "Lattara US 35390", "Lattara US 35379", "Lattara US 35377", "Lattara US 35400", "Lattara US 35399", "Lattara US 35363", "Lattara US 35361", "Lattara US 35375", "Lattara US 35282", "Lattara US 35309", "Lattara US 35266", "Lattara US 35365 = 35326", "Lattara US 35255", "Lattara US 35339", "Lattara US 35340", "Lattara US 35391", "Lattara US 35450", "Lattara US 35449", "Lattara US 35481", "Lattara US 35480", "Lattara US 35234", "Lattara US 35000")
seq155 <- c("Lattara US 35379")
seq156 <- c("Lattara US 35453", "Lattara US 35485", "Lattara US 35484", "Lattara US 35551", "Lattara US 35390")
seq157 <- c("Lattara US 35453", "Lattara US 35479", "Lattara US 35447")
seq158 <- c("Lattara US 35390", "Lattara US 353333", "Lattara US 353393", "Lattara US 35400")
seq159 <- c("Lattara US 353393", "Lattara US 35401", "Lattara US 35399")
seq160 <- c("Lattara US 35390", "Lattara US 353376", "Lattara US 35400")
seq161 <- c("Lattara US 353376", "Lattara US 35401")
seq162 <- c("Lattara US 35390", "Lattara US 353281", "Lattara US 35400")
seq163 <- c("Lattara US 353281", "Lattara US 35401")
seq164 <- c("Lattara US 35409", "Lattara US 35408", "Lattara US 35366", "Lattara US 35122")
seq165 <- c("Lattara US 35329", "Lattara US 35328")
seq166 <- c("Lattara US 35399", "Lattara US 35362", "Lattara US 35381", "Lattara US 35375")
seq167 <- c("Lattara US 35375", "Lattara US 35374", "Lattara US 35309")
seq168 <- c("Lattara US 35282", "Lattara US 35386", "Lattara US 35387", "Lattara US 35265 = 35326")
seq169 <- c("Lattara US 35282", "Lattara US 35253", "Lattara US 35252", "Lattara US 35265 = 35326")
seq170 <- c("Lattara US 35374", "Lattara US 35253")
seq171 <- c("Lattara US 35374", "Lattara US 35386")
seq172 <- c("Lattara US 35255", "Lattara US 35314", "Lattara US 35291")
seq173 <- c("Lattara US 35340", "Lattara US 35291", "Lattara US 35450")
seq174 <- c("Lattara US 35239", "Lattara US 35320", "Lattara US 35321", "Lattara US 35315", "Lattara US 35316", "Lattara US 35285 = 35303")
seq175 <- c("Lattara US 35239", "Lattara US 35318", "Lattara US 35317", "Lattara US 35285 = 35303")
seq176 <- c("Lattara US 35172", "Lattara US 35259", "Lattara US 35295", "Lattara US 35193", "Lattara US 35398")
seq177 <- c("Lattara US 35414", "Lattara US 35079", "Lattara US 35206 = 35301", "Lattara US 35205")
seq178 <- c("Lattara US 35136 = 35364", "Lattara US 35272", "Lattara US 35271", "Lattara US 35216", "Lattara US 35398")
seq179 <- c("Lattara US 35551", "Lattara US 35275", "Lattara US 35375")
seq180 <- c("Lattara US 35109", "Lattara US 35277", "Lattara US 35412", "Lattara US 35158 = 35178")
seq181 <- c("Lattara US 35016", "Lattara US 35015", "Lattara US 35192", "Lattara US 35006", "Lattara US 35202", "Lattara US 35005", "Lattara US 35004")
seq182 <- c("Lattara US 35023", "Lattara US 35196", "Lattara US 35157", "Lattara US 35156")
seq183 <- c("Lattara US 35018", "Lattara US 35017", "Lattara US 35031", "Lattara US 35203", "Lattara US 35010", "Lattara US 35012", "Lattara US 35011")
seq184 <- c("Lattara US 35024", "Lattara US 35183", "Lattara US 35184", "Lattara US 35269")
seq185 <- c("Lattara US 35191", "Lattara US 35269")
seq186 <- c("Lattara US 35182", "Lattara US 35269", "Lattara US 35029 group start", "Lattara US 35029", "Lattara US 35029 group end", "Lattara US 35034", "Lattara US 35021 = 35267", "Lattara US 35028", "Lattara US 35026", "Lattara US 35030", "Lattara US 35033", "Lattara US 35032", "Lattara US 35022", "Lattara US 35003", "Lattara US 35002")
seq187 <- c("Lattara US 35029 group end", "Lattara US 35002")
seq188 <- c("Lattara US 35141", "Lattara US 35149", "Lattara US 35144")
seq189 <- c("Lattara US 35029 group start", "Lattara US 35159 = 35278", "Lattara US 35155 = 35243 = 35230", "Lattara US 35029 group end")
seq190 <- c("Lattara US 35029 group start", "Lattara US 35237", "Lattara US 35246", "Lattara US 35029 group end")
seq191 <- c("Lattara US 35168", "Lattara US 35279", "Lattara US 35280", "Lattara US 35110")
seq192 <- c("Lattara US 35142", "Lattara US 35150", "Lattara US 35143")
seq193 <- c("Lattara US 35508", "Lattara US 35349", "Lattara US 35442", "Lattara US 35475", "Lattara US 35476", "Lattara US 35440", "Lattara US 35355 = 35438", "Lattara US 35430", "Lattara US 35389", "Lattara US 35239", "Lattara US 35322", "Lattara US 35286 = 35303", "Lattara US 35240", "Lattara US 35337", "Lattara US 35369", "Lattara 35358", "Lattara US 35231", "Lattara US 35002")
seq194 <- c("Lattara US 35286 = 35303", "Lattara US 35238", "Lattara US 35337", "Lattara US 35368", "Lattara US 35406", "Lattara US 35367", "Lattara US 35231")
seq195 <- c("Lattara US 35337", "Lattara US 35353", "Lattara US 35352", "Lattara US 35231")
seq196 <- c("Lattara US 35508", "Lattara US 35462", "Lattara US 35461", "Lattara US 35439", "Lattara US 35463", "Lattara US 35440")
seq197 <- c("Lattara US 35463", "Lattara US 35456", "Lattara US 35452", "Lattara US 35458", "Lattara US 35457", "Lattara US 35231")
seq198 <- c("Lattara US 35547", "Lattara US 35147", "Lattara US 35427")
seq199 <- c("Lattara US 35547", "Lattara US 35548")
seq200 <- c("Lattara US 35547", "Lattara US 35165", "Lattara US 35171", "Lattara US 35170")

## lattes - seriated contexts
seq201 <- rownames(ser_lattara) 

## lattes - additional stratigraphic / phase sequences
seq202 <- c("Lattara US 35085", "Lattara US 35025", "Lattara US 35053", "Lattara US 35088", "Lattara US 35050", "Lattara US 35221")
seq203 <- c("Lattara US 35125", "Lattara US 35124", "Lattara US 35094", "Lattara US 35118")
seq204 <- c("Lattara US 35126", "Lattara US 35071", "Lattara US 35073")
seq205 <- c("Lattara US 35175", "Lattara US 35174", "Lattara US 35173", "Lattara US 35160", "Lattara US 35104", "Lattara US 35119", "Lattara US 35048", "Lattara US 35043", "Lattara US 35035", "Lattara US 35189", "Lattara US 35236", "Lattara US 35188")
seq206 <- c("Lattara US 35175", "Lattara US 35180", "Lattara US 35160", "Lattara US 35104", "Lattara US 35111", "Lattara US 35048")
seq207 <- c("Lattara US 35104", "Lattara US 35112", "Lattara US 35048")
seq208 <- c("Lattara US 35209", "Lattara US 35086", "Lattara US 35223", "Lattara US 35013", "Lattara US 35222")
seq209 <- c("Lattara US 35013", "Lattara US 35014", "Lattara US 35195", "Lattara US 35220", "Lattara US 35113", "Lattara US 35176", "Lattara US 35121")
seq210 <- c("Lattara US 35113", "Lattara US 35222")

## additional relationships / hypotheses
seq211 <- c("Rirha US 5182", "Rirha US 5154")
seq212 <- c("Byrsa II B 19.4", "Byrsa II B 19.2")
seq213 <- c("Rirha US 5154", "Planier A")
seq214 <- c("Mazotos", "El Sec", "Filicudi F", "Tour Fondue", "Cabrera 2", "Tour d'Agnello", "Sanguinaires A", "Lazaret")
seq215 <- c("Cabrera 2", "Grand Congloué A", "Lazaret", "Byrsa II B 19.2", "Punta Scaletta", "Illa Pedrosa", "Cavalière", "Madrague de Giens", "Planier C", "Planier A")

seq217 <- c("Veille-Toulouse - Fosse 40", "Veille-Toulouse - Fosse 40 sup.")

## meligunis-lipara ii necropolis contrada diana

# seq218 <- c("Lipari Necr. Contrada Diana T. 86", "Lipari Necr. Contrada Diana T. 85"), # unresolved: T. 85 cuts into T. 86 and therefore comes later, but T. 85 was placed in Group 2 (ca. 470-400 BCE) and T. 86 in the later Group 3 (ca. 400-330 BCE)
# seq219 <- c("Lipari Necr. Contrada Diana T. 158", "Lipari Necr. Contrada Diana T. 149"), # unresolved: T. 158 assigned to Group 5. ca. 280-251 BCE, T. 149 assigned to Group 3. ca. 400-330 BCE 
seq220 <- c("Lipari Necr. Contrada Diana T. 222", "Lipari Necr. Contrada Diana T. 161")
seq221 <- c("Lipari Necr. Contrada Diana T. 223", "Lipari Necr. Contrada Diana T. 160")
seq222 <- c("Lipari Necr. Contrada Diana T. 223", "Lipari Necr. Contrada Diana T. 161")
seq223 <- c("Lipari Necr. Contrada Diana T. 347", "Lipari Necr. Contrada Diana T. 300")
seq224 <- c("Lipari Necr. Contrada Diana T. 416", "Lipari Necr. Contrada Diana T. 414", "Lipari Necr. Contrada Diana T. 409")
seq225 <- c("Lipari Necr. Contrada Diana T. 416", "Lipari Necr. Contrada Diana T. 412")

## meligunis-lipara ii necropolis contrada diana - seriation
seq226 <- rownames(ser_meligunis_lipara_ii)

## leptis magna - necropolis under the theater - seriation
seq227 <- rownames(ser_leptis_magna_theater_necr)

## horizon - Gnathian style
seq228 <- c("Lipari Necr. Contrada Diana T. 230", "Horizon - Gnathian", "Lipari Necr. Contrada Diana T. 314")
seq229 <- c("Aleria II T. 147C", "Horizon - Gnathian", "Aleria II T. 122A")

## horizon - Campanian A
seq230 <- c("Lipari Necr. Contrada Diana T. 315 bis", "Horizon - Campanian A", "Lipari Necr. Contrada Diana T. 444")
seq231 <- c("Aleria II T. 24", "Horizon - Campanian A", "Aleria II T. 150")
seq232 <- c("Horizon - Campanian A", "Lattara US 31110")
seq233 <- c("Horizon - Campanian A", "Lattara US 35476")

seq234 <- c("Lattara US 35286 = 35303", "Lattara US 35311", "Lattara US 35337")

#################################################

## compile all sequences into list

contexts_20260801 <- list(
  # from caa2025
  seq001, seq002, seq003, seq004, seq005, seq006, seq007, seq008, seq009, seq010, seq011, seq012, seq013, seq014, seq015, seq016, seq017, seq018, seq019, seq020, seq021, seq022, seq023, seq024, seq025, seq026, seq027, seq028, seq029, seq030, seq031, seq032, seq033, seq034, seq035, seq036, seq037, seq038, seq039, seq040, seq041, seq042, seq043, seq044, seq045, seq046, seq047, seq048, seq049, seq050, seq051, seq052, seq053, seq054, seq055, seq056, seq057, seq058, seq059, seq060, seq061, seq062, seq063, seq064, seq065, seq066, seq067, seq068, seq069, seq070, seq071, seq072, seq073, seq074, seq075, seq076, seq077, seq078, seq079, seq080, seq081, seq082, seq083, seq084, seq085, seq086, seq087, seq088, seq089, seq090, seq091, seq092, seq093, seq094, seq095, seq096, seq097, seq098, seq099, seq100, seq101, seq102, seq103, seq104, seq105, seq106, seq107, seq108, seq109, seq110, seq111, seq112, seq113, seq114, seq115, seq116, seq117, seq118, seq119, seq120, seq121, seq122, seq123, seq124, seq125, seq126, seq127, seq128, seq129, seq130, seq131, seq132, seq133, seq134, seq135, seq136, seq137, seq138, seq139, seq140, seq141, seq142, seq143, seq144, seq145, seq146, seq147, seq148, seq149, seq150, seq151, seq152, seq153, seq154, seq155, seq156, seq157, seq158, seq159, seq160, seq161, seq162, seq163, seq164, seq165, seq166, seq167, seq168, seq169, seq170, seq171, seq172, seq173, seq174, seq175, seq176, seq177, seq178, seq179, seq180, seq181, seq182, seq183, seq184, seq185, seq186, seq187, seq188, seq189, seq190, seq191, seq192, seq193, seq194, seq195, seq196, seq197, seq198, seq199, seq200, seq201, seq202, seq203, seq204, seq205, seq206, seq207, seq208, seq209, seq210, seq211, seq212, seq213, seq214, seq215, seq217,
  # add new
  seq220, seq221, seq222, seq223, seq224, seq225, seq226, #seq227, 
  seq228, seq229, seq230, seq231, seq232, seq233, seq234
)

## check sequences for agreement

seq_check(contexts_20260801)

#################################################

# create constraints

# tpq

# create an empty list to contain all tpq
tpq_info <- list()

RH_A08_US_5182 <- list(id = "RH_A08_US_5182", mu = 2175, sigma = 30, assoc = "Rirha US 5182")
VERA_6082a <- list(id = "VERA-6082a", mu = 2284, sigma = 37, assoc = "Mazotos")
VERA_6082b <- list(id = "VERA-6082b", mu = 2307, sigma = 25, assoc = "Mazotos")
VERA_6082c <- list(id = "VERA-6082c", mu = 2279, sigma = 32, assoc = "Mazotos")
VERA_6082d <- list(id = "VERA-6082d", mu = 2261, sigma = 35, assoc = "Mazotos")
OxA_31836 <- list(id = "OxA-31836", mu = 2246, sigma = 26, assoc = "Mazotos")
OxA_31877 <- list(id = "OxA-31877", mu = 2269, sigma = 25, assoc = "Mazotos")
OxA_32005 <- list(id = "OxA-32005", mu = 2306, sigma = 25, assoc = "Mazotos")
OxA_32006 <- list(id = "OxA-32006", mu = 2308, sigma = 24, assoc = "Mazotos")
OxA_32794 <- list(id = "OxA-32794", mu = 2351, sigma = 36, assoc = "Mazotos")
OxA_32795 <- list(id = "OxA-32795", mu = 2321, sigma = 36, assoc = "Mazotos")
OxA_32796 <- list(id = "OxA-32796", mu = 2325, sigma = 36, assoc = "Mazotos")

eratosthenes_rcdates <- list(RH_A08_US_5182,
            VERA_6082a,VERA_6082b,VERA_6082c,VERA_6082d,
            OxA_31836,OxA_31877,OxA_32005,OxA_32006,OxA_32794,OxA_32795,OxA_32796	
          )

# calibrate and insert rc dates into tpq by looping over rows with Bchron
for (i in 1:length(eratosthenes_rcdates)) {
    calib <- BchronCalibrate(ages = eratosthenes_rcdates[[i]]$mu,
                             ageSds = eratosthenes_rcdates[[i]]$sigma,
                             calCurves = "intcal20")
    x <- 1950 - sampleAges(calib)
 
    tpq_info[[i]] <- list(id = eratosthenes_rcdates[[i]]$id,
                     assoc = eratosthenes_rcdates[[i]]$assoc,
                     samples = x)
}

# other tpq

filicidi_a_rrc_142_1 <- list(id = "filicidi_a_rrc_142_1", assoc = "Filicudi A",
            samples = seq(-189,-180))
aleria_t_41_rrc_190_5 <- list(id = "aleria_t_41_rrc_190_5", assoc = "Aleria I T. 41",
            samples = seq(-169, 158))
punta_scaletta_ptol_vi <- list(id = "punta_scaletta_ptol_vi", assoc = "Punta Scaletta",
            samples = seq(-180, -145))
castro_pretorio_dr1b_cos <- list(id = "castro_pretorio_dr1b_cos", assoc = "CIL 15.4537",
            samples = -97)
burriac_dr1b_cos <- list(id = "burriac_dr1b_cos", assoc = "Burriac - Cabrera de Mar", 
            samples = -90)
mdg_rrc_235 <- list(id = "mdg_rrc_235", assoc = "Madrague de Giens",
            samples = -137)
mdg_rrc_382 <- list(id = "mdg_rrc_382", assoc = "Madrague de Giens",
            samples = -79)
mdg_rrc_392 <- list(id = "mdg_rrc_392", assoc = "Madrague de Giens",
            samples = -75)
cavaliere_mazard50 <- list(id = "cavaliere_mazard50", assoc = "Cavalière",
            samples = seq(-202, -88))
cavaliere_mazard45 <- list(id = "cavaliere_mazard45", assoc = "Cavalière",
            samples = seq(-202, -88))
cavaliere_mazard41 <- list(id = "cavaliere_mazard41", assoc = "Cavalière",
            samples = -206)
cavaliere_carteia <- list(id = "cavaliere_carteia", assoc = "Cavalière",
            samples = -101)
aleria_tpq_hyp <- list(id = "aleria_tpq_hyp", assoc = "Aleria I T. 19",
            samples = -450)
lattara_us_128004_tpq_hyp <- list(id = "lattara_us_128004_tpq_hyp", assoc = "Lattara US 128004",
            samples = seq(-225,-200))
lattara_us_128004_tpq_hyp <- list(id = "lattara_us_128004_tpq_hyp", assoc = "Lattara US 128004",
            samples = seq(-225,-200))
v_toulouse_fosse40_sup_dr1a_cos <- list(id = "v_toulouse_fosse40_sup_dr1a_cos", assoc = "Veille-Toulouse - Fosse 40 sup.",
            samples = -103)
meligunis_lipara_ii_p352_n1 <- list(id = "meligunis_lipara_ii_p352_n1", assoc = "Lipari Necr. Contrada Diana T. 146",
            type = "coin", samples = -344:-336)
meligunis_lipara_ii_p352_n2 <- list(id = "meligunis_lipara_ii_p352_n2", assoc = "Lipari Necr. Contrada Diana T. 202",
            type = "coin", samples = -400:-300)
meligunis_lipara_ii_p352_n4 <- list(id = "meligunis_lipara_ii_p352_n4", assoc = "Lipari Necr. Contrada Diana T. 303",
            type = "coin", samples = -400:-300)
meligunis_lipara_ii_p352_n7 <- list(id = "meligunis_lipara_ii_p352_n7", assoc = "Lipari Necr. Contrada Diana T. 476",
            type = "coin", samples = -304)
meligunis_lipara_ii_p352_n8 <- list(id = "meligunis_lipara_ii_p352_n8", assoc = "Lipari Necr. Contrada Diana T. 310",
            type = "coin", samples = -301)
meligunis_lipara_ii_p352_n10 <- list(id = "meligunis_lipara_ii_p352_n10", assoc = "Lipari Necr. Contrada Diana T. 114",
            type = "coin", samples = -225:-216)           
meligunis_lipara_ii_hyp1 <- list(id = "meligunis_lipara_ii_hyp1", assoc = "Lipari Necr. Contrada Diana T. 424",
            type = "hypothesis", samples = -470)      

nonrctpq <- list(
    filicidi_a_rrc_142_1, aleria_t_41_rrc_190_5,punta_scaletta_ptol_vi,burriac_dr1b_cos,mdg_rrc_235,mdg_rrc_382,mdg_rrc_392,cavaliere_mazard50,cavaliere_mazard45,cavaliere_mazard41,aleria_tpq_hyp,lattara_us_128004_tpq_hyp, castro_pretorio_dr1b_cos,cavaliere_carteia,
    meligunis_lipara_ii_p352_n7,
    meligunis_lipara_ii_hyp1
    )

tpq_20260801 <- c(tpq_info, nonrctpq)

#################################################

# taq

carthage_destr_1 <- list(id = "carthage_destr_1", assoc = "Byrsa II B 19.2", samples = -146)
gela_destr_1 <- list(id = "gela_destr_1", assoc = "Gela - Casa Via Polieno", samples = -282)
planier_a_hyp <- list(id = "planier_a_hyp", assoc = "Planier A", samples = seq(1, 15))
grand_ribaud_d_hyp <- list(id = "grand_ribaud_d_hyp", assoc = "Grand Ribaud D", samples = seq(-10, -1) )
burriac_dr1b_cos_taq_hyp <- list(id = "burriac_dr1b_cos_taq_hyp", assoc = "Burriac - Cabrera de Mar", samples = -85)
aleria_carthage_taq_hyp <- list(id = "aleria_carthage_taq_hyp", assoc = "Aleria II T. 138", samples = -146)
lattara_us_35236_taq_hyp <- list(id = "lattara_us_35236_taq_hyp", assoc = "Lattara US 35236", samples = seq(-25,-1))
meligunis_lipara_ii_hyp2 <- list(id = "meligunis_lipara_ii_hyp2",
            assoc = "Lipari Necr. Contrada Diana T. 341",
            type = "hypothesis",
            samples = -1) 
taq_horizon_gnathian <- list(id = "taq_horizon_gnathian",
            assoc = "Horizon - Gnathian",
            type = "hypothesis",
            samples = -335) 
taq_campanian_a <- list(id = "taq_campanian_a",
            assoc = "Horizon - Campanian A",
            type = "hypothesis",
            samples = -200) 


taq_20260801 <- list(
    carthage_destr_1, gela_destr_1, planier_a_hyp, grand_ribaud_d_hyp,
    burriac_dr1b_cos_taq_hyp,aleria_carthage_taq_hyp,
    lattara_us_35236_taq_hyp,meligunis_lipara_ii_hyp2,
    taq_horizon_gnathian,taq_campanian_a
)

#################################################

save(contexts_20260801, tpq_20260801, taq_20260801, file = "eda20260801.rda")

# dens_20260801 <- gibbs_ad(contexts_20260801, tpq = tpq_20260801, taq = taq_20260801)
# save(dens_20260801, file = "dens_20260801.rda")



