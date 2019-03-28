# RN_Ahu_Bayesian
Chronological models for Rapa Nui (Easter Island) statue platforms (ahu).

Folder _radiocarbon_data_ contains radiocarbon determinations used for colonization model (Table S1) and ahu sites (Table S2).

Folder _Ahu_Bayesian_OxCal_ contains .oxcal and .js files for all OxCal models described in the main text and supplementary text.

Folder _Ahu_Bayesian_TempoPlots_ contains raw MCMC output from OxCal in .csv files and R script for running the tempo plots and producing Figure 3. The .csv file _ahu-construction-100k.csv_ is the raw MCMC output for the model using an AD 1848 cutoff, and .csv file _ahu-construction-100l-1771.csv_ is the raw MCMC output for the model using an AD 1771 cutoff. When downloading these .csv files from GitHub, *ensure that the file extension is .csv*. R script _DiNapoli_etal_ahu_tempo_plots.R_ contains the R code necessary for running the tempo plots and producing Figure 3 in the main text and Supplementary Figures S14-S17 in the supplementary text.
