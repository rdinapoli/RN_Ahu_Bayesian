# RN_Ahu_Bayesian
Chronological models for Rapa Nui (Easter Island) statue platforms (ahu) as presented in:
"DiNapoli RJ, Rieth TM, Lipo CP, Hunt TL (2020) A model-based approach to the tempo of “collapse”: The case of Rapa Nui (Easter Island). _Journal of Archaeological Science_ 116:105094. https://doi.org/10.1016/j.jas.2020.105094


Folder _radiocarbon_data_ contains radiocarbon determinations used for colonization model (Table S1) and ahu sites (Table S2).

Folder _Ahu_Bayesian_OxCal_ contains files for all OxCal models described in the main text and supplementary text.
Specific information for the different files:
- Colonization models: files starting with _RN_Colonization_SL_ are for the colonization model using only short-lived samples. Files starting with _RN_Colonization_Outlier_ are for the colonization model with charcoal outlier analysis. The colonization .prior file necessary for running all other OxCal models is _Start_Colonization.prior_.
- Individual ahu models: Files with just ahu names are the inidivual models for different ahu described in the supplemetary text. Note that _Nau_Nau_v2_ and _Motu_Toremo_Hiva_v2_ are the final models after outliers were removed. For each ahu model there is an associated .prior file that contains the posterior estimate for initial ahu construction. These files are necessary for running the model titled _Ahu_Difference_, which calculates that time-lag between colonization and construction of each ahu, and _Ahu_start_plot_, which plots the colonization estimate and estimate for initial construction of each ahu and is used to make Figure 2 in the main text.
- Tempo plot models: files starting with _ahu_tempo_plot_1838_1868_ are for extracting the raw MCMC output using a cutoff of AD 1838-1868. Files starting with _ahu_tempo_plot_1771_ are for extracting the raw MCMC output using a cutoff of AD 1771.

Folder _Ahu_Bayesian_TempoPlots_ contains raw MCMC output from OxCal in .csv files and R script for running the tempo plots and producing Figure 3. The .csv file _ahu-construction-100k_1838-1868.csv_ is the raw MCMC output for the model using an AD 1838-1868 cutoff, and .csv file _ahu-construction-100k-1771.csv_ is the raw MCMC output for the model using an AD 1771 cutoff. Note that these files are too large to be viewed directly on GitHub and must be downloaded. When downloading these .csv files from GitHub, **ensure that the file extension is .csv**. R script _DiNapoli_etal_ahu_tempo_plots.R_ contains the R code necessary for running the tempo plots and producing Figures 4, 5, and S14-S17.
