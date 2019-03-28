# This is an R script for running the tempo plots shown in:
# DiNapoli et al. "The continuous hisory of monumentality on Rapa Nui (Easter Island)"


#Load packages
#Make sure packages are installed.
library(ArchaeoPhases)
library(ggplot2)

#Import raw MCMC output from OxCal
#Make sure R is connected to the current working directory.
#This initial plot is using an AD 1948 cutoff (Figure 3 and Figure S15).
events <- "ahu-construction-100k.csv"

#Convert to ArchaeoPhases format.
ahu_construction <- ImportCSV(events, iterationColumn = 1)

#Get column numbers and names for the events of interest
colnames(ahu_construction)

#Create index vector for events of interest
#Here we use the start, TAQ, and end boundaries for ahu
ahu_index <-c(4,5,7,11,12,14,18,19,22,27,31,34,50,51,59,60,62,64,68,70,73,78,79,81,85,86,89,98,99,105,108,110)

#Run tempo plot using an AD 1848 cutoff
#All tempo plots shown with 95% Bayesian credible intervals.
#Here plot is set to be only black and white.
#Note that this produces Figure 3 of the main text and Figure S14 of the supplementary text.
theme_set(theme_bw())
TP1 <- TempoPlot(ahu_construction, ahu_index, title = "", level=0.95, colors = F, height = 3.5, 
                 width = 7.8, x.label = "cal. Years AD", x.min=1200, x.max=1900, 
                 y.label="Cumulative Events", caption = NULL, x.scale = "calendar", newWindow = F)

#Compare results of using an AD 1848 cutoff with a cutoff of AD 1771
##Import raw MCMC output for AD 1771 model and convert to ArchaeoPhases format
events_1771 <- "ahu-construction-100k-1771.csv"
ahu_construction_1771 <- ImportCSV(events_1771, iterationColumn = 1)
##Run tempo plot for AD 1771 cutoff
#Note that this produced Figure S15 of the supplementary text.
TP2 <- TempoPlot(ahu_construction_1771, ahu_index, title = "1771 Cutoff", level=0.95, colors = F, 
                 height = 3.5, width = 7.8, x.label = "cal. Years AD", x.min=1200, x.max=1900, 
                 y.label="Cumulative Events", caption = NULL, x.scale = "calendar", newWindow = F)
##compare with AD 1848 cutoff
TP1 <- TempoPlot(ahu_construction, ahu_index, title = "1848 Cutoff", level=0.95, colors = F, height = 3.5, 
                 width = 7.8, x.label = "cal. Years AD", x.min=1200, x.max=1900, 
                 y.label="Cumulative Events", caption = NULL, x.scale = "calendar", newWindow = F)

##Run tempo activity plots for both cutoff dates
#Note that these plots show the first derivative of the tempo plot curve and produce Figures S16 and S17 of the supplementary text.
TempoActivityPlot(ahu_construction, ahu_index,
                  title = "1848 Cutoff", level=0.95, height = 3.5,
                  width = 7.8, x.label = "cal. Years AD", x.min=1200, x.max=1900, y.label="Activity",
                  caption = NULL, x.scale = "calendar", newWindow = F)
TempoActivityPlot(ahu_construction_1771, ahu_index,
                  title = "1771 Cutoff", level=0.95, height = 3.5,
                  width = 7.8, x.label = "cal. Years AD", x.min=1200, x.max=1900, y.label="Activity",
                  caption = NULL, x.scale = "calendar", newWindow = F)

