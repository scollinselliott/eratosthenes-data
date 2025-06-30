
**Download: [eda20250628.rda](eda20250628.rda)**

The following `list` objects of relative sequences, absolute
constraints, and finds data are contained in this `rda` file:

- `contexts_20250628`
- `tpq_20250628`
- `taq_20250628`
- `finds_20250628`

## Comments

These initial sequences were developed on the basis of preexisitng
approximate dates, and where “convenience” is mentioned it means that
the sequence has been defined largely on arbitrary grounds, and future
sequencing should work to remove that association.

Absolute constraints included as *t.p.q.* are two sets of radiocarbon
dates, one from the site of Rirha in Morocco (Callegarin et al. 2016,
41) and the other a batch of 11 dates from the Mazotos shipwreck near
Cyprus (Manning, Lorentzen, and Demesticha 2022). The *t.a.q* comprise
the sack of Carthage in 146 BCE, related to depositional sequences at
the site (Lancel, Morel, and Thuillier 1982, 194), and the conventional
date of the Planier A shipwreck (Corsi-Sciallano and Liou 1985, 17–25).
Radiocarbon dates (uncalibrated) were processed using file
`rc20250628.csv`.

Finds note: if one attributes Dr. 1B amphora to the wreck of Isla
Pedrosa, the date of that type is pulled heavily toward the mid-2nd
century BCE.

# Sequences

Ids are not retained in the sequences object `contexts_20250628`, but
are used as a reference number.

| Id         | Sequence                                                                                                                                             | References                                                                                                           | Notes                                                                                               |
|:-----------|:-----------------------------------------------------------------------------------------------------------------------------------------------------|:---------------------------------------------------------------------------------------------------------------------|:----------------------------------------------------------------------------------------------------|
| `seq00001` | c(`"Rirha US 5182"`, `"Rirha US 5154"`)                                                                                                              | Callegarin et al. (2016, 41)                                                                                         | No direct stratigraphic relationship, but Rirha US 5182 considered to date well before US 5154.     |
| `seq00002` | c(`"Byrsa II B 19.4"`, `"Byrsa II B 19.2"`)                                                                                                          | Lancel, Morel, and Thuillier (1982, 194)                                                                             |                                                                                                     |
| `seq00003` | c(`"Rirha US 5154"`, `"Planier A"`)                                                                                                                  | Callegarin et al. (2016, 40)                                                                                         | Convenience determination. Rirha US 5154 considered to date to the first decades of the 1st c. BCE. |
| `seq00004` | c(`"El Sec"`, `"Filicudi F"`, `"Tour Fondue"`, `"Cabrera 2"`, `"Tour d'Agnello"`, `"Sanguinaires A"`, `"Lazaret"`)                                   | Cerdá and Arribas (1987); Cibecchini and Capelli (2013, 425)                                                         | Based on conventional approximate absolute dates.                                                   |
| `seq00005` | c(`"Madrague de Giens"`, `"Planier C"`, `"Cap Béar C"`, `"Planier A"`)                                                                               | Tchernia (1978), Liou and Pomey (1985), Corsi-Sciallano and Liou (1985, 17–25); Parker (1992, 97–98, 249–50, 315–17) | Based on conventional approximate absolute dates.                                                   |
| `seq00006` | c(`"Cabrera 2"`, `"Grand Congloué A"`, `"Lazaret"`, `"Byrsa II B 19.2"`, `"Punta Scaletta"`, `"Isla Pedrosa"`, `"Cavalière"`, `"Madrague de Giens"`) | Tchernia (1978); Parker (1992); Sanmartí Grego and Principal-Ponce (1998)                                            | Based on conventional approximate absolute dates.                                                   |
| `seq00007` | c(`"Mazotos"`, `"El Sec"`)                                                                                                                           |                                                                                                                      | Based on conventional approximate absolute dates.                                                   |
| `seq00008` | c(`"Grand Congloué A"`, `"Héliopolis B"`, `"Punta Scaletta"`)                                                                                        | Parker (1992, 211)                                                                                                   | Based on conventional approximate absolute dates.                                                   |

------------------------------------------------------------------------

# *Termini post quos*

All radiocarbon dates were calibrated using `Bchron` (Haslett and
Parnell 2008) with the IntCal20 atmospheric data (Reimer et al. 2020).

| id                 | assoc             | Reference                                 | Notes                                       |
|:-------------------|:------------------|:------------------------------------------|:--------------------------------------------|
| `"RH A08 US 5182"` | `"Rirha US 5182"` | Callegarin et al. (2016, 41)              | Radiocarbon date.                           |
| `"VERA-6082a"`     | `"Mazotos"`       | Manning, Lorentzen, and Demesticha (2022) | Radiocarbon date. Olive pit (final voyage). |
| `"VERA-6082b"`     | `"Mazotos"`       | Manning, Lorentzen, and Demesticha (2022) | Radiocarbon date. Olive pit (final voyage). |
| `"VERA-6082c"`     | `"Mazotos"`       | Manning, Lorentzen, and Demesticha (2022) | Radiocarbon date. Olive pit (final voyage). |
| `"VERA-6082d"`     | `"Mazotos"`       | Manning, Lorentzen, and Demesticha (2022) | Radiocarbon date. Olive pit (final voyage). |
| `"OxA-31836"`      | `"Mazotos"`       | Manning, Lorentzen, and Demesticha (2022) | Radiocarbon date. Olive pit (final voyage). |
| `"OxA-31877"`      | `"Mazotos"`       | Manning, Lorentzen, and Demesticha (2022) | Radiocarbon date. Olive pit (final voyage). |
| `"OxA-32005"`      | `"Mazotos"`       | Manning, Lorentzen, and Demesticha (2022) | Radiocarbon date. Olive pit (final voyage). |
| `"OxA-32006"`      | `"Mazotos"`       | Manning, Lorentzen, and Demesticha (2022) | Radiocarbon date. Olive pit (final voyage). |
| `"OxA-32794"`      | `"Mazotos"`       | Manning, Lorentzen, and Demesticha (2022) | Radiocarbon date. Olive pit (final voyage). |
| `"OxA-32795"`      | `"Mazotos"`       | Manning, Lorentzen, and Demesticha (2022) | Radiocarbon date. Olive pit (final voyage). |
| `"OxA-32796"`      | `"Mazotos"`       | Manning, Lorentzen, and Demesticha (2022) | Radiocarbon date. Olive pit (final voyage). |

# *Termini ante quos*

| id                   | assoc                 | Reference                                                        | Notes                                    |
|:---------------------|:----------------------|:-----------------------------------------------------------------|:-----------------------------------------|
| `"Carthage_Destr_1"` | `"Byrsa II B 19.2"` |                                                                  |                                          |
| `"Planier_A_abs"`    | `"Planier A"`         | Parker (1992), p. 315; Corsi-Sciallano and Liou (1985), p. 17-25 | 1-15 CE, Conventional date of shipwreck. |

# Finds

| id          | assoc                 | type                                                      | residual | Reference                                                           | Notes                                                                               |
|:------------|:----------------------|:----------------------------------------------------------|:---------|:--------------------------------------------------------------------|:------------------------------------------------------------------------------------|
| `"id 1"`    | `"Isla Pedrosa"`      | `"AMPH Dressel 1B"`                                       | `TRUE`   | Parker (1992, 217–18)                                               | Parker notes Dr. 1B are hard to reconcile with other ceramics, and may be spurious. |
| `"id 865"`  | `"Rirha US 5154"`     | `"AMPH Dressel 1B"`                                       |          | Callegarin et al. (2016, 40)                                        |                                                                                     |
| `"id 1202"` | `"Madrague de Giens"` | `"AMPH Dressel 1B"`                                       |          | Callegarin et al. (2016, 40); Tchernia (1978);Liou and Pomey (1985) |                                                                                     |
| `"id 1285"` | `"Planier C"`         | `"AMPH Dressel 1B"`                                       |          | Liou and Pomey (1985, 553–56)                                       |                                                                                     |
| `"id 1364"` | `"Cap Béar C"`        | c(`"AMPH Dressel 1B"`, `"AMPH Dressel 1B Tarraconensis")` |          | Liou and Pomey (1985)                                               |                                                                                     |

# Code

``` r
# sequences
seq00001 <- c("Rirha US 5182", "Rirha US 5154") 
seq00002 <- c("Byrsa II B 19.4", "Byrsa II B 19.2")
seq00003 <- c("Rirha US 5154", "Planier A")
seq00004 <- c("El Sec", "Filicudi F", "Tour Fondue", "Cabrera 2", "Tour d'Agnello", "Sanguinaires A", "Lazaret")
seq00005 <- c("Madrague de Giens", "Planier C", "Cap Béar C", "Planier A")
seq00006 <- c("Cabrera 2", "Grand Congloué A", "Lazaret", "Byrsa II B 19.2", "Punta Scaletta", "Isla Pedrosa", "Cavalière", "Madrague de Giens")
seq00007 <- c("Mazotos", "El Sec")
seq00008 <- c("Grand Congloué A", "Héliopolis B", "Punta Scaletta")
contexts_20250628 <- list(seq00001, seq00002, seq00003, seq00004, seq00005, seq00006, seq00007, seq00008)

# external constraints

# tpq
tpq_20250628 <- list()

eratosthenes_rcdates <- read.csv("rc20250628.csv")

library(Bchron)

# calibrate and insert rc dates into tpq
for (i in 1:nrow(eratosthenes_rcdates)) {
    calib <- BchronCalibrate(ages = eratosthenes_rcdates$mu[i],
                             ageSds = eratosthenes_rcdates$sigma[i],
                             calCurves = "intcal20")
    x <- 1950 - sampleAges(calib)
    tpq_20250628[[i]] <- list(id = eratosthenes_rcdates$id[i],
                              assoc = eratosthenes_rcdates$assoc[i],
                              samples = x)
}

# taq
Carthage_Destr_1 <- list(id = "Carthage_Destr_1", assoc = "Byrsa II B 19.2", samples = -146)
Planier_A_abs <- list(id = "Planier_A_abs", assoc = "Planier A", samples = seq(1, 15, length.out = 100))
taq_20250628 <- list(Carthage_Destr_1, Planier_A_abs)

# finds
id1 <- list(id = "id 1", assoc = "Isla Pedrosa", type = "AMPH Dressel 1B", residual = TRUE)
id865 <- list(id = "id 865", assoc = "Rirha US 5154", type = "AMPH Dressel 1B")
id1202 <- list(id = "id 1202", assoc = "Madrague de Giens", type = "AMPH Dressel 1B")
id1285 <- list(id = "id 1285", assoc = "Planier C", type = "AMPH Dressel 1B")
id1364 <- list(id = "id 1364", assoc = "Cap Béar C", type = c("AMPH Dressel 1B", "AMPH Dressel 1B Tarraconensis"))
finds_20250628 <- list(id1, id865, id1202, id1285, id1364)

# save(contexts_20250628, finds_20250628, tpq_20250628, taq_20250628, file = "eda20250628.rda")
```

# Plots for `paper.md` in `eratosthenes`

``` r
# out.width = '100%', fig.height = 6, fig.width = 9

library(eratosthenes)
library(paletteer)

marginals_20250628 <- gibbs_ad(contexts_20250628, tpq = tpq_20250628, taq = taq_20250628)

type_dressel1b_20250628 <- gibbs_ad_type(sequence = contexts_20250628, finds =  finds_20250628, type = "AMPH Dressel 1B", tpq = tpq_20250628, taq = taq_20250628)

histogram(marginals_20250628, events = c("Byrsa II B 19.2", "Rirha US 5154", "Mazotos", "El Sec", "Grand Congloué A", "Cavalière", "Madrague de Giens"), ylim = c(0,0.028), palette = paletteer_d("MetBrewer::Moreau"), opacity = 0.5)

histogram(type_dressel1b_20250628, xlim = c(-300,20), ylim = c(0, 0.010), palette = paletteer_d("MetBrewer::Moreau")[c(7,4,1)], legend = "topleft") 
```

# References

<div id="refs" class="references csl-bib-body hanging-indent">

<div id="ref-callegarin_rirha_2016-2" class="csl-entry">

Callegarin, L., M. Kbiri Alaoui, A. Ichkhakh, and J.-C. Roux, eds. 2016.
*Rirha : <span class="nocase">site</span>
<span class="nocase">antique</span> <span class="nocase">et</span>
<span class="nocase">médiéval</span> <span class="nocase">du</span>
Maroc II. Période <span class="nocase">maurétanienne</span> (Ve
<span class="nocase">siècle</span> <span class="nocase">av.</span>
J.-C. - 40 <span class="nocase">ap.</span> J.-C.)*. Collection de La
Casa de Velázquez 151. Madrid: Casa de Velázquez.

</div>

<div id="ref-cerda_barco_1987-1" class="csl-entry">

Cerdá, D., and A. Arribas, eds. 1987. *El
<span class="nocase">barco</span> <span class="nocase">de</span> El Sec
(Costa de Calviá, Mallorca)*. Mallorca: Ajuntament de Calvià.

</div>

<div id="ref-cibecchini_nuovi_2013" class="csl-entry">

Cibecchini, F., and C. Capelli. 2013. “Nuovi
<span class="nocase">dati</span>
<span class="nocase">archeologici</span> <span class="nocase">e</span>
<span class="nocase">archeometrici</span>
<span class="nocase">sulle</span> <span class="nocase">anfore</span>
<span class="nocase">greco-italiche</span>:
<span class="nocase">i</span> <span class="nocase">relitti</span>
<span class="nocase">di</span> III <span class="nocase">secolo</span>
<span class="nocase">del</span> Mediterraneo
<span class="nocase">occidentale</span> <span class="nocase">e</span>
<span class="nocase">la</span> <span class="nocase">possibilità</span>
<span class="nocase">di</span> <span class="nocase">una</span>
<span class="nocase">nuova</span>
<span class="nocase">classificazione</span>.” In *Itinéraires
<span class="nocase">des</span> <span class="nocase">vins</span>
<span class="nocase">romains</span> <span class="nocase">en</span>
Gaule, IIIe-Ier <span class="nocase">siècles</span>
<span class="nocase">avant</span> J.-C. Confrontation de Faciès*, edited
by F. Olmer, 423–51. Lattes: Monographies d’Archéologie Méditerranéenne.

</div>

<div id="ref-corsi-sciallano_epaves_1985" class="csl-entry">

Corsi-Sciallano, M., and B. Liou. 1985. *Les
<span class="nocase">épaves</span> <span class="nocase">de</span>
Tarraconaise <span class="nocase">à</span>
<span class="nocase">chargement</span>
<span class="nocase">d’amphores</span> Dressel 2-4*. Archaeonautica 5.
Paris: Centre nationale de la recherche scientifique.

</div>

<div id="ref-haslett_simple_2008" class="csl-entry">

Haslett, J., and A. C. Parnell. 2008. “A Simple Monotone Process with
Application to Radiocarbon-Dated Depth Chronologies.” *Journal of the
Royal Statistical Society: Series C (Applied Statistics)* 57: 399–418.
<https://doi.org/10.1111/j.1467-9876.2008.00623.x>.

</div>

<div id="ref-lancel_byrsa_1982" class="csl-entry">

Lancel, S., J.-P. Morel, and J.-P. Thuillier. 1982. *Byrsa II:
<span class="nocase">rapports</span>
<span class="nocase">préliminaires</span>
<span class="nocase">sur</span> <span class="nocase">les</span>
<span class="nocase">fouilles</span> 1977-1978 :
<span class="nocase">niveaux</span> <span class="nocase">et</span>
<span class="nocase">vestiges</span>
<span class="nocase">puniques</span>*. Collection de l’école Française
de Rome. Rome: École française de Rome.

</div>

<div id="ref-liou_recherches_1985" class="csl-entry">

Liou, B., and P. Pomey. 1985. “Recherches
<span class="nocase">archéologiques</span>
<span class="nocase">sous-marines</span>.” *Gallia* 43: 547–76.

</div>

<div id="ref-manning_dating_2022" class="csl-entry">

Manning, S. W., B. Lorentzen, and S. Demesticha. 2022. “Dating
Mediterranean Shipwrecks: The Mazotos Ship, Radiocarbon Dating and the
Need for Independent Chronological Anchors.” *Antiquity* 96: 968–80.

</div>

<div id="ref-parker_ancient_1992" class="csl-entry">

Parker, A. J. 1992. *Ancient Shipwrecks of the Mediterranean and the
Roman Provinces*. BAR International Series 580. Oxford: British
Archaeological Reports.

</div>

<div id="ref-reimer_intcal20_2020" class="csl-entry">

Reimer, P. J., W. E. N. Austin, E. Bard, A. Bayliss, P. G. Blackwell, C.
Bronk Ramsey, M. Butzin, et al. 2020. “The IntCal20 Northern Hemisphere
Radiocarbon Age Calibration Curve (0–55 Cal
<span class="nocase">kBP</span>).” *Radiocarbon* 62: 725–57.
<https://doi.org/10.1017/RDC.2020.41>.

</div>

<div id="ref-sanmarti_grego_cronologiy_1998" class="csl-entry">

Sanmartí Grego, E., and J. Principal-Ponce. 1998. “Cronología
<span class="nocase">y</span> <span class="nocase">evolución</span>
<span class="nocase">tipológica</span> <span class="nocase">de</span>
<span class="nocase">la</span> Campaniense A
<span class="nocase">del</span> <span class="nocase">siglo</span> II
<span class="nocase">aC</span>: Las
<span class="nocase">evidencias</span> <span class="nocase">de</span>
<span class="nocase">los</span> <span class="nocase">pecios</span>
<span class="nocase">y</span> <span class="nocase">de</span>
<span class="nocase">algunos</span>
<span class="nocase">yacimientos</span>
<span class="nocase">históricamente</span> Fechados.” In *Les
<span class="nocase">fàcies</span>
<span class="nocase">ceràmiques</span>
<span class="nocase">d’importació</span> <span class="nocase">del</span>
<span class="nocase">segle</span> III <span class="nocase">aC</span>
<span class="nocase">i</span> <span class="nocase">la</span>
<span class="nocase">primera</span> <span class="nocase">meitat</span>
<span class="nocase">del</span> <span class="nocase">segle</span> II
<span class="nocase">aC</span> <span class="nocase">a</span>
<span class="nocase">la</span> <span class="nocase">costa</span>
<span class="nocase">central</span> <span class="nocase">de</span>
Catalunya*, edited by J. Ramon Torres, J. Sanmartí Grego, D. Asensio
Vilaró, and J. Principal-Ponce, 193–216. Barcelona: Àrea d’Arquelogia -
Universitat de Barcelona.

</div>

<div id="ref-tchernia_lepave_1978" class="csl-entry">

Tchernia, A. 1978. *L’Épave <span class="nocase">romaine</span>
<span class="nocase">de</span> <span class="nocase">la</span> Madrague
<span class="nocase">de</span> Giens (Var),
<span class="nocase">campagnes</span> 1972-1975*. Paris: Centre
nationale de la recherche scientifique.

</div>

</div>
