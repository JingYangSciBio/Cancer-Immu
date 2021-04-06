

library(shiny)
library(shinyWidgets)
# library(ggvis)
# library(shinycssloaders)
# library(highcharter)
# 
# 
# library(pacman)
# library(GGally)
# library(cowplot)
# library(broom)
# library(Epi)
# library(jsonlite)
library(shinyjs)
source("waterfall.source.r")
source("CIBERSORT.R")
library(dplyr)
library(plyr)
library(ggvis)
library(survival)
library(shinycssloaders)
library(highcharter)


library(data.table)
library(pacman)
library(plotly)
library(GGally)
library(cowplot)
library(broom)
library(Epi)
library(stringr)
library(varhandle)
library(jsonlite)
library(deconstructSigs)
library(DT)
library(Seurat)
library(ggplot2)
library(gridExtra)
library(grid)
library(tidyr)
library(ggpubr)
library(shinyBS)
library(metaseqR)
library(meta)
#library(htmltools)
#library(shinyalert)
#library(shinycssloaders)

 "%ni%" <- Negate("%in%")
 ##############
 #### browse
 ##############
 

 update_treatment_name <- c("anti-CTLA-4","anti-PD-1/L1","anti-PD-1/L1","anti-PD-1/L1","anti-PD-1/L1+anti-CTLA-4","anti-PD-1/L1+anti-CTLA-4","anti-PD-1/L1+anti-CTLA-4")
 names(update_treatment_name) <- c("anti-CTLA-4","anti-PD-1","anti-PD-L1","anti-PD-1/L1","anti-PD-1+anti-CTLA-4","anti-PD-L1+anti-CTLA-4","anti-PD-1/L1+anti-CTLA-4")
 ## usage: names(update_treatment_name[update_treatment_name %in% c("anti-CTLA-4","anti-PD-1/L1")])
 
 update_data_source_name <- c("Melanoma-Hugo (040 samples)"=
                                "Melanoma-Hugo (040 samples/-+-)",
                              "Melanoma-Riaz (139 samples)"=
                                "Melanoma-Riaz (139 samples/-+-)",
                              "Melanoma-Samstein (320 samples)"=
                                "Melanoma-Samstein (320 samples/+++)",
                              "Melanoma-Snyder-Nathanson (064 samples)"=
                                "Melanoma-Snyder-Nathanson (064 samples/+--)",
                              "Melanoma-Van Allen (112 samples)"=
                                "Melanoma-Van Allen (112 samples/+--)",
                              "Melanoma-Jerby-Arnon-ValCo2 (112 samples)"=
                                "Melanoma-Jerby-Arnon-ValCo2 (112 samples/-+-)",
                              "Melanoma-Auslander (037 samples)"=
                                "Melanoma-Auslander (037 samples/+++)",
                              "Melanoma-Chen (104 samples)"=
                                "Melanoma-Chen (104 samples/++-)",
                              "Melanoma-Gide (091 samples)"=
                                "Melanoma-Gide (091 samples/-++)",
                              "Melanoma-Prat (025 samples)"=
                                "Melanoma-Prat (025 samples/-+-)",
                              "Non-Small Cell Lung Cancer-Hira Rizvi (240 samples)"=
                                "Non-Small Cell Lung Cancer-Hira Rizvi (240 samples/-++)",
                              "Non-Small Cell Lung Cancer-Naiyer Rizvi (035 samples)"=
                                "Non-Small Cell Lung Cancer-Naiyer Rizvi (035 samples/-+-)",
                              "Non-Small Cell Lung Cancer-Samstein (350 samples)"=
                                "Non-Small Cell Lung Cancer-Samstein (350 samples/-++)",
                              "Metastatic Urothelial Cancer-Mariathasan (348 samples)"=
                                "Metastatic Urothelial Cancer-Mariathasan (348 samples/-+-)",
                              "Glioblastoma-Cloughesy (029 samples)"=
                                "Glioblastoma-Cloughesy (029 samples/-+-)",
                              "Renal Cell Carcinoma-Miao (098 samples)"=
                                "Renal Cell Carcinoma-Miao (098 samples/-++)",
                              "Hepatocellular Carcinoma-Harding (031 samples)"=
                                "Hepatocellular Carcinoma-Harding (031 samples/-+-)",
                              "Bladder Cancer-Samstein (215 samples)"=
                                "Bladder Cancer-Samstein (215 samples/-++)",
                              "Breast Cancer-Samstein (044 samples)"=
                                "Breast Cancer-Samstein (044 samples/+++)",
                              "Cancer of Unknown Primary-Samstein (088 samples)"=
                                "Cancer of Unknown Primary-Samstein (088 samples/+++)",
                              "Colorectal Cancer-Le (031 samples)" = 
                                "Colorectal Cancer-Le (031 samples/-+-)",
                              "Colorectal Cancer-Samstein (110 samples)"=
                                "Colorectal Cancer-Samstein (110 samples/+++)",
                              "Esophagogastric Cancer-Samstein (126 samples)"=
                                "Esophagogastric Cancer-Samstein (126 samples/+++)",
                              "Glioma-Samstein (117 samples)"=
                                "Glioma-Samstein (117 samples/-++)",
                              "Head and Neck Cancer-Samstein (139 samples)"=
                                "Head and Neck Cancer-Samstein (139 samples/-++)",
                              "Renal Cell Carcinoma-Samstein (151 samples)"=
                                "Renal Cell Carcinoma-Samstein (151 samples/-++)",
                              "Prostate Cancer-Kwek (022 samples)"=
                                "Prostate Cancer-Kwek (022 samples/+--)",
                              "Gastric Cancer-Kim (061 samples)"=
                                "Gastric Cancer-Kim (061 samples/-+-)",
                              "Basal cell carcinoma-Yost (015 samples)"=
                                "Basal cell carcinoma-Yost (015 samples/-+-)",
                              "Melanoma-Sade_Feldman (048 samples)"=
                                "Melanoma-Sade_Feldman (048 samples/+++)",
                              "Melanoma-Krieg_panel_1 (040 samples)"=
                                "Melanoma-Krieg_panel_1 (040 samples/-+-)",
                              "Melanoma-Krieg_panel_2 (040 samples)"=
                                "Melanoma-Krieg_panel_2 (040 samples/-+-)",
                              "Melanoma-Krieg_panel_3 (039 samples)"=
                                "Melanoma-Krieg_panel_3 (039 samples/-+-)")
 
 meta_analysis_prio_choices <- c( "Melanoma-Hugo (040 samples/-+-)","Melanoma-Riaz (139 samples/-+-)",
                                 "Melanoma-Samstein (320 samples/+++)",
                                 "Melanoma-Snyder-Nathanson (064 samples/+--)",
                                 "Melanoma-Van Allen (112 samples/+--)",
                                 "Melanoma-Jerby-Arnon-ValCo2 (112 samples/-+-)",
                                 "Melanoma-Auslander (037 samples/+++)",
                                 "Melanoma-Chen (104 samples/++-)",
                                 "Melanoma-Gide (091 samples/-++)",
                                 "Melanoma-Prat (025 samples/-+-)",
                                 "Non-Small Cell Lung Cancer-Hira Rizvi (240 samples/-++)",
                                 "Non-Small Cell Lung Cancer-Naiyer Rizvi (035 samples/-+-)",
                                 "Non-Small Cell Lung Cancer-Samstein (350 samples/-++)",
                                 "Metastatic Urothelial Cancer-Mariathasan (348 samples/-+-)",
                                 "Glioblastoma-Cloughesy (029 samples/-+-)",
                                 "Renal Cell Carcinoma-Miao (098 samples/-++)",
                                 "Hepatocellular Carcinoma-Harding (031 samples/-+-)",
                                 "Bladder Cancer-Samstein (215 samples/-++)",
                                 "Breast Cancer-Samstein (044 samples/+++)",
                                 "Cancer of Unknown Primary-Samstein (088 samples/+++)",
                                 "Colorectal Cancer-Samstein (110 samples/+++)",
                                 "Colorectal Cancer-Le (031 samples/-+-)",
                                 "Esophagogastric Cancer-Samstein (126 samples/+++)",
                                 "Glioma-Samstein (117 samples/-++)",
                                 "Head and Neck Cancer-Samstein (139 samples/-++)",
                                 "Renal Cell Carcinoma-Samstein (151 samples/-++)",
                                 "Prostate Cancer-Kwek (022 samples/+--)",
                                 "Gastric Cancer-Kim (061 samples/-+-)",
                                 "Basal cell carcinoma-Yost (015 samples/-+-)")
 meta_analysis_prio_selected_case_study_1 <- c( "Melanoma-Hugo (040 samples/-+-)",
                                                "Melanoma-Riaz (139 samples/-+-)",
                                                "Melanoma-Snyder-Nathanson (064 samples/+--)",
                                                "Melanoma-Van Allen (112 samples/+--)",
                                                #"Melanoma-Jerby-Arnon-ValCo2 (112 samples/-+-)",
                                                "Colorectal Cancer-Le (031 samples/-+-)",
                                                "Metastatic Urothelial Cancer-Mariathasan (348 samples/-+-)",
                                                "Non-Small Cell Lung Cancer-Naiyer Rizvi (035 samples/-+-)")
 meta_analysis_prio_selected_anti_CTLA_4 <- c( "Melanoma-Samstein (320 samples/+++)",
                                               "Melanoma-Snyder-Nathanson (064 samples/+--)",
                                               "Melanoma-Van Allen (112 samples/+--)",
                                               "Melanoma-Auslander (037 samples/+++)",
                                               "Melanoma-Chen (104 samples/++-)",
                                               "Breast Cancer-Samstein (044 samples/+++)",
                                               "Cancer of Unknown Primary-Samstein (088 samples/+++)",
                                               "Colorectal Cancer-Samstein (110 samples/+++)",
                                               "Esophagogastric Cancer-Samstein (126 samples/+++)",
                                               "Prostate Cancer-Kwek (022 samples/+--)")
 meta_analysis_prio_selected_anti_PD_1 <- c( "Melanoma-Hugo (040 samples/-+-)","Melanoma-Riaz (139 samples/-+-)",
                                             "Melanoma-Samstein (320 samples/+++)",
                                             "Melanoma-Jerby-Arnon-ValCo2 (112 samples/-+-)",
                                             "Melanoma-Auslander (037 samples/+++)",
                                             "Melanoma-Chen (104 samples/++-)",
                                             "Melanoma-Gide (091 samples/-++)",
                                             "Melanoma-Prat (025 samples/-+-)",
                                             "Non-Small Cell Lung Cancer-Hira Rizvi (240 samples/-++)",
                                             "Non-Small Cell Lung Cancer-Naiyer Rizvi (035 samples/-+-)",
                                             "Non-Small Cell Lung Cancer-Samstein (350 samples/-++)",
                                             "Metastatic Urothelial Cancer-Mariathasan (348 samples/-+-)",
                                             "Glioblastoma-Cloughesy (029 samples/-+-)",
                                             "Renal Cell Carcinoma-Miao (098 samples/-++)",
                                             "Hepatocellular Carcinoma-Harding (031 samples/-+-)",
                                             "Bladder Cancer-Samstein (215 samples/-++)",
                                             "Breast Cancer-Samstein (044 samples/+++)",
                                             "Cancer of Unknown Primary-Samstein (088 samples/+++)",
                                             "Colorectal Cancer-Samstein (110 samples/+++)",
                                             "Colorectal Cancer-Le (031 samples/-+-)",
                                             "Esophagogastric Cancer-Samstein (126 samples/+++)",
                                             "Glioma-Samstein (117 samples/-++)",
                                             "Head and Neck Cancer-Samstein (139 samples/-++)",
                                             "Renal Cell Carcinoma-Samstein (151 samples/-++)",
                                             "Gastric Cancer-Kim (061 samples/-+-)",
                                             "Basal cell carcinoma-Yost (015 samples/-+-)")
 meta_analysis_prio_selected_before_treatment <- c( "Melanoma-Hugo (040 samples/-+-)","Melanoma-Riaz (139 samples/-+-)",
                                                    "Melanoma-Snyder-Nathanson (064 samples/+--)",
                                                    "Melanoma-Van Allen (112 samples/+--)",
                                                    "Melanoma-Jerby-Arnon-ValCo2 (112 samples/-+-)",
                                                    "Melanoma-Auslander (037 samples/+++)",
                                                    "Melanoma-Chen (104 samples/++-)",
                                                    "Melanoma-Gide (091 samples/-++)",
                                                    "Melanoma-Prat (025 samples/-+-)",
                                                    "Non-Small Cell Lung Cancer-Hira Rizvi (240 samples/-++)",
                                                    "Non-Small Cell Lung Cancer-Naiyer Rizvi (035 samples/-+-)",
                                                    "Non-Small Cell Lung Cancer-Samstein (350 samples/-++)",
                                                    "Metastatic Urothelial Cancer-Mariathasan (348 samples/-+-)",
                                                    "Colorectal Cancer-Le (031 samples/-+-)",
                                                    "Glioblastoma-Cloughesy (029 samples/-+-)",
                                                    "Renal Cell Carcinoma-Miao (098 samples/-++)",
                                                    "Gastric Cancer-Kim (061 samples/-+-)",
                                                    "Basal cell carcinoma-Yost (015 samples/-+-)")
 meta_analysis_prio_selected_after_treatment <- c( "Melanoma-Hugo (040 samples/-+-)","Melanoma-Riaz (139 samples/-+-)",
                                                   "Melanoma-Samstein (320 samples/+++)",
                                                   "Melanoma-Snyder-Nathanson (064 samples/+--)",
                                                   "Melanoma-Auslander (037 samples/+++)",
                                                   "Melanoma-Chen (104 samples/++-)",
                                                   "Melanoma-Gide (091 samples/-++)",
                                                   "Non-Small Cell Lung Cancer-Hira Rizvi (240 samples/-++)",
                                                   "Non-Small Cell Lung Cancer-Naiyer Rizvi (035 samples/-+-)",
                                                   "Non-Small Cell Lung Cancer-Samstein (350 samples/-++)",
                                                   "Bladder Cancer-Samstein (215 samples/-++)",
                                                   "Breast Cancer-Samstein (044 samples/+++)",
                                                   "Cancer of Unknown Primary-Samstein (088 samples/+++)",
                                                   "Colorectal Cancer-Samstein (110 samples/+++)",
                                                   "Esophagogastric Cancer-Samstein (126 samples/+++)",
                                                   "Glioma-Samstein (117 samples/-++)",
                                                   "Head and Neck Cancer-Samstein (139 samples/-++)",
                                                   "Renal Cell Carcinoma-Samstein (151 samples/-++)",
                                                   "Prostate Cancer-Kwek (022 samples/+--)",
                                                   "Basal cell carcinoma-Yost (015 samples/-+-)")
 
 # meta_analysis_prio_precalculated_mutation <- readRDS("meta_analysis_prio_precalculated_mutation.rds")
 # meta_analysis_prio_precalculated_mutation_signature <- readRDS("meta_analysis_prio_precalculated_mutation_signature.rds")
 # meta_analysis_prio_precalculated_expression <- readRDS("meta_analysis_prio_precalculated_expression.rds")
 # meta_analysis_prio_precalculated_cibersort <- readRDS("meta_analysis_prio_precalculated_cibersort.rds")
 meta_analysis_prio_precalculated_mutation <- readRDS("meta_analysis_prio_precalculated_mutation20210307.rds")
 meta_analysis_prio_precalculated_mutation_signature <- readRDS("meta_analysis_prio_precalculated_mutation_signature20210307.rds")
 meta_analysis_prio_precalculated_expression <- readRDS("meta_analysis_prio_precalculated_expression20210307.rds")
 meta_analysis_prio_precalculated_cibersort <- readRDS("meta_analysis_prio_precalculated_cibersort20210307.rds")
 
 pan_cancer_prio_precalculated_mutation <- readRDS("pan_cancer_prio_precalculated_mutation.rds")
 pan_cancer_prio_precalculated_expression <- readRDS("pan_cancer_prio_precalculated_expression.rds")
 
 #browse_prio_mutation <- readRDS("browse_genetic_mutation_20201106.rds")
 # browse_prio_mutation <- readRDS("browse_genetic_mutation_20210303.rds")
 browse_prio_mutation <- readRDS("browse_genetic_mutation_20210307.rds")
 browse_prio_mutation_meta <- readRDS("browse_genetic_mutation_meta_20210303.rds")
 #browse_prio_mutation_meta_p <- readRDS("browse_genetic_mutation_meta_pQ_20210216.rds")
 #browse_prio_mutation_signature <- readRDS("browse_genetic_mutation_signature_20200708.rds")
 #browse_prio_mutation_signature <- readRDS("browse_genetic_mutation_signature_20210216.rds")
 browse_prio_mutation_signature <- readRDS("browse_genetic_mutation_signature_20210307_2.rds")
 #browse_prio_mutation_signature_plot <- readRDS("browse_genetic_mutation_signature_plot_20210105.rds")
 # browse_prio_mutation_signature_plot <- readRDS("browse_genetic_mutation_signature_plot_20210216.rds")
 browse_prio_mutation_signature_plot <- readRDS("browse_genetic_mutation_signature_plot_20210307_2.rds")
 #browse_prio_mutation_signature_meta <- readRDS("browse_genetic_mutation_signature_meta_20210216.rds")
 browse_prio_mutation_signature_meta <- readRDS("browse_genetic_mutation_signature_meta_20210303.rds")
 #browse_prio_mutation_signature_meta_p <- readRDS("browse_genetic_mutation_signature_meta_pQ_20210216.rds")
 #browse_prio_expression <- readRDS("browse_transcriptomic_expression_20201106.rds")
 # browse_prio_expression <- readRDS("browse_transcriptomic_expression_20210105.rds")
 # browse_prio_expression_plot <- readRDS("browse_transcriptomic_expression_plot_20210105_2.rds")
 #browse_prio_expression <- readRDS("browse_transcriptomic_expression_20210202.rds")
 # browse_prio_expression <- readRDS("browse_transcriptomic_expression_20210228.rds")
 browse_prio_expression <- readRDS("browse_transcriptomic_expression_20210307.rds")
 #browse_prio_expression_plot <- readRDS("browse_transcriptomic_expression_plot_20210202_2.rds")
 # browse_prio_expression_plot <- readRDS("browse_transcriptomic_expression_plot_20210228.rds")
 browse_prio_expression_plot <- readRDS("browse_transcriptomic_expression_plot_20210307.rds")
 #browse_prio_expression_meta <- readRDS("browse_transcriptomic_expression_meta_20210228.rds")
 browse_prio_expression_meta <- readRDS("browse_transcriptomic_expression_meta_20210303.rds")
 #browse_prio_expression_meta_p <- readRDS("browse_transcriptomic_expression_meta_pQ_20210216.rds")
 # browse_prio_cibersort <- readRDS("browse_transcriptomic_cibersort_20200708.rds")
 #browse_prio_cibersort <- readRDS("browse_transcriptomic_cibersort_20210203.rds")
 # browse_prio_cibersort <- readRDS("browse_transcriptomic_cibersort_20210216.rds")
 browse_prio_cibersort <- readRDS("browse_transcriptomic_cibersort_20210307.rds")
 #browse_prio_cibersort_plot <- readRDS("browse_transcriptomic_cibersort_plot_20210203.rds")
 # browse_prio_cibersort_plot <- readRDS("browse_transcriptomic_cibersort_plot_20210216.rds")
 browse_prio_cibersort_plot <- readRDS("browse_transcriptomic_cibersort_plot_20210307.rds")
 #browse_prio_cibersort_meta <- readRDS("browse_transcriptomic_cibersort_meta_20210216.rds")
 browse_prio_cibersort_meta <- readRDS("browse_transcriptomic_cibersort_meta_20210303.rds")
 #browse_prio_cibersort_meta_p <- readRDS("browse_transcriptomic_cibersort_meta_pQ_20210216.rds")
 
 
 DNA_damage_response <- c("CHEK1", "CHEK2", "RAD51", "BRCA1", "BRCA2", "MLH1", "MSH2", "ATM", "ATR", "MDC1", "PARP1", "FANCF")
 PDL1_expression_and_PD1_checkpoint_pathway_in_cancer <- c("HIF1A","EGF","EGFR","HRAS","KRAS","NRAS","RAF1","MAP2K1","MAP2K2","MAPK1","MAPK3","FOS","JUN","EML4","ALK","PIK3R1","PIK3R2","PIK3R3","PIK3CA","PIK3CD","PIK3CB","PTEN","AKT1","AKT2","AKT3","MTOR","RPS6KB1","RPS6KB2","CHUK","IKBKB","IKBKG","NFKBIA","NFKBIB","NFKBIE","NFKB1","RELA","IFNG","IFNGR1","IFNGR2","JAK1","JAK2","STAT1","STAT3","TLR2","TLR4","TLR9","TIRAP","MYD88","TRAF6","NFATC1","NFATC2","NFATC3","TICAM1","TICAM2","CD274","PDCD1","PTPN6","PTPN11","BATF3","BATF","BATF2","CSNK2A1","CSNK2A2","CSNK2A3","CSNK2B","CD4","LCK","CD3E","CD3G","CD247","CD3D","ZAP70","MAP3K3","MAP2K3","MAP2K6","MAPK11","MAPK12","MAPK13","MAPK14","LAT","PLCG1","PPP3CA","PPP3CB","PPP3CC","PPP3R1","PPP3R2","RASGRP1","CD28","PRKCQ")
 T_cell_receptor_signaling_pathway <- c("CD3D","CD3E","CD3G","CD247","CD4 ","CD8A","CD8B","CD8B2","PTPRC","LCK ","FYN ","ZAP70","LCP2","LAT ","ITK ","TEC ","NCK1","NCK2","VAV3","VAV1","VAV2","GRAP2","GRB2","PAK1","PAK2","PAK3","PAK4","PAK5","PAK6","BUB1B-PAK6","RHOA","CDC42","DLG1","MAPK11","MAPK12","MAPK13","MAPK14","PLCG1","PPP3CA","PPP3CB","PPP3CC","PPP3R1","PPP3R2","NFATC1","NFATC2","NFATC3","SOS1","SOS2","RASGRP1","HRAS","KRAS","NRAS","RAF1","MAP2K1","MAP2K2","MAPK1","MAPK3","FOS ","JUN ","PRKCQ","CARD11","BCL10","MALT1","MAP3K7","MAP2K7","MAPK8","MAPK10","MAPK9","CHUK","IKBKB","IKBKG","NFKB1","RELA","NFKBIA","NFKBIB","NFKBIE","CD28","ICOS","CD40LG","PIK3R1","PIK3R2","PIK3R3","PIK3CA","PIK3CD","PIK3CB","PDPK1","AKT1","AKT2","AKT3","MAP3K8","MAP3K14","GSK3B","PDCD1","CTLA4","PTPN6","CBLB","IL2","IL4","IL5","IL10","IFNG","CSF2","TNF","CDK4")
 B_cell_receptor_signaling_pathway <- c("IGH","CD79A","CD79B","LYN","SYK","BTK","DAPP1","BLNK","VAV3","VAV1","VAV2","RAC1","RAC2","RAC3","PLCG2","PPP3CA","PPP3CB","PPP3CC","PPP3R1","PPP3R2","NFATC1","NFATC2","NFATC3","GRB2","SOS1","SOS2","RASGRP3","HRAS","KRAS","NRAS","RAF1","MAP2K1","MAP2K2","MAPK1","MAPK3","FOS","JUN","PRKCB","CARD11","BCL10","MALT1","CHUK","IKBKB","IKBKG","NFKB1","RELA","NFKBIA","NFKBIB","NFKBIE","IFITM1","CD81","CD19","CR2","PIK3R1","PIK3R2","PIK3R3","PIK3CA","PIK3CD","PIK3CB","AKT1","AKT2","AKT3","GSK3B","FCGR2B","INPP5D","INPPL1","LILRB2","LILRB1","LILRB5","LILRB4","LILRA1","LILRB3","LILRA3","LILRA2","LILRA4","LILRA6","LILRA5","CD22","CD72","PTPN6","PIK3AP1")
 Cell_cycle_control <- c("RB1","RBL1","RBL2","CCNA1","CCNB1","CDK1","CCNE1","CDK2","CDC25A","CCND1","CDK4","CDK6","CCND2","CDKN2A","CDKN2B","MYC","CDKN1A","CDKN1B","E2F1","E2F2","E2F3","E2F4","E2F5","E2F6","E2F7","E2F8","SRC","JAK1","JAK2","STAT1","STAT2","STAT3","STAT5A","STAT5B")
 Survival_cell_death_regulation_signaling <- c("NFKB1","NFKB2","CHUK","DIRAS3","FAS","HLA-G","BAD","BCL2","BCL2L1","APAF1","CASP9","CASP8","CASP10","CASP3","CASP6","CASP7","GSK3B","ARL11","WWOX","PEG3","TGFB1","TGFBR1","TGFBR2")
 
 #database.test <- readRDS("cancer_immu_database_20210105.rds")
 #database.test <- readRDS("cancer_immu_database_20210202.rds")
 # database.test <- readRDS("cancer_immu_database_20210307.rds")
 database.test <- readRDS("cancer_immu_database_20210317.rds")
 #database.test.batchcorrected <- readRDS("cancer_immu_database_batchcorrected_20210307.rds")
 database.test.batchcorrected <- readRDS("cancer_immu_database_batchcorrected_20210317.rds")
 #database.test <- readRDS("cancer_immu_database_20200812.rds")
 #database.test <- readRDS("finishe2.TCGA.rds")
 #all.mutations <- readRDS("cancer_immu_mutations_20201106.rds")
 all.mutations <- readRDS("cancer_immu_mutations_20210303.rds")
 #all.mutations <- readRDS("cancer_immu_mutations_20210105.rds")
 #all.mutations.pan.cancer <- readRDS("cancer_immu_mutations_20200121.rds")
 #all.mutations.pan.cancer <- readRDS("cancer_immu_mutations_pan_cancer_20201106.rds")
 # all.mutations.pan.cancer <- readRDS("cancer_immu_mutations_pan_cancer_20210228.rds")
 all.mutations.pan.cancer <- readRDS("cancer_immu_mutations_pan_cancer_20210307.rds")
 #all.mutations.pan.cancer <- readRDS("cancer_immu_mutations_pan_cancer_20210105.rds")
 #load("start.tablebubian.RData")
 #start.table <- readRDS("cancer_immu_start.table_20191211.rds")
 #start.table <- readRDS("cancer_immu_start.table_20201001.rds")
 #start.table <- readRDS("cancer_immu_start.table_20201106.rds")
 # start.table <- readRDS("cancer_immu_start.table_20210105.rds")
 #start.table <- readRDS("cancer_immu_start.table_20210202.rds")
 #start.table <- readRDS("cancer_immu_start.table_20210210.rds")
 # start.table <- readRDS("cancer_immu_start.table_20210303.rds")
 start.table <- readRDS("cancer_immu_start.table_20210307.rds")
 
 
 ### For single-cell
 
 single_cell_gene_gene <- readRDS("single_cell_gene_gene.rds")
 Melanoma_Sade_Feldman <- readRDS("Melanoma_Sade_Feldman_20210228.rds")
 Melanoma_Krieg_panel_1 <- readRDS("Melanoma_Krieg_panel_1_20210228.rds")
 Melanoma_Krieg_panel_2 <- readRDS("Melanoma_Krieg_panel_2_20210228.rds")
 Melanoma_Krieg_panel_3 <- readRDS("Melanoma_Krieg_panel_3_20210228.rds")
 single_cell_gene_cell_matrix <- list("Melanoma-Sade_Feldman"=Melanoma_Sade_Feldman,
                                      "Melanoma-Krieg_panel_1"=Melanoma_Krieg_panel_1,
                                      "Melanoma-Krieg_panel_2"=Melanoma_Krieg_panel_2,
                                      "Melanoma-Krieg_panel_3"=Melanoma_Krieg_panel_3)
 
 Melanoma_marker_Sade_Feldman <- readRDS("Sade_Feldman_markers_20210228.rds")
 Melanoma_marker_Krieg_panel_1 <- readRDS("Krieg_panel_1_markers_20210228.rds")
 Melanoma_marker_Krieg_panel_2 <- readRDS("Krieg_panel_2_markers_20210228.rds")
 Melanoma_marker_Krieg_panel_3 <- readRDS("Krieg_panel_3_markers_20210228.rds")
 
 single_cell_cell_marker_gene <- list("Melanoma-Sade_Feldman"=Melanoma_marker_Sade_Feldman,
                                      "Melanoma-Krieg_panel_1"=Melanoma_marker_Krieg_panel_1,
                                      "Melanoma-Krieg_panel_2"=Melanoma_marker_Krieg_panel_2,
                                      "Melanoma-Krieg_panel_3"=Melanoma_marker_Krieg_panel_2)
 
 Melanoma_Sade_Feldman_datatable <- readRDS("Melanoma_Sade_Feldman_datatable_20210228.rds")
 Melanoma_Krieg_panel_1_datatable <- readRDS("Melanoma_Krieg_panel_1_datatable_20210228.rds")
 Melanoma_Krieg_panel_2_datatable <- readRDS("Melanoma_Krieg_panel_2_datatable_20210228.rds")
 Melanoma_Krieg_panel_3_datatable <- readRDS("Melanoma_Krieg_panel_3_datatable_20210228.rds")
 single_cell_cell_tSNEname <- list("Melanoma-Sade_Feldman"="Sade_Feldman_tSNE_legend.png",
                                   "Melanoma-Krieg_panel_1"="Krieg_panel_1_tSNE_legend.png",
                                   "Melanoma-Krieg_panel_2"="Krieg_panel_2_tSNE_legend.png",
                                   "Melanoma-Krieg_panel_3"="Krieg_panel_3_tSNE_legend.png")
 single_cell_cell_markername <- list("Melanoma-Sade_Feldman"="Sade_Feldman_marker_genes.png",
                                     "Melanoma-Krieg_panel_1"="Krieg_panel_1_marker_genes.png",
                                     "Melanoma-Krieg_panel_2"="Krieg_panel_2_marker_genes.png",
                                     "Melanoma-Krieg_panel_3"="Krieg_panel_3_marker_genes.png")
 single_cell_cell_markertablename <- list("Melanoma-Sade_Feldman"=Melanoma_Sade_Feldman_datatable,
                                          "Melanoma-Krieg_panel_1"=Melanoma_Krieg_panel_1_datatable,
                                          "Melanoma-Krieg_panel_2"=Melanoma_Krieg_panel_2_datatable,
                                          "Melanoma-Krieg_panel_3"=Melanoma_Krieg_panel_3_datatable)
 
 
 single_cell_cell_cell <- list("Melanoma-Sade_Feldman"=c("C00 (FOXP3+,TNFRSF4+,CCR4+,TNFRSF18+)",
                                                         "C01 (VCAM1+,CCL5+,CXCR6+,AC069363.1+)",
                                                         "C02 (TRDC+,GNLY+,TRGC1+,SPON2+)",
                                                         "C03 (MPZL3+,ANXA1+,AIM1+,ELL2+)",
                                                         "C04 (IGHD+,VPREB3+,CD19+,PAX5+)",
                                                         "C05 (TCF7+,HSP90AB2P+,PCSK5+,AC159540.1+)",
                                                         "C06 (TNFRSF9+,CDCA7+,MCM5+,MPV17L+)",
                                                         "C07 (APOBEC3A+,LGALS2+,CLEC10A+,FCN1+)",
                                                         "C08 (UBE2C+,AURKB+,HJURP+,PBK+)",
                                                         "C09 (AC092484.1+,RP11-1008C21.1+,SEPP1+,MT1H+)",
                                                         "C10 (IGHA2+,IGHG4+,IGHG1+,IGKV3D-11+)",
                                                         "C11 (LILRA4+,CLEC4C+,KRT5+,PR11-71G12.1+)"),
                               "Melanoma-Krieg_panel_1"=c("C00 (CD28+,CD4+,CD127+)",
                                                          "C01 (CD8a+)",
                                                          "C02 (HLA-DR+)",
                                                          "C03 (CD4+)",
                                                          "C04 (CD16+,CD56+,CD57+)",
                                                          "C05 (CD19+,CCR6+,HLA-DR+)",
                                                          "C06 (CD57+,CD8a+,Granzyme-B+)",
                                                          "C07 (CCR7+,CD27+,CD4+)",
                                                          "C08 (CXCR-3+)",
                                                          "C09 (HLA-DR+,CTLA4+)",
                                                          "C10 (CD57+,Granzyme-B+,CD4+,CD56+)",
                                                          "C11 (TCRgd+)",
                                                          "C12 (CD8a+,CCR7+)",
                                                          "C13 (CD19+,CCR6+,BTLA+,HLA-DR+)",
                                                          "C14 (CD69+,CCR4+)",
                                                          "C15 (CD16+,CD56+,CD27+)",
                                                          "C16 (TCRgd+,PD-1+,LAG-3+,BTLA+)",
                                                          "C17 (HLA-DR+,Granzyme-B+,CD62L+)"),
                               "Melanoma-Krieg_panel_2"=c("C00 (CD8a+)",
                                                          "C01 (CD28+,CD127+,CCR7+,CD4+)",
                                                          "C02 (CD8a-)",
                                                          "C03 (IL-4-)",
                                                          "C04 (CD19+,CD45RA+)",
                                                          "C05 (IL-2+,TNF-a+)",
                                                          "C06 (CD56+,Granzyme-B+)",
                                                          "C07 (IFN-g+,CD8a+,TNF-a+)",
                                                          "C08 (IL-4-,CD28-,CD127-,CD3-)",
                                                          "C09 (CD8a+)",
                                                          "C10 (IL-4+)",
                                                          "C11 (CD27+)",
                                                          "C12 (TCRgd+,PD-1+,CD69+)",
                                                          "C13 (IL-13+,IL-2+,TNF-a+,CD25+)",
                                                          "C14 (CD19+,CD27+,CD45RA+)"),
                               "Melanoma-Krieg_panel_3"=c("C00 (CD123+,CD86+,HLA-DR+,CD11c+,ICAM-1+)",
                                                          "C01 (CD11b+,CD274-PDL1-)",
                                                          "C02 (ICAM-1-,CD11c-,CD11b-)",
                                                          "C03 (CD66b+,CD14+,ICAM-1+)",
                                                          "C04 (CD16+,CD56+,CD7+,CD38+)",
                                                          "C05 (CD14+,CD274-PDL1+,CD141+,CDICAM-1+)",
                                                          "C06 (CD209+)",
                                                          "C07 (CD14-,ICAM-1-,CD45-)",
                                                          "C08 (CD62L+,CD11b-)",
                                                          "C09 (CD1c+,CD86+,HLA-DR+,CD11c+)",
                                                          "C10 (CD66b+)",
                                                          "C11 (CD62L+,CD123+,CD303+)"))


 
