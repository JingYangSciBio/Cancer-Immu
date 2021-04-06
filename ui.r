

shinyUI(fluidPage(
#      includeScript("script.js"),
      useShinyjs(),
      #useShinyalert(),
      inlineCSS("loading.css"),
      tags$script("Shiny.addCustomMessageHandler('resetInputValue', function(variableName){
                Shiny.onInputChange(variableName, null);
                });
                "),
      tags$head(tags$style("
                  #container * {display: inline;}")),
      div(class = "topbar", style="height: 6px;
                                  background: transparent linear-gradient(to right, #7CDBD5 0%, #DCB239 100%) repeat scroll 0% 0%;
                                  margin-left: -15px;
                                  margin-right: -15px;"),
      fluidRow(column(width=3,a(img(src="log-cancer-immu.png",style="margin-left: 30px;margin-top:30px"),href="http://bioinfo.vanderbilt.edu/database/Cancer-Immu/")
                      ,style="height:250px"),
               # column(width=9,p("Cancer immunotherapy-related",style="text-align:right;color:green;font-family:Impact;font-size:40px"),
               #        p("multi-dimensional",style="text-align:right;color:green;font-family:Impact;font-size:40px"),
               #        p("genomic portal",style="text-align:right;color:green;font-family:Impact;font-size:40px"),
               #        style="margin-top:20px;height:250px")
               column(width=9,p("Immuno-genomic atlas for",style="text-align:right;color:green;font-family:Impact;font-size:40px"),
                      p("immune checkpoint blockade-based",style="text-align:right;color:green;font-family:Impact;font-size:40px"),
                      p("cancer immunotherapy",style="text-align:right;color:green;font-family:Impact;font-size:40px"),
                      style="margin-top:20px;height:250px")
               
               ),
#      a(img(src="log-20190722.png",style="margin-left: 30px;margin-top:30px"),href="http://bioinfo.vanderbilt.edu/database/Immu-Mela/"),
      #      a(img(src="log-cancer-immu.png",style="margin-left: 30px;margin-top:30px"),href="http://bioinfo.vanderbilt.edu/database/Cancer-Immu/"),
      tags$style(HTML("
        hr {border-top: 1px solid #000000;}
        .tabbable > .nav {margin-left: 400px; margin-right: 50px;
                        border-color: transparent;
                        margin-bottom: 30px;
                        color:#DCB239}
       .tabbable > .nav > li {width:auto; }
       .tabbable > .nav > li > a {
                                  font-family: 'Segoe UI', Helvetica, Arial, sans-serif;
                                  font-size: 30px;
                                  border-color: transparent;
                                  border-image: linear-gradient(to right, #7CDBD5 0%, #7CDBD5 100%) 1 1 stretch;
                                                border-image-width: 2 2 2 2;
                                  color: black}
       .tabbable > .nav > li[class=active] > a {background-color: transparent; 
                                                border-color: transparent;
                                                font-size: 30px;
                                                border-image: linear-gradient(to right, #DCB239 0%, #DCB239 100%) 1 1 stretch;
                                                border-image-width: 2 2 2 2;
                                                color: #DCB239}
       .tabbable > .nav > li:hover {background-color: transparent; 
                                   border-color: transparent;
                                   font-size: 30px; 
                                   border-image: linear-gradient(to right, #DCB239 0%, #DCB239 100%) 1 1 stretch;
                                   border-image-width: 0 0 0 0;
                                   color: #DCB239}
       .dropdown-menu > li >a {
                                  font-family: 'Segoe UI', Helvetica, Arial, sans-serif;
                                  font-size: 20px;
                                  border-color: transparent;
                                  color: black}
       .tabbable > .nav > li.active > a, 
       .dropdown-menu > li.active > a{color: inherit; 
                                      background-color: inherit;
                                      font-size: 30px;
                                      border-image: linear-gradient(to right, #DCB239 0%, #DCB239 100%) 1 1 stretch;
                                      border-image-width: 2 2 2 2;}
       .dropdown-menu > li > a:hover {color: inherit;
                                      background-color: inherit;
                                      font-size: 25px;
                                      text-decoration: underline;
                                      border-image: linear-gradient(to right, #DCB239 0%, #DCB239 100%) 1 1 stretch;
                                      border-image-width: 0 0 0 0;}
       .dropdown-header {font-size:25px;
                        }
                                      
       
       .tabbable > .nav >.dropdown-menu > .active > a, 
       .tabbable > .nav >.dropdown-menu > .active > a:focus {color: inherit;font-size: 25px;
                                           background-color: inherit;
                                           text-decoration: underline;border-image: linear-gradient(to right, #BFD8D2 0%, #DCB239 100%) 1 1 stretch;
                                           border-image-width: 2 2 2 2;}
        .tabbable > .nav >.dropdown-menu > .active > a:hover {color: inherit;font-size: 25px;
                                           background-color: inherit;
                                            text-decoration: underline;border-image: linear-gradient(to right, #BFD8D2 0%, #DCB239 100%) 1 1 stretch;
                                            border-image-width: 2 2 2 2;}

       div.intro-divider {
                    height: 6px;
                    background: transparent linear-gradient(to right, #7CDBD5 0%, #DCB239 100%) repeat scroll 0% 0%;
                    margin-top: 20px;
                    margin-bottom: 20px;
                    margin-left: 275px;
                    margin-right: 275px;}
      div.intro-intro-divider {
                    height: 2px;
                    background: transparent linear-gradient(to right, lightgrey 0%, lightgrey 100%) repeat scroll 0% 0%;
                    margin-top: 20px;
                    margin-bottom: 20px;
                    margin-left: 275px;
                    margin-right: 275px;}
        div.start_go_still {
        position: fixed;overflow: visible;
        }
        .shiny-notification {
        position:fixed;bottom:1%;left:34.4%;right:1.5%;
        background-color: #47b8e0;color: white; font-size: 15px;
        }
        div.intro-divider-sub {
                   height: 5px;
                    background: transparent linear-gradient(to right, #7CDBD5 0%, #DCB239 100%) repeat scroll 0% 0%;
                    margin-top: 20px;
                    margin-bottom: 20px;
                    margin-left: 15px;
                    margin-right: 15px;}
       .col-sm-8 > .tabbable > .nav {margin-left: 0px; 
                                    font-size: 10px;
                                    margin-bottom: 20px;
                                    border-color: transparent;}
       .col-sm-8 > .tabbable > .nav  > li > a {font-size: 19px;} ### size of Summary,Immunotherapy response,Overall survival,Progression free survival
        div.container {display: inline;}
        .selectize-dropdown [data-value=ALL] { color: red }
        .modal-lg {width:75%;}
        div.vertical-feature {
          writing-mode: vertical-lr;
          text-orientation: mixed
        }
        
    ")),
#  div(id="loading-content",h2("Loading..."),style="text-align:center"),
  div(id="loading-content",tags$img(src="spinner.gif"),style="text-align:center"),
  hidden(div(id="app-content",tabsetPanel(
    id="main_tabs",
    tabPanel ("Start",
              div(class = "topbar", style="height: 6px;
                                  background: transparent linear-gradient(to right, #7CDBD5 0%, #DCB239 100%) repeat scroll 0% 0%;
                                  margin-left: -15px;
                                  margin-right: -15px;
                                  margin-bottom:20px"),
#               fluidRow(column(width=12,div(searchInput(inputId = "search", label = "Quick start",placeholder = "Anything. For example, 'PDCD1', 'Melanoma', 'TMB', or 'T cell' etc. ",btnSearch = icon("search"),btnReset = icon("remove"),width = "750px"),
#                                           style="font-size:20px;margin-top:20px;margin-bottom:20px;margin-left: 550px;margin-right: 550px;align:center"),
#                                        bsModal("quick_start_results","Results", "search_search", size = "large", uiOutput("quick_start_ui"))
# #                              a(href='#',onclick="$('.close').click();",'click to open the model')
#                               ,style="background-color:#7CDBD5; height:180px")),
# 
# #               div(img(src='background3.jpg'),style="background: url('background3.jpg');
# # 			                                     background-repeat: repeat;
# #                                           background-size: auto;
# #                                           margin-left: -15px;
# #                                           margin-right: -15px;
# #                                           margin-top: 20px;
# #                                           margin-bottom: 20px;
# #                                           height: inherit;"),
# 
#         fluidRow(column(width=1,h4("Genetic",style="text-align:center;margin-top:110px;"),#div(actionButton("genetic_browse","Explore",style="background-color: lightblue"),style="text-align:right;"),
#                         style="background-color:#FEDCD2; height:300px;border-style:solid;border-color:#DF744A;"),
#                  column(width=10,offset = 1,
#                         fluidRow(column(6,h3("Mutation:",style="text-align:left;margin-top:25px"),h4("nonsynonymous/frameshift/splicing mutations",style="text-align:left;"),div(actionButton("mutation_feature","Launch this feature",style="background-color: #7CDBD5"),style="text-align:right;margin-bottom:20px"),style="background-color:#FEDCD2; border-style:solid;border-color:white;"),
#                                  column(6,h3("Mutation loads/burden:",style="text-align:left;margin-top:25px"),h4("mutation numbers (per MB)",style="text-align:left;"),div(actionButton("mutation_loads_feature","Launch this feature",style="background-color: #7CDBD5"),style="text-align:right;margin-bottom:20px"),style="background-color:#FEDCD2; border-style:solid;border-color:white"),
#                                  style="height:150px"),
#                         fluidRow(column(6,h3("Mutational signatures:",style="text-align:left;margin-top:25px"),h4("30 mutational signatures from", a("Alexandrov", href="https://www.ncbi.nlm.nih.gov/pubmed/23945592"),style="text-align:left;"),div(actionButton("mutation_signature_feature","Launch this feature",style="background-color: #7CDBD5"),style="text-align:right;margin-bottom:20px"),style="background-color:#FEDCD2; border-style:solid;border-color:white"),
#                                  style="height:150px,margin-top:-10px"),
#                        style="height:300px"),
#                  style="margin-left:275px;margin-right:275px;margin-top:10px;margin-bottom:30px"),
#         div(class="intro-intro-divider"),
#         fluidRow(column(width=1,h4("Transcript-omic",style="text-align:center;margin-top:110px"),#div(actionButton("transcriptomic_browse","Explore",style="background-color: lightblue"),style="text-align:right;"),
#                         style="background-color:#FEDCD2; height:300px;border-style:solid;border-color:#DF744A;"),
#                 column(width=10,offset = 1,
#                         fluidRow(column(6,h3("Expression:",style="text-align:left;margin-top:25px"),h4("individual gene expression",style="text-align:left;"),div(actionButton("expression_feature","Launch this feature",style="background-color: #7CDBD5"),style="text-align:right;margin-bottom:20px"),style="background-color:#FEDCD2; border-style:solid;border-color:white"),
#                                 column(6,h3("Expression sum:",style="text-align:left;margin-top:25px"),h4("expression sum of gene set",style="text-align:left;"),div(actionButton("expression_sum_feature","Launch this feature",style="background-color: #7CDBD5"),style="text-align:right;margin-bottom:20px"),style="background-color:#FEDCD2; border-style:solid;border-color:white"),
#                                 style="height:150px"),
#                         fluidRow(column(6,h3("Expression relation pairs:",style="text-align:left;margin-top:25px"),h4("expression relations of gene pairs",style="text-align:left;"),div(actionButton("expression_pairs_feature","Launch this feature",style="background-color: #7CDBD5"),style="text-align:right;margin-bottom:20px"),style="background-color:#FEDCD2; border-style:solid;border-color:white"),
#                                  column(6,h3("Immune cell components:",style="text-align:left;margin-top:25px"),h4("22 tumor infiltration immune cells from", a("CIBERSORT", href="https://www.ncbi.nlm.nih.gov/pubmed/25822800"),style="text-align:left;"),div(actionButton("cibersort_feature","Launch this feature",style="background-color: #7CDBD5"),style="text-align:right;margin-bottom:20px"),style="background-color:#FEDCD2; border-style:solid;border-color:white"),
#                                 style="height:150px,margin-top:-10px"),
#                         style="height:300px"),
#                 style="margin-left:275px;margin-right:275px;margin-top:10px;margin-bottom:30px"),
#         div(class="intro-intro-divider"),        
#         fluidRow(column(width=1,h4("Single-cell",style="text-align:center;margin-top:40px"),#div(actionButton("single_cell_browse","Explore",style="background-color: lightblue"),style="text-align:right;"),
#                         style="background-color:#FEDCD2; height:150px;border-style:solid;border-color:#DF744A;"),
#                 column(width=10,offset = 1,
#                         fluidRow(column(6,h3("Gene expression:",style="text-align:left;margin-top:25px"),h4("individual gene expression in each cell",style="text-align:left;"),div(actionButton("single_cell_gene_feature","Launch this feature",style="background-color: #7CDBD5"),style="text-align:right;margin-bottom:20px"),style="background-color:#FEDCD2; border-style:solid;border-color:white"),
#                                  column(6,h3("Cell populations:",style="text-align:left;margin-top:25px"),h4("specific cell population",style="text-align:left;"),div(actionButton("single_cell_cell_feature","Launch this feature",style="background-color: #7CDBD5"),style="text-align:right;margin-bottom:20px"),style="background-color:#FEDCD2; border-style:solid;border-color:white"),
#                                  style="height:150px"),
#                         style="height:150px"),
#                 style="margin-left:275px;margin-right:275px;margin-top:10px;margin-bottom:10px"),
#         div(class="intro-intro-divider"),
#         fluidRow(column(width=1,h4("Integration",style="text-align:center;margin-top:60px"),
#                         style="background-color:#FEDCD2; height:150px;border-style:solid;border-color:#DF744A;"),
#                 column(width=10,offset = 1,
#                         fluidRow(column(6,h3("Integration:",style="text-align:left;margin-top:25px"),h4("integration of genetic and/or transcriptomic features",style="text-align:left;"),div(actionButton("multi_dimensions_feature","Launch this feature",style="background-color: #7CDBD5"),style="text-align:right;margin-bottom:20px"),style="background-color:#FEDCD2; border-style:solid;border-color:white"),
#                                 style="height:150px"),
#                         style="height:150px"),
#                 style="margin-left:275px;margin-right:275px;margin-top:10px;margin-bottom:30px"),
        # div(class="intro-divider"),
# p ("Cancer-Immu is an open-access resource for exploring associations between 
# onco-immunological genomic data and immunophenotype and thus reveals some important biological 
# conclusions with implications for ICB-based immunotherapy. 
# The Cancer-Immu currently contains 3160 samples with both ICB response 
# outcome and genomic profiling by either bulk sequencing or single-cell technologies. 
# 
# Each genomic profiling provides multiple types of features, including the known or novel signatures predictive 
# of immunotherapy response. Genetic level is comprised of mutation, mutational loads/burden and mutational signature. 
#            Transcriptomic level includes expression, expression sum, expression relation pairs and immune cell components. 
#            Single-cell level provides gene/protein expression and specific cell population.
# 
# Cancer-Immu provides three interactive modules for signatures prioritization, specific signature assessment, 
# and pan-cancer study. 
# Signatures prioritization module explores the distribution of associations between signatures and ICB response and ranks signatures based on the consensus of significance across cohorts. 
# Specific signature assessment module checks three types of associations: 
# I) the association between signature and ICB response, 
# II) the association between signature and overall survival (OS) 
# and III) the association between signature and progression free survival (PFS).
# Pan-cancer study module combines samples which come from different cohorts as a pan-cancer cohort 
# and checks the distribution of the associations between signature and ICB response within pan-cancer cohort.
# ",
#    style="font-size:20px;
#            margin-left: 275px;
#            margin-right: 275px;"),
        p ("Cancer-Immu is an open-access resource for exploring associations between 
onco-immunological genomic data and immunophenotype and thus reveals some important biological 
conclusions with implications for ICB-based immunotherapy. 
The Cancer-Immu currently contains 3508 samples with both ICB response 
outcome and genomic profiling by either bulk sequencing or single-cell technologies. 

Each genomic profiling provides multiple types of features, including the known or novel signatures predictive 
of immunotherapy response. Genetic level is comprised of mutation, mutational loads/burden and mutational signature. 
           Transcriptomic level includes expression, expression sum, expression relation pairs and immune cell components. 
           Single-cell level provides gene/protein expression and specific cell population.

Cancer-Immu provides meta-analysis and pan-cancer analysis modules for signature prioritization and specific signature assessment.

Meta-analysis reveals consistent signatures across multiple study cohorts, while pan-cancer analysis enhances our ability 
to detect and analyze rare features by aggregating events across cohorts/tumor types.

",
           style="font-size:20px;
           margin-left: 275px;
           margin-right: 275px;"),



# p("Each genomic profiling provides multiple types of features, including the known or novel signatures predictive 
# of immunotherapy response. Genetic level is comprised of mutation, mutational loads/burden and mutational signature. 
#   Transcriptomic level includes expression, expression sum, expression relation pairs and immune cell components. 
#   Single-cell level provides gene/protein expression and specific cell population",
#   style="font-size:20px;
#    margin-left: 275px;
#    margin-right: 275px;"),
# p("-- Genetic profiling supports tumor mutational burden, and gene mutation, and mutational signatures.",
#   style="font-size:20px;
#    margin-left: 275px;
#    margin-right: 275px;"),
# p("-- Transcriptomic profiling includes gene/gene sets expression, gene expression relations, and immune cell components.",
#   style="font-size:20px;
#    margin-left: 275px;
#    margin-right: 275px;"),
# p("-- Integration provides combination analysis between features.",
#   style="font-size:20px;
#    margin-left: 275px;
#    margin-right: 275px;"),
# p("-- Single-cell supports specific gene expression signals and specific cell populations.",
#   style="font-size:20px;
#    margin-left: 275px;
#    margin-right: 275px;"),
# p("-- Users' data provides function for uploading users' own data (unrestricted to any cancer types).",
#   style="font-size:20px;
#    margin-left: 275px;
#    margin-right: 275px;"),
#div(class="intro-divider"),
div(class="intro-divider"),

p("News!",
  style="font-size:30px;
                color:Black;
                margin-left: 275px;
                margin-right: 275px;"),
p("03-07-2021, New added data:",
  style="font-size:20px;
                color:Black;
                margin-left: 275px;
                margin-right: 275px;"),
p("  --31 samples from 1 study, ",
  a(href="https://www.ncbi.nlm.nih.gov/pubmed/26028255","PD-1 Blockade in Tumors with Mismatch-Repair Deficiency."),
  style="font-size:20px;
                color:Black;
                margin-left: 275px;
                margin-right: 275px;"),
p("02-02-2021, New added data:",
  style="font-size:20px;
                color:Black;
                margin-left: 275px;
                margin-right: 275px;"),
p("  --348 samples from 1 study, ",
  a(href="https://www.ncbi.nlm.nih.gov/pubmed/29443960","TGFb attenuates tumour response to PD-L1 blockade by contributing to exclusion of T cells."),
  style="font-size:20px;
                color:Black;
                margin-left: 275px;
                margin-right: 275px;"),
p("  --29 samples from 1 study, ",
  a(href="https://www.ncbi.nlm.nih.gov/pubmed/30742122","Neoadjuvant anti-PD-1 immunotherapy promotes a survival benefit with intratumoral and systemic immune responses in recurrent glioblastoma."),
  style="font-size:20px;
                color:Black;
                margin-left: 275px;
                margin-right: 275px;"),

p("11-06-2020, New added data:",
  style="font-size:20px;
                color:Black;
                margin-left: 275px;
                margin-right: 275px;"),
p("  --15 samples from 1 study, ",
  a(href="https://www.ncbi.nlm.nih.gov/pubmed/31359002","Clonal replacement of tumor-specific T cells following PD-1 blockade."),
  style="font-size:20px;
                color:Black;
                margin-left: 275px;
                margin-right: 275px;"),

p("10-25-2020, New added data:",
  style="font-size:20px;
                color:Black;
                margin-left: 275px;
                margin-right: 275px;"),


p("  --112 samples from 1 study, ",
  a(href="https://www.ncbi.nlm.nih.gov/pubmed/30388455","A Cancer Cell Program Promotes T Cell Exclusion and Resistance to Checkpoint Blockade."),
  style="font-size:20px;
                color:Black;
                margin-left: 275px;
                margin-right: 275px;"),


        fluidRow(column(width=3,h4("17 cancer types",style="text-align:center;margin-top:20px"),
                div(img(src="cancer.png"),style="text-align:center"),style="background-color:#7CDBD5; height:150px"),
         column(width=3,h4("3508 samples",style="text-align:center;margin-top:20px"),
                div(img(src="patient.png"),style="text-align:center"),style="background-color:#FEDCD2; height:150px"),
         column(width=3,h4("5 drugs",style="text-align:center;margin-top:20px"),
                div(img(src="drug.png"),style="text-align:center"),style="background-color:#DF744A; height:150px"),
         column(width=3,h4("Bulk sequencing and single-cell technologies",style="text-align:center;margin-top:10px"),
                div(img(src="DNA.png"),style="text-align:center"),style="background-color:#DCB239; height:150px"),style="margin-left:275px;margin-right:275px;margin-top:20px"),
              div(plotlyOutput("start_plot",height=660),
                  style="margin-left:275px;margin-right:275px;margin-top:10px;margin-bottom:10px"),
              # fluidRow(column(width=4,h4("Eleven data sources",style="text-align:center")),
              #          column(width=2,h4("Three types of treatment",style="text-align:center")),
              #          column(width=3,h4("Immunotherapy response",style="text-align:center")),
              #          column(width=3,h4("Pre- and On- treatment",style="text-align:center")),
              #          style="margin-left:275px;margin-right:275px;margin-top:-10px"),
              
              div(class="intro-divider"),
              h4("Select datasets to explore (click rows in the table below)",
                style="margin-left:275px;margin-right:275px;margin-top:10px;margin-bottom:10px;
                font-size:20px;font-weight:bold;color:black"),
              disabled(actionButton("explore_selected_datasets","Explore Selected Datasets",style="background-color: #7CDBD5;margin-left:275px;margin-bottom:20px;")),

              #div(uiOutput ("start_select_studies"),
              #    style="margin-left:275px;margin-right:275px;margin-top:10px;margin-bottom:10px"),
              #div(actionButton("start_melanoma","Melanoma",style="background-color: lightblue"),style="margin-left:275px"),
              # p("Quick start in 3-step:",
              #   style="margin-left:275px;margin-right:275px;margin-top:10px;margin-bottom:10px;
              #   font-size:25px;font-weight:bold;color:#DCB239"),              
              # h4("1. Select a feature  (click a row of the following table):",
              #    style="margin-left:275px;margin-right:275px;margin-top:10px;margin-bottom:10px;
              #   font-size:20px;font-weight:bold;color:#DCB239"),
              # div(DT::dataTableOutput("start_feature_table"),style="margin-left:275px;margin-right:275px;margin-top:10px;margin-bottom:10px"),
              # h4("2. Select study/studies for visualization and exploring (click row(s) of the following table):",
              #   style="margin-left:275px;margin-right:275px;margin-top:10px;margin-bottom:10px;
              #   font-size:20px;font-weight:bold;color:#DCB239"),
              div(DT::dataTableOutput("start_left_table"),style="margin-left:275px;margin-right:275px;margin-top:10px;margin-bottom:10px"),

              #absolutePanel(top="auto",left=0,right=0,bottom=20,fixed=TRUE,uiOutput("start_go",style="text-align:center;")),
              # h4("3. check the results of selected study/studies:",
              #    style="margin-left:275px;margin-right:275px;margin-top:10px;margin-bottom:10px;
              #   font-size:20px;font-weight:bold;color:#DCB239"),
              # disabled(actionButton("start_go","GO",style="background-color: lightblue;margin-left:275px;margin-bottom:20px;")),
              #uiOutput("start_go",style="text-align:center;"),

              #div(class="start_go_still",style="align:center",actionButton("start_go","GO",style="padding:15px;font-size:25px;background-color: green")),
             #fluidRow(div(class="start_go_still",column(width=12,align="center",actionButton("start_go","GO",style="padding:15px;font-size:25px;background-color: green")))),
              #div(actionButton("start_go","GO"),
              #    style="margin-left:275px;margin-right:275px;margin-top:10px;margin-bottom:10px,align:center"),
              div(class = "topbar", style="height: 6px;
                                  background: transparent linear-gradient(to right, #7CDBD5 0%, #DCB239 100%) repeat scroll 0% 0%;
                                  margin-left: -15px;
                                  margin-right: -15px;
                                  margin-bottom:20px"),
              
              p("@Vanderbilt University Medical Center",
                style="color:darkgrey;
                margin-down:-1px;
                text-align:center"),
              p("Center for Quantitative Sciences",
                style="color:darkgrey;
                margin-down:-1px;
                text-align:center"),
              
              p("497A Preston Research Building | Nashville, TN 37232 | 615-322-6618",
                style="color:darkgrey;
                margin-down:1px;
                text-align:center")),
      navbarMenu("Meta analysis",
                 "Signatures prioritization",
              tabPanel("--Rank signatures",
                h4("Signatures prioritization",style="font-size:25px;
		                                  text-align: center;
		                                  margin-top: 20px;
                                      "),
             fluidRow(column(width=12,h4("Signatures prioritization in the meta-analysis is aimed to rank 
                                         signatures based on their common associations with immunotherapy response 
                                         across multiple cohorts. The association test is performed in each individual cohort, 
                                         Effect size and p-values were generated from random forest model of meta-analysis 
                                         and the signatures are ranked by 
                                         the p-values. It prioritizes four types of features, mutations, mutational signatures, 
                                         gene expression and immune cell components, which ranks all genes in features of mutations 
                                         and expression, 30 mutational signatures and 22 immune cell components.",
                                          style="font-size:20px;
                                          margin-left: 275px;
                                          margin-right: 275px;"),
                             style="background-color:#7CDBD5; height:180px;margin-bottom:20px")),
             sidebarPanel(h4("Selection",style="color: #663399;font-size:25px"),
                          
                          selectizeInput("sample_prio",
                                         "Sample run",
                                         choices=c("custom selection",
                                                   "case study 1",
                                                   "all samples",
                                                   "samples with anti-CTLA-4 treatment",
                                                   "samples with anti-PD-1/L1 treatment",
                                                   #"samples with anti-PD-1/L1+anti-CTLA-4 treatment",
                                                   "samples before treatment",
                                                   "samples after treatment"),
                                         selected=c("case study 1"),
                                         multiple=FALSE),
                          #### OR
                          hr(),
                          p(strong("OR select sample(s) manually: "),style="font-size:15px;margin-right:25px;margin-top:20px;font-family: 'Segoe UI', Helvetica, Arial, sans-serif"),
                          #p("In the options of 'Study: ' box, three +/- labels indicate three types of treatment. + means received this type of treatment. – means did not receive this type of treatment. The first label is for anti-CTLA-4 treatment, the second one is for anti-PD-1/L1 treatment, and the third one is for combination treatment, anti-PD-1/L1+anti-CTLA-4. For example, 'Melanoma-Chen (140 samples/++-)' means Chen dataset contains 104 samples with anti-CTLA-4 or anti-PD-1/L1 therapy.",style="font-size:15px;margin-right:25px;margin-top:20px;font-family: 'Segoe UI', Helvetica, Arial, sans-serif"),
                          helpText("In the options of 'Study: ' box, three +/- labels indicate three types of treatment. + means received this type of treatment. – means did not receive this type of treatment. The first label is for anti-CTLA-4 treatment, the second one is for anti-PD-1/L1 treatment, and the third one is for combination treatment, anti-PD-1/L1+anti-CTLA-4. For example, 'Melanoma-Chen (140 samples/++-)' means Chen dataset contains 104 samples with anti-CTLA-4 or anti-PD-1/L1 therapy."),
                          
                          selectizeInput("data_source_prio",
                                         "Study:",
                                         # choices = c("Melanoma-Hugo","Melanoma-Riaz","Melanoma-Samstein",
                                         #             "Melanoma-Snyder-Nathanson","Melanoma-Van Allen","Melanoma-Jerby-Arnon-ValCo2",
                                         #             "Non-Small Cell Lung Cancer-Hira Rizvi","Non-Small Cell Lung Cancer-Naiyer Rizvi",
                                         #             "Non-Small Cell Lung Cancer-Samstein","Renal Cell Carcinoma-Miao","Hepatocellular,Carcinoma-Harding",
                                         #             "Bladder Cancer-Samstein","Breast Cancer-Samstein",
                                         #             "Cancer of Unknown Primary-Samstein","Colorectal Cancer-Samstein","Esophagogastric Cancer-Samstein",
                                         #             "Glioma-Samstein","Head and Neck Cancer-Samstein","Renal Cell Carcinoma-Samstein",
                                         #             "Skin Cancer, Non-Melanoma-Samstein","Melanoma-Auslander","Melanoma-Chen",
                                         #             "Melanoma-Gide","Melanoma-Prat","Prostate Cancer-Kwek",
                                         #             "Gastric Cancer-Kim","Basal cell carcinoma-Yost"),
                                         choices = c( "Melanoma-Hugo (040 samples/-+-)","Melanoma-Riaz (139 samples/-+-)",
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
                                                      "Basal cell carcinoma-Yost (015 samples/-+-)"),
                                         selected = c( "Melanoma-Hugo (040 samples/-+-)",
                                                       "Melanoma-Riaz (139 samples/-+-)",
                                                       "Melanoma-Snyder-Nathanson (064 samples/+--)",
                                                       "Melanoma-Van Allen (112 samples/+--)",
                                                       "Colorectal Cancer-Le (031 samples/-+-)",
                                                       "Metastatic Urothelial Cancer-Mariathasan (348 samples/-+-)",
                                                       "Non-Small Cell Lung Cancer-Naiyer Rizvi (035 samples/-+-)"),
                                         # selected = c( "Melanoma-Hugo (040 samples/-+-)","Melanoma-Riaz (139 samples/-+-)",
                                         #               "Melanoma-Samstein (320 samples/+++)",
                                         #               "Melanoma-Snyder-Nathanson (064 samples/+--)",
                                         #               "Melanoma-Van Allen (112 samples/+--)",
                                         #               "Melanoma-Jerby-Arnon-ValCo2 (112 samples/-+-)",
                                         #               "Melanoma-Auslander (037 samples/+++)",
                                         #               "Melanoma-Chen (104 samples/++-)",
                                         #               "Melanoma-Gide (091 samples/-++)",
                                         #               "Melanoma-Prat (025 samples/-+-)",
                                         #               Non-Small Cell Lung Cancer-Hira Rizvi (240 samples)/-++",
                                         #               "Non-Small Cell Lung Cancer-Naiyer Rizvi (035 samples/-+-)",
                                         #               "Non-Small Cell Lung Cancer-Samstein (350 samples/-++)",
                                         #               "Metastatic Urothelial Cancer-Mariathasan (348 samples/-+-)",
                                         #               "Glioblastoma-Cloughesy (029 samples/-+-)",
                                         #               "Renal Cell Carcinoma-Miao (098 samples/-++)",
                                         #               "Hepatocellular Carcinoma-Harding (031 samples/-+-)",
                                         #               "Bladder Cancer-Samstein (215 samples/-++)",
                                         #               "Breast Cancer-Samstein (044 samples/+++)",
                                         #               "Cancer of Unknown Primary-Samstein (088 samples/+++)",
                                         #               "Colorectal Cancer-Samstein (110 samples/+++)",
                                         #               "Esophagogastric Cancer-Samstein (126 samples/+++)",
                                         #               "Glioma-Samstein (117 samples/-++)",
                                         #               "Head and Neck Cancer-Samstein (139 samples/-++)",
                                         #               "Renal Cell Carcinoma-Samstein (151 samples/-++)",
                                         #               "Prostate Cancer-Kwek (022 samples/+--)",
                                         #               "Gastric Cancer-Kim (061 samples/-+-)",
                                         #               "Basal cell carcinoma-Yost (015 samples/-+-)"),
                                         multiple = TRUE),
                          # selectizeInput("data_source_prio",
                          #                "Study: ",
                          #                choices = "All datasets",
                          #                selected = "All datasets",
                          #                multiple = FALSE),
                          selectizeInput("treatment_prio",
                                         "Treatment: ",
                                         choices = NULL,
                                         multiple = TRUE),
                          selectizeInput("description_prio",
                                         "Pre- or On-treatment: ",
                                         choices = NULL,
                                         multiple = TRUE),
                          actionButton("do_prio","Go",style="background-color: #7CDBD5"),
                          p(strong("This may take a while"),style="margin-right:25px;font-family: 'Segoe UI', Helvetica, Arial, sans-serif")),
             conditionalPanel(condition="input.do_prio",
                              mainPanel(tabsetPanel(
                                tabPanel("Summary",
                                         #div(id="loading-c",tags$img(src="spinner.gif"),style="text-align:center",
                                         #hide(div(id="app-c",
                                         wellPanel(
                                           h1("Statistics",
                                              style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                              margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                           div(id="container",
                                               h4("Number of selected cancer type: "),
                                               div(textOutput("prio_summary_disease_number"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                               style="margin-bottom:30px"),
                                           div(id="container",
                                               h4("Number of selected samples: "),
                                               div(textOutput("prio_summary_sample_number"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                               style="margin-bottom:30px"),
                                           plotlyOutput("prio_summary_plots",height=960))),
                                tabPanel("Mutation",
                                         column(12,
                                                h1("P-values of meta-analysis for all genes across selected cohorts",
                                                   style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;margin-top:20px;margin-left:-20px;margin-right:-20px"),
                                                # plotlyOutput("prio_mutation_plots_meta",height="auto"),
                                                # h4("Significant genes:",style="margin-top:20px;margin-bottom:10px;font-size:20px;font-weight:bold;color:#DCB239"),
                                                div(DT::dataTableOutput("prio_mutation_tables_meta"),style="margin-top:30px;margin-bottom:10px"),
                                                uiOutput("prio_mutation_tables_meta_modals",height = "auto")),
                                         column(12,
                                                h1("P-values for all genes in each individual cohort",
                                                   style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;margin-top:20px;margin-left:-20px;margin-right:-20px"),
                                                uiOutput("prio_mutation_plots",height = "auto"),
                                                uiOutput("prio_mutation_modals",height = "auto")),
                                         # div(id="container",
                                         #     h4("Number of significant genes: "),
                                         #     div(textOutput("pan_cancer_mutation_significant_number"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                         #     style="margin-bottom:30px"),
                                         # div(DT::dataTableOutput("pan_cancer_mutation_overlap_table"),style="background-color: lightblue;overflow-y: scroll;overflow-x: scroll")),
                                         # column(12,h1("Distribution of p-values for each gene",
                                         #              style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                         #                                  margin-top:20px;margin-left:-20px;margin-right:-20px"),
                                         #        uiOutput("pan_cancer_mutation_plots",height = "auto")),#),
                                         column(12,
                                                h1("Prioritization for all genes across selected cohorts",
                                                   style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                   margin-top:20px;margin-left:-20px;margin-right:-20px"),
                                                div(id="container",
                                                    h4("Data format:   "),
                                                    radioButtons("prio_mutation_type","",
                                                                 choices = c("Excel (CSV)","Text (TSV)", "JSON"),
                                                                 inline = TRUE),
                                                    style="margin-bottom:30px"),
                                                div(downloadButton("prio_mutation_download", "Download"),style="margin-bottom:30px"),
                                                div(DT::dataTableOutput("prio_mutation_table"),style="background-color: #7CDBD5;overflow-y: scroll;overflow-x: scroll"))
                                         ),
                                tabPanel("Mutation signatures",
                                         column(12,
                                                h1("P-values of meta-analysis for all mutation signatures across selected cohorts",
                                                   style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;margin-top:20px;margin-left:-20px;margin-right:-20px"),
                                                # plotlyOutput("prio_mutation_signature_plots_meta",height="auto"),
                                                # h4("Significant genes:",style="margin-top:20px;margin-bottom:10px;font-size:20px;font-weight:bold;color:#DCB239"),
                                                div(DT::dataTableOutput("prio_mutation_signature_tables_meta"),style="margin-top:30px;margin-bottom:10px"),
                                                uiOutput("prio_mutation_signature_tables_meta_modals",height = "auto")),
                                         column(12,
                                                h1("P-values for all mutation signatures in each individual cohort",
                                                   style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;margin-top:20px;margin-left:-20px;margin-right:-20px"),
                                                uiOutput("prio_mutation_signature_plots",height = "auto"),
                                                uiOutput("prio_mutation_signature_modals",height = "auto")),
                                         #        div(id="container",
                                         #            h4("Number of overlapping significant clusters: "),
                                         #            div(textOutput("pan_cancer_overlap_number"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                         #            style="margin-bottom:30px"),
                                         #        div(DT::dataTableOutput("pan_cancer_overlap_table"),style="background-color: lightblue;overflow-y: scroll;overflow-x: scroll")),
                                         # column(12,h1("Distribution of p-values for each cluster",
                                         #              style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                         #                                  margin-top:20px;margin-left:-20px;margin-right:-20px"),
                                         #        uiOutput("pan_cancer_plots",height = "auto")),#),
                                         
                                         column(12,
                                                h1("Prioritization for all mutation signatures across selected cohorts",
                                                   style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                   margin-top:20px;margin-left:-20px;margin-right:-20px"),
                                                div(id="container",
                                                    h4("Data format:   "),
                                                    radioButtons("prio_mutation_signature_type","",
                                                                 choices = c("Excel (CSV)","Text (TSV)", "JSON"),
                                                                 inline = TRUE),
                                                    style="margin-bottom:30px"),
                                                div(downloadButton("prio_mutation_signature_download", "Download"),style="margin-bottom:30px"),
                                                div(DT::dataTableOutput("prio_mutation_signature_table"),style="background-color: #7CDBD5;overflow-y: scroll;overflow-x: scroll"))),
                                tabPanel("Expression",
                                         column(12,
                                                h1("P-values of meta-analysis for all genes across selected cohorts",
                                                   style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;margin-top:20px;margin-left:-20px;margin-right:-20px"),
                                                # plotlyOutput("prio_expression_plots_meta",height="auto"),
                                                # h4("Significant genes:",style="margin-top:20px;margin-bottom:10px;font-size:20px;font-weight:bold;color:#DCB239"),
                                                div(DT::dataTableOutput("prio_expression_tables_meta"),style="margin-top:30px;margin-bottom:10px"),
                                                uiOutput("prio_expression_tables_meta_modals",height = "auto")
                                         ),
                                         column(12,
                                                h1("P-values for all genes in each individual cohort",
                                                   style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;margin-top:20px;margin-left:-20px;margin-right:-20px"),
                                                uiOutput("prio_expression_plots",height = "auto"),
                                                uiOutput("prio_expression_modals",height = "auto")),
                                         #        div(id="container",
                                         #            h4("Number of overlapping significant clusters: "),
                                         #            div(textOutput("pan_cancer_overlap_number"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                         #            style="margin-bottom:30px"),
                                         #        div(DT::dataTableOutput("pan_cancer_overlap_table"),style="background-color: lightblue;overflow-y: scroll;overflow-x: scroll")),
                                         # column(12,h1("Distribution of p-values for each cluster",
                                         #              style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                         #                                  margin-top:20px;margin-left:-20px;margin-right:-20px"),
                                         #        uiOutput("pan_cancer_plots",height = "auto")),#),
                                         
                                         column(12,
                                                h1("Prioritization for all genes across selected cohorts",
                                                   style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                   margin-top:20px;margin-left:-20px;margin-right:-20px"),
                                                div(id="container",
                                                    h4("Data format:   "),
                                                    radioButtons("prio_expression_type","",
                                                                 choices = c("Excel (CSV)","Text (TSV)", "JSON"),
                                                                 inline = TRUE),
                                                    style="margin-bottom:30px"),
                                                div(downloadButton("prio_expression_download", "Download"),style="margin-bottom:30px"),
                                                div(DT::dataTableOutput("prio_expression_table"),style="background-color: #7CDBD5;overflow-y: scroll;overflow-x: scroll"))),
                                
                                tabPanel("Immune cell component",
                                         column(12,
                                                h1("P-values of meta-analysis for immune cells across selected cohorts",
                                                   style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;margin-top:20px;margin-left:-20px;margin-right:-20px"),
                                                # plotlyOutput("prio_cibersort_plots_meta",height="auto"),
                                                # h4("All immune cells:",style="margin-top:20px;margin-bottom:10px;font-size:20px;font-weight:bold;color:#DCB239"),
                                                div(DT::dataTableOutput("prio_cibersort_tables_meta"),style="margin-top:30px;margin-bottom:10px"),
                                                uiOutput("prio_cibersort_tables_meta_modals",height = "auto")
                                         ),
                                         column(12,
                                                h1("P-values for all immune cells in each individual cohort",
                                                   style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;margin-top:20px;margin-left:-20px;margin-right:-20px"),
                                                uiOutput("prio_cibersort_plots",height = "auto"),
                                                uiOutput("prio_cibersort_modals",height = "auto")),
                                         column(12,
                                                h1("Prioritization for all immune cells across selected cohorts",
                                                   style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                          margin-top:20px;margin-left:-20px;margin-right:-20px"),
                                                div(id="container",
                                                    h4("Data format:   "),
                                                    radioButtons("prio_cibersort_type","",
                                                                 choices = c("Excel (CSV)","Text (TSV)", "JSON"),
                                                                 inline = TRUE),
                                                    style="margin-bottom:30px"),
                                                div(downloadButton("prio_cibersort_download", "Download"),style="margin-bottom:30px"),
                                                div(DT::dataTableOutput("prio_cibersort_table"),style="background-color: #7CDBD5;overflow-y: scroll;overflow-x: scroll")))

                                )))
             
            ),

    #navbarMenu("Specific signature assessment",
               #navbarMenu("Genetic",
               "----","Specific signature assessment",
               tabPanel ("--Genetic: Mutation",
                         h4("Specific signature assessment",style="font-size:25px;
		                                  text-align: center;
		                                  margin-top: 20px;
                                      "),
                         h4("--Mutation",style="font-size:25px;
		                                  text-align: center;
		                                  margin-top: 20px;
                                      "),
                         # fluidRow(column(width=12,style="background-color:#7CDBD5; height:180px;margin-bottom:20px")),
                         fluidRow(column(width=12,h4("Specific signature assessment module provides a detailed view of one 
                                                     particular feature. The associations with immunotherapy response, 
                                                     overall survival (OS) and progression free survival (PFS) are 
                                                     investigated in the module.",
                                                     style="font-size:20px;
                                          margin-left: 275px;
                                          margin-right: 275px;"),
                                         h4("Mutations: exploring the associations of mutational frequencies with immunotherapy response, 
                                            OS and PFS.",
                                            style="font-size:20px;
                                          margin-left: 275px;
                                            margin-right: 275px;"),
                                         style="background-color:#7CDBD5; height:180px;margin-bottom:20px")),
                         sidebarPanel(h4("Select samples",style="color: #663399;font-size:25px"),
                                      #p("In the options of 'Study: ' box, three +/- labels indicate three types of treatment. + means received this type of treatment. – means did not receive this type of treatment. The first label is for anti-CTLA-4 treatment, the second one is for anti-PD-1/L1 treatment, and the third one is for combination treatment, anti-PD-1/L1+anti-CTLA-4. For example, 'Melanoma-Chen (140 samples/++-)' means Chen dataset contains 104 samples with anti-CTLA-4 or anti-PD-1/L1 therapy.",style="font-size:15px;margin-right:25px;margin-top:20px;font-family: 'Segoe UI', Helvetica, Arial, sans-serif"),
                                      helpText("In the options of 'Study: ' box, three +/- labels indicate three types of treatment. + means received this type of treatment. – means did not receive this type of treatment. The first label is for anti-CTLA-4 treatment, the second one is for anti-PD-1/L1 treatment, and the third one is for combination treatment, anti-PD-1/L1+anti-CTLA-4. For example, 'Melanoma-Chen (140 samples/++-)' means Chen dataset contains 104 samples with anti-CTLA-4 or anti-PD-1/L1 therapy."),
                                      selectizeInput("data_source_mutation",
                                                     "Study: ",
                                                     # choices = c("Melanoma-Hugo" ,"Melanoma-Riaz" ,"Melanoma-Samstein" ,"Melanoma-Snyder-Nathanson" ,
                                                     #             "Melanoma-Van Allen", "Hepatocellular Carcinoma-Harding" ,"Non-Small Cell Lung Cancer-Hira Rizvi" ,
                                                     #             "Non-Small Cell Lung Cancer-Naiyer Rizvi" ,"Renal Cell Carcinoma-Miao","Non-Small Cell Lung Cancer-Samstein" ,"Bladder Cancer-Samstein" ,
                                                     #             "Breast Cancer-Samstein" ,"Cancer of Unknown Primary-Samstein" ,"Colorectal Cancer-Samstein" ,
                                                     #             "Esophagogastric Cancer-Samstein" ,"Glioma-Samstein" ,"Head and Neck Cancer-Samstein" ,
                                                     #             "Renal Cell Carcinoma-Samstein" ,"Skin Cancer, Non-Melanoma-Samstein","Basal cell carcinoma-Yost" ),
                                                     choices = c("Melanoma-Hugo (040 samples/-+-)",
                                                                 "Melanoma-Riaz (139 samples/-+-)",
                                                                 "Melanoma-Samstein (320 samples/+++)",
                                                                 "Melanoma-Snyder-Nathanson (064 samples/+--)",
                                                                 "Melanoma-Van Allen (112 samples/+--)",
                                                                 "Hepatocellular Carcinoma-Harding (031 samples/-+-)",
                                                                 "Non-Small Cell Lung Cancer-Hira Rizvi (240 samples/-++)",
                                                                 "Non-Small Cell Lung Cancer-Naiyer Rizvi (035 samples/-+-)",
                                                                 "Renal Cell Carcinoma-Miao (098 samples/-++)",
                                                                 "Non-Small Cell Lung Cancer-Samstein (350 samples/-++)",
                                                                 "Bladder Cancer-Samstein (215 samples/-++)",
                                                                 "Breast Cancer-Samstein (044 samples/+++)",
                                                                 "Colorectal Cancer-Le (031 samples/-+-)",
                                                                 "Cancer of Unknown Primary-Samstein (088 samples/+++)",
                                                                 "Colorectal Cancer-Samstein (110 samples/+++)",
                                                                 "Esophagogastric Cancer-Samstein (126 samples/+++)",
                                                                 "Glioma-Samstein (117 samples/-++)",
                                                                 "Head and Neck Cancer-Samstein (139 samples/-++)",
                                                                 "Renal Cell Carcinoma-Samstein (151 samples/-++)",
                                                                 "Basal cell carcinoma-Yost (015 samples/-+-)"),
                                                     selected = c("Melanoma-Hugo (040 samples/-+-)","Melanoma-Van Allen (112 samples/+--)"),
                                                     multiple = TRUE),
                                      selectizeInput("treatment_mutation",
                                                  "Treatment: ",
                                                  choices = NULL,
                                                  multiple = TRUE),
                                      selectizeInput("description_mutation",
                                                  "Pre- or On-treatment: ",
                                                  choices = NULL,
                                                  multiple = TRUE),
                                      selectizeInput("defined_gene_mutation",
                                                     "Pre-defined gene set or user-defined list: ",
                                                     choices = c("user-defined list","DNA_damage_response","PDL1_expression_and_PD1_checkpoint_pathway_in_cancer","T_cell_receptor_signaling_pathway","B_cell_receptor_signaling_pathway","Cell_cycle_control","Survival_cell_death_regulation_signaling"),
                                                     multiple = FALSE),
                                      selectizeInput("gene_mutation",
                                                     "Insert a gene or gene list, for example: BRAF KRAS",
                                                     choices=NULL,
                                                     multiple=TRUE),
                                      ##### Parameter
                                      h4("Parameters of survival analysis",style="color: #663399;font-size: 25px"),
                                      selectizeInput("adjust_OS_mutation",
                                                     "Adjust survival analysis with: ",
                                                     choices = c("None","Age","Gender","Stage"),
                                                     selected = "None",
                                                     multiple = FALSE),
                                      actionButton("do_mutation","Go",style="background-color: #7CDBD5")),
                         conditionalPanel(condition="input.do_mutation",
                                          mainPanel(tabsetPanel(
                                            tabPanel("Summary",
                                                     #div(id="loading-c",tags$img(src="spinner.gif"),style="text-align:center",
                                                     #hide(div(id="app-c",
                                                     wellPanel(
                                                       h1("Statistics",
                                                          style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                          margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                       div(id="container",
                                                                   h4("Number of selected cancer type: "),
                                                                   div(textOutput("mutation_summary_disease_number"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                                   style="margin-bottom:30px"),
                                                       div(id="container",
                                                           h4("Number of selected samples: "),
                                                           div(textOutput("mutation_summary_sample_number"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                           style="margin-bottom:30px"),
                                                       plotlyOutput("mutation_summary_plots",height=960)),
                                                       #uiOutput("mutation_summary_plots",height="auto")),
                                                     wellPanel(h1("Clinical Attribute",
                                                                  style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                          margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                               selectizeInput("clinical_mutation","Please select clinical data:",
                                                                              choices = c("treatment type","Pre- or On-treatment","RECIST","Age","Gender")),style="margin-bottom:-1px"),
                                                               uiOutput("mutation_summary_clinical_plots"),
                                                     column(12,
                                                       h1("Download",
                                                          style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                          margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                       div(id="container",
                                                           h4("Data format:   "),
                                                           radioButtons("mutation_summary_type","",
                                                                        choices = c("Excel (CSV)","Text (TSV)", "JSON"),
                                                                        inline = TRUE),
                                                           style="margin-bottom:30px"),
                                                       div(downloadButton("mutation_summary_download", "Download"),style="margin-bottom:30px"),
                                                       div(DT::dataTableOutput("mutation_summary_table"),style="background-color: #7CDBD5;overflow-y: scroll;overflow-x: scroll"))
                                                     ),
                                            tabPanel("Immunotherapy response",
                                                     #wellPanel(
                                                     # wellPanel(
                                                     #   h1("Combined p-value",
                                                     #      style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                     #      margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                     #   div(id="container",
                                                     #       h4("Combined p-value of the meta-analysis for selected cohorts: "),
                                                     #       div(textOutput("mutation_plots_plots_combined_p"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                     #       style="margin-bottom:30px")),
                                                     wellPanel(
                                                       h1("Meta-analysis across selected cohorts",
                                                          style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                          margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                       plotOutput("mutation_plots_plots_meta",height=480)),
                                                       h1("Analysis in each individual cohort",
                                                                  style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                                          margin-top:20px;margin-left:-20px;margin-right:-20px"),
                                                                # div(id="container",
                                                                #   h4("Combined p-value of the meta-analysis for selected cohorts: "),
                                                                #   div(textOutput("mutation_plots_plots_combined_p"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                                #   h4(", which is estimated from single p-values, "),
                                                                #   div(textOutput("mutation_plots_plots_single_p"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                                #   style="margin-bottom:30px"),
                                                               uiOutput("mutation_plots_plots",height = "auto")),#),
                                            tabPanel("Overall survival",
                                                     #wellPanel(
                                                     wellPanel(
                                                       h1("Meta-analysis across selected cohorts",
                                                          style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                          margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                       plotOutput("mutation_survival_plots_meta",height=480)),
                                                     
                                                       h1("Analysis in each individual cohort",
                                                                  style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                                          margin-top:20px;margin-left:-20px;margin-right:-20px"),
                                                     # div(id="container",
                                                     #     h4("Combined p-value of the meta-analysis for selected cohorts: "),
                                                     #     div(textOutput("mutation_survival_plots_combined_p"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                     #     h4(", which is estimated from single p-values, "),
                                                     #     div(textOutput("mutation_survival_plots_single_p"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                     #     style="margin-bottom:30px"),
                                                               uiOutput("mutation_survival_plots",height = "auto")),#),
                                            tabPanel("Progression free survival",
                                                     #wellPanel(
                                                     wellPanel(
                                                       h1("Meta-analysis across selected cohorts",
                                                          style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                          margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                       plotOutput("mutation_PFS_plots_meta",height=480)),
                                                       h1("Analysis in each individual cohort",
                                                                  style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                                          margin-top:20px;margin-left:-20px;margin-right:-20px"),
                                                     # div(id="container",
                                                     #     h4("Combined p-value of the meta-analysis for selected cohorts: "),
                                                     #     div(textOutput("mutation_PFS_plots_combined_p"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                     #     h4(", which is estimated from single p-values, "),
                                                     #     div(textOutput("mutation_PFS_plots_single_p"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                     #     style="margin-bottom:30px"),
                                                               uiOutput("mutation_PFS_plots",height = "auto")),#),
                                            tabPanel("Evaluation",
                                                     wellPanel(
                                                       h1("Summary of the selected feature",
                                                                  style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                          margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                               #uiOutput("mutation_evaluation_plots",height = "auto")
                                                       DT::dataTableOutput("mutation_evaluation_table")
                                                       ))
                                            )))),
               
               tabPanel ("--Genetic: Mutational loads/burden",
                         h4("Specific signature assessment",style="font-size:25px;
		                                  text-align: center;
		                                  margin-top: 20px;
                                      "),
                         h4("--Mutational loads/burden",style="font-size:25px;
		                                  text-align: center;
		                                  margin-top: 20px;
                                      "),
                         fluidRow(column(width=12,h4("Specific signature assessment module provides a detailed view of one 
                                                     particular feature. The associations with immunotherapy response, 
                                                     overall survival (OS) and progression free survival (PFS) are 
                                                     investigated in the module.",
                                                     style="font-size:20px;
                                                     margin-left: 275px;
                                                     margin-right: 275px;"),
                                         h4("Mutational loads/burden: exploring the associations of mutational loads/burden (TMB) with 
                                            immunotherapy response, OS and PFS.",
                                            style="font-size:20px;
                                            margin-left: 275px;
                                            margin-right: 275px;"),
                                         style="background-color:#7CDBD5; height:180px;margin-bottom:20px")),
                         # fluidRow(column(width=12,h4("Exploring the association of tumor mutational burden (TMB) to immunotherapy response, overall survival and progression free survival.",style="text-align:center"),
                         #                 style="background-color:#7CDBD5; height:200px;margin-bottom:20px")),
                                  sidebarPanel(h4("Select samples",style="color: #663399;font-size: 25px"),
                                               helpText("In the options of 'Study: ' box, three +/- labels indicate three types of treatment. + means received this type of treatment. – means did not receive this type of treatment. The first label is for anti-CTLA-4 treatment, the second one is for anti-PD-1/L1 treatment, and the third one is for combination treatment, anti-PD-1/L1+anti-CTLA-4. For example, 'Melanoma-Chen (140 samples/++-)' means Chen dataset contains 104 samples with anti-CTLA-4 or anti-PD-1/L1 therapy."),
                                               
                                               selectizeInput("data_source_mutation_loads",
                                                     "Study: ",
                                                     # choices = c("Melanoma-Hugo" ,"Melanoma-Riaz" ,"Melanoma-Samstein" ,"Melanoma-Snyder-Nathanson" ,
                                                     #             "Melanoma-Van Allen", "Hepatocellular Carcinoma-Harding" ,"Non-Small Cell Lung Cancer-Hira Rizvi" ,
                                                     #             "Non-Small Cell Lung Cancer-Naiyer Rizvi" ,"Renal Cell Carcinoma-Miao","Non-Small Cell Lung Cancer-Samstein" ,"Bladder Cancer-Samstein" ,
                                                     #             "Breast Cancer-Samstein" ,"Cancer of Unknown Primary-Samstein" ,"Colorectal Cancer-Samstein" ,
                                                     #             "Esophagogastric Cancer-Samstein" ,"Glioma-Samstein" ,"Head and Neck Cancer-Samstein" ,
                                                     #             "Renal Cell Carcinoma-Samstein" ,"Skin Cancer, Non-Melanoma-Samstein","Basal cell carcinoma-Yost" ),
                                                     choices = c("Melanoma-Hugo (040 samples/-+-)",
                                                                 "Melanoma-Riaz (139 samples/-+-)",
                                                                 "Melanoma-Samstein (320 samples/+++)",
                                                                 "Melanoma-Snyder-Nathanson (064 samples/+--)",
                                                                 "Melanoma-Van Allen (112 samples/+--)",
                                                                 "Hepatocellular Carcinoma-Harding (031 samples/-+-)",
                                                                 "Non-Small Cell Lung Cancer-Hira Rizvi (240 samples/-++)",
                                                                 "Non-Small Cell Lung Cancer-Naiyer Rizvi (035 samples/-+-)",
                                                                 "Renal Cell Carcinoma-Miao (098 samples/-++)",
                                                                 "Non-Small Cell Lung Cancer-Samstein (350 samples/-++)",
                                                                 "Bladder Cancer-Samstein (215 samples/-++)",
                                                                 "Breast Cancer-Samstein (044 samples/+++)",
                                                                 "Cancer of Unknown Primary-Samstein (088 samples/+++)",
                                                                 "Colorectal Cancer-Samstein (110 samples/+++)",
                                                                 "Colorectal Cancer-Le (031 samples/-+-)",
                                                                 "Esophagogastric Cancer-Samstein (126 samples/+++)",
                                                                 "Glioma-Samstein (117 samples/-++)",
                                                                 "Head and Neck Cancer-Samstein (139 samples/-++)",
                                                                 "Renal Cell Carcinoma-Samstein (151 samples/-++)",
                                                                 "Basal cell carcinoma-Yost (015 samples/-+-)"),
                                                     
                                                     selected = c("Melanoma-Hugo (040 samples/-+-)","Melanoma-Van Allen (112 samples/+--)"),
                                                     multiple = TRUE),
                                      selectizeInput("treatment_mutation_loads",
                                                     "Treatment: ",
                                                     choices = NULL,
                                                     multiple = TRUE),
                                      selectizeInput("description_mutation_loads",
                                                     "Pre- or On-treatment: ",
                                                     choices = NULL,
                                                     multiple = TRUE),
                                      ##### Parameter
                                      h4("Parameters of survival analysis",style="color: #663399;font-size: 25px"),
                                      
                                      sliderInput("slider_mutation_loads_OS",
                                                  "Seperate samples by gene mutation loads cutoff (default value is 0.5, i.e. median): ",
                                                  min=0,max=1,value=0.5),
                                      selectizeInput("adjust_OS_mutation_loads",
                                                     "Adjust survival analysis with: ",
                                                     choices = c("None","Age","Gender","Stage"),
                                                     selected = "None",
                                                     multiple = FALSE),
                                      # sliderInput("slider_mutation_loads_PFS",
                                      #             "Seperate samples for progression free survival analysis by gene mutation loads cutoff (%): ",
                                      #             min=0,max=1,value=0.5),
                                      
                                      actionButton("do_mutation_loads","Go",style="background-color: #7CDBD5")),
                         conditionalPanel(condition="input.do_mutation_loads",
                                          mainPanel(tabsetPanel(
                                            tabPanel("Summary",
                                                     wellPanel(
                                                       h1("Statistics",
                                                          style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                          margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                       div(id="container",
                                                           h4("Number of selected cancer type: "),
                                                           div(textOutput("mutation_loads_summary_disease_number"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                           style="margin-bottom:30px"),
                                                       div(id="container",
                                                           h4("Number of selected samples: "),
                                                           div(textOutput("mutation_loads_summary_sample_number"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                           style="margin-bottom:30px"),
                                                       plotlyOutput("mutation_loads_summary_plots",height=960)),
                                                     #uiOutput("mutation_summary_plots",height="auto")),
                                                     wellPanel(h1("Clinical Attribute",
                                                                  style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                          margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                               selectizeInput("clinical_mutation_loads","Please select clinical data:",
                                                                              choices = c("treatment type","Pre- or On-treatment","RECIST","Age","Gender")),style="margin-bottom:-1px"),
                                                               uiOutput("mutation_loads_summary_clinical_plots"),
                                                     column(12,
                                                       h1("Download",
                                                          style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                          margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                       div(id="container",
                                                           h4("Data format:   "),
                                                           radioButtons("mutation_loads_summary_type","",
                                                                        choices = c("Excel (CSV)","Text (TSV)", "JSON"),
                                                                        inline = TRUE),
                                                           style="margin-bottom:30px"),
                                                       div(downloadButton("mutation_loads_summary_download", "Download"),style="margin-bottom:30px"),
                                                       div(DT::dataTableOutput("mutation_loads_summary_table"),style="background-color: #7CDBD5;overflow-y: scroll;overflow-x: scroll"))
                                            ),
                                            tabPanel("Immunotherapy response",
                                                     #wellPanel (
                                                     wellPanel(
                                                       h1("Meta-analysis across selected cohorts",
                                                        style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                          margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                     plotOutput("mutation_loads_plots_plots_meta",height=480)),
                                                     
                                                     h1("Analysis in each individual cohort",
                                                                   style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                          margin-top:20px;margin-bottom:0px"),
                                                     # div(id="container",
                                                     #     h4("Combined p-value of the meta-analysis for selected cohorts: "),
                                                     #     div(textOutput("mutation_loads_plots_plots_combined_p"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                     #     h4(", which is estimated from single p-values, "),
                                                     #     div(textOutput("mutation_loads_plots_plots_single_p"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                     #     style="margin-bottom:30px"),
                                                                uiOutput("mutation_loads_plots_plots",height = "auto")),#),
                                            tabPanel("Overall survival",
                                                     # wellPanel(sliderInput("slider_mutation_loads_OS",
                                                     #                       "Seperate samples with gene mutation loads cutoff (%): ",
                                                     #                       min=0,max=1,value=0.5)),
                                                     wellPanel(
                                                     h1("Meta-analysis across selected cohorts",
                                                        style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                          margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                     plotOutput("mutation_loads_survival_plots_meta",height=480)),
                                                     
                                                     h1("Analysis in each individual cohort",
                                                                  style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                                          margin-top:20px;margin-bottom:0px"),
                                                     # div(id="container",
                                                     #     h4("Combined p-value of the meta-analysis for selected cohorts: "),
                                                     #     div(textOutput("mutation_loads_survival_plots_combined_p"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                     #     h4(", which is estimated from single p-values, "),
                                                     #     div(textOutput("mutation_loads_survival_plots_single_p"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                     #     style="margin-bottom:30px"),
                                                               uiOutput("mutation_loads_survival_plots",height = "auto")),#),
                                            tabPanel("Progression free survival",
                                                     # wellPanel(sliderInput("slider_mutation_loads_PFS",
                                                     #                       "Seperate samples with gene mutation loads cutoff (%): ",
                                                     #                       min=0,max=1,value=0.5)),
                                                     wellPanel(
                                                     h1("Meta-analysis across selected cohorts",
                                                        style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                          margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                     plotOutput("mutation_loads_PFS_plots_meta",height=480)),
                                                     
                                                       h1("Analysis in each individual cohort",
                                                                  style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                                          margin-top:20px;margin-bottom:0px"),
                                                     # div(id="container",
                                                     #     h4("Combined p-value of the meta-analysis for selected cohorts: "),
                                                     #     div(textOutput("mutation_loads_PFS_plots_combined_p"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                     #     h4(", which is estimated from single p-values, "),
                                                     #     div(textOutput("mutation_loads_PFS_plots_single_p"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                     #     style="margin-bottom:30px"),
                                                     
                                                               uiOutput("mutation_loads_PFS_plots",height = "auto")),#),
                                            tabPanel("Evaluation",
                                                     wellPanel(h1("Summary of the selected feature",
                                                                  style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                          margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                               DT::dataTableOutput("mutation_loads_evaluation_table")
                                                               #uiOutput("mutation_loads_evaluation_plots")
                                                               ))
                                            )))),
               tabPanel ("--Genetic: Mutational signatures",
                         h4("Specific signature assessment",style="font-size:25px;
		                                  text-align: center;
		                                  margin-top: 20px;
                                      "),
                         h4("--Mutational signatures",style="font-size:25px;
		                                  text-align: center;
		                                  margin-top: 20px;
                                      "),
                         fluidRow(column(width=12,h4("Specific signature assessment module provides a detailed view of one 
                                                     particular feature. The associations with immunotherapy response, 
                                                     overall survival (OS) and progression free survival (PFS) are 
                                                     investigated in the module.",
                                                     style="font-size:20px;
                                                     margin-left: 275px;
                                                     margin-right: 275px;"),
                                         h4("Mutational signatures: exploring the associations of mutational signatures with 
                                            immunotherapy response, OS and PFS. Mutational signatures were obtained using 
                                            deconstructSigs package (v1.6.0) in R, which selects combinations of known mutational 
                                            signatures that account for the observed mutational profile in each sample. 
                                            Only somatic mutations in exome regions were considered, and trinucleotide counts 
                                            were normalized by the number of times each trinucleotide context was observed in 
                                            the exome region.",
                                            style="font-size:20px;
                                            margin-left: 275px;
                                            margin-right: 275px;"),
                                         style="background-color:#7CDBD5; height:180px;margin-bottom:20px")),
                         # fluidRow(column(width=12,h4("Exploring the association of mutational signatures to immunotherapy response, overall survival and progression free survival.",style="text-align:center"),
                         #                 style="background-color:#7CDBD5; height:200px;margin-bottom:20px")),
                         sidebarPanel(h4("Select samples",style="color: #663399;font-size: 25px"),
                                      helpText("In the options of 'Study: ' box, three +/- labels indicate three types of treatment. + means received this type of treatment. – means did not receive this type of treatment. The first label is for anti-CTLA-4 treatment, the second one is for anti-PD-1/L1 treatment, and the third one is for combination treatment, anti-PD-1/L1+anti-CTLA-4. For example, 'Melanoma-Chen (140 samples/++-)' means Chen dataset contains 104 samples with anti-CTLA-4 or anti-PD-1/L1 therapy."),
                                      
                                      selectizeInput("data_source_mutation_signature",
                                                     "Study: ",
                                                     # choices = c("Melanoma-Hugo" ,"Melanoma-Riaz" ,"Melanoma-Samstein" ,"Melanoma-Snyder-Nathanson" ,
                                                     #             "Melanoma-Van Allen", "Hepatocellular Carcinoma-Harding" ,"Non-Small Cell Lung Cancer-Hira Rizvi" ,
                                                     #             "Non-Small Cell Lung Cancer-Naiyer Rizvi" ,"Renal Cell Carcinoma-Miao","Non-Small Cell Lung Cancer-Samstein" ,"Bladder Cancer-Samstein" ,
                                                     #             "Breast Cancer-Samstein" ,"Cancer of Unknown Primary-Samstein" ,"Colorectal Cancer-Samstein" ,
                                                     #             "Esophagogastric Cancer-Samstein" ,"Glioma-Samstein" ,"Head and Neck Cancer-Samstein" ,
                                                     #             "Renal Cell Carcinoma-Samstein" ,"Skin Cancer, Non-Melanoma-Samstein" ),
                                                     choices = c("Melanoma-Hugo (040 samples/-+-)",
                                                                 "Melanoma-Riaz (139 samples/-+-)",
                                                                 "Melanoma-Samstein (320 samples/+++)",
                                                                 "Melanoma-Snyder-Nathanson (064 samples/+--)",
                                                                 "Melanoma-Van Allen (112 samples/+--)",
                                                                 "Hepatocellular Carcinoma-Harding (031 samples/-+-)",
                                                                 "Non-Small Cell Lung Cancer-Hira Rizvi (240 samples/-++)",
                                                                 "Non-Small Cell Lung Cancer-Naiyer Rizvi (035 samples/-+-)",
                                                                 "Renal Cell Carcinoma-Miao (098 samples/-++)",
                                                                 "Non-Small Cell Lung Cancer-Samstein (350 samples/-++)",
                                                                 "Bladder Cancer-Samstein (215 samples/-++)",
                                                                 "Breast Cancer-Samstein (044 samples/+++)",
                                                                 "Cancer of Unknown Primary-Samstein (088 samples/+++)",
                                                                 "Colorectal Cancer-Samstein (110 samples/+++)",
                                                                 "Colorectal Cancer-Le (031 samples/-+-)",
                                                                 "Esophagogastric Cancer-Samstein (126 samples/+++)",
                                                                 "Glioma-Samstein (117 samples/-++)",
                                                                 "Head and Neck Cancer-Samstein (139 samples/-++)",
                                                                 "Renal Cell Carcinoma-Samstein (151 samples/-++)",
                                                                 "Basal cell carcinoma-Yost (015 samples/-+-)"),
                                                     
                                                     selected = c("Melanoma-Hugo (040 samples/-+-)","Melanoma-Van Allen (112 samples/+--)"),
                                                     multiple = TRUE),
                                      selectizeInput("treatment_mutation_signature",
                                                     "Treatment: ",
                                                     choices = NULL,
                                                     multiple = TRUE),
                                      selectizeInput("description_mutation_signature",
                                                     "Pre- or On-treatment: ",
                                                     choices = NULL,
                                                     multiple = TRUE),
                                      selectizeInput("signature_mutation_signature",
                                                     "Mutational signature type:  ",
                                                     choices = NULL,
                                                     multiple = FALSE),
                                      ##### Parameter
                                      h4("Parameters of survival analysis",style="color: #663399;font-size: 25px"),
                                      
                                      sliderInput("slider_mutation_signature_OS",
                                                  "Seperate samples by mutational signature cutoff (default value is 0.5, i.e. median): ",
                                                  min=0,max=1,value=0.5),
                                      selectizeInput("adjust_OS_mutation_signature",
                                                     "Adjust survival analysis with: ",
                                                     choices = c("None","Age","Gender","Stage"),
                                                     selected = "None",
                                                     multiple = FALSE),
                                      
                                      
                                      # sliderInput("slider_mutation_signature_PFS",
                                      #             "Seperate samples for progression free survival analysis by mutational signature cutoff (%): ",
                                      #             min=0,max=1,value=0.5),
                                      actionButton("do_mutation_signature","Go",style="background-color: #7CDBD5")),
                         conditionalPanel(condition="input.do_mutation_signature",
                                          mainPanel(tabsetPanel(
                                            tabPanel("Summary",
                                                     wellPanel(
                                                       h1("Statistics",
                                                          style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                          margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                       div(id="container",
                                                           h4("Number of selected cancer type: "),
                                                           div(textOutput("mutation_signature_summary_disease_number"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                           style="margin-bottom:30px"),
                                                       div(id="container",
                                                           h4("Number of selected samples: "),
                                                           div(textOutput("mutation_signature_summary_sample_number"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                           style="margin-bottom:30px"),
                                                       plotlyOutput("mutation_signature_summary_plots",height=960)),
                                                     #uiOutput("mutation_summary_plots",height="auto")),
                                                     wellPanel(h1("Clinical Attribute",
                                                                  style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                          margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                               selectizeInput("clinical_mutation_signature","Please select clinical data:",
                                                                              choices = c("treatment type","Pre- or On-treatment","RECIST","Age","Gender")),style="margin-bottom:-1px"),
                                                               uiOutput("mutation_signature_summary_clinical_plots"),
                                                     column(12,
                                                       h1("Download",
                                                          style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                          margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                       div(id="container",
                                                           h4("Data format:   "),
                                                           radioButtons("mutation_signature_summary_type","",
                                                                        choices = c("Excel (CSV)","Text (TSV)", "JSON"),
                                                                        inline = TRUE),
                                                           style="margin-bottom:30px"),
                                                       div(downloadButton("mutation_signature_summary_download", "Download"),style="margin-bottom:30px"),
                                                       div(DT::dataTableOutput("mutation_signature_summary_table"),style="background-color: #7CDBD5;overflow-y: scroll;overflow-x: scroll"))
                                            ),
                                            tabPanel("Immunotherapy response",
                                                     #wellPanel (
                                                     wellPanel(
                                                       h1("Meta-analysis across selected cohorts",
                                                          style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                          margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                       plotOutput("mutation_signature_plots_plots_meta",height=480)),
                                                       h1("Analysis in each individual cohort",
                                                                   style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                          margin-top:20px;margin-left:-20px;margin-right:-20px"),
                                                     # div(id="container",
                                                     #     h4("Combined p-value of the meta-analysis for selected cohorts: "),
                                                     #     div(textOutput("mutation_signature_plots_plots_combined_p"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                     #     h4(", which is estimated from single p-values, "),
                                                     #     div(textOutput("mutation_signature_plots_plots_single_p"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                     #     style="margin-bottom:30px"),
                                                                uiOutput("mutation_signature_plots_plots",height="auto")),#),
                                            tabPanel("Overall survival",
                                                     #wellPanel(
                                                     wellPanel(
                                                       h1("Meta-analysis across selected cohorts",
                                                          style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                          margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                       plotOutput("mutation_signature_survival_plots_meta",height=480)),
                                                       h1("Analysis in each individual cohort",
                                                                  style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                                          margin-top:20px;margin-left:-20px;margin-right:-20px"),
                                                     # div(id="container",
                                                     #     h4("Combined p-value of the meta-analysis for selected cohorts: "),
                                                     #     div(textOutput("mutation_signature_survival_plots_combined_p"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                     #     h4(", which is estimated from single p-values, "),
                                                     #     div(textOutput("mutation_signature_survival_plots_single_p"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                     #     style="margin-bottom:30px"),
                                                               uiOutput("mutation_signature_survival_plots",height = "auto")),#),
                                            tabPanel("Progression free survival",
                                                     #wellPanel(
                                                     wellPanel(
                                                       h1("Meta-analysis across selected cohorts",
                                                          style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                          margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                       plotOutput("mutation_signature_PFS_plots_meta",height=480)),
                                                       h1("Analysis in each individual cohort",
                                                                  style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                                          margin-top:20px;margin-left:-20px;margin-right:-20px"),
                                                     # div(id="container",
                                                     #     h4("Combined p-value of the meta-analysis for selected cohorts: "),
                                                     #     div(textOutput("mutation_signature_PFS_plots_combined_p"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                     #     h4(", which is estimated from single p-values, "),
                                                     #     div(textOutput("mutation_signature_PFS_plots_single_p"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                     #     style="margin-bottom:30px"),
                                                               uiOutput("mutation_signature_PFS_plots",height = "auto")),#),
                                            tabPanel("Evaluation",
                                                     wellPanel(h1("Summary of the selected feature",
                                                                  style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                          margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                               DT::dataTableOutput("mutation_signature_evaluation_table")
                                                               #uiOutput("mutation_signature_evaluation_plots")
                                                               ))
                                            )))),
    
          #navbarMenu("Transcriptomic",
               tabPanel ("--Transcriptomic: Expression",
                         h4("Specific signature assessment",style="font-size:25px;
		                                  text-align: center;
		                                  margin-top: 20px;
                                      "),
                         h4("--Expression",style="font-size:25px;
		                                  text-align: center;
		                                  margin-top: 20px;
                                      "),
                         fluidRow(column(width=12,h4("Specific signature assessment module provides a detailed view of one 
                                                     particular feature. The associations with immunotherapy response, 
                                                     overall survival (OS) and progression free survival (PFS) are 
                                                     investigated in the module.",
                                                     style="font-size:20px;
                                                     margin-left: 275px;
                                                     margin-right: 275px;"),
                                         h4("Expression: exploring the associations of gene expression with 
                                            immunotherapy response, OS and PFS.",
                                            style="font-size:20px;
                                            margin-left: 275px;
                                            margin-right: 275px;"),
                                         style="background-color:#7CDBD5; height:180px;margin-bottom:20px")),
                         
                         #fluidRow(column(width=12,style="background-color:#7CDBD5; height:180px;margin-bottom:20px")),
                         # fluidRow(column(width=12,h4("Exploring the association of gene expression to immunotherapy response, overall survival and progression free survival.",style="text-align:center"),
                         #                 style="background-color:#FEDCD2; height:200px;margin-bottom:20px")),
                         sidebarPanel(###### select samples
                                      h4("Select samples",style="color: #663399;font-size: 25px"),
                                      helpText("In the options of 'Study: ' box, three +/- labels indicate three types of treatment. + means received this type of treatment. – means did not receive this type of treatment. The first label is for anti-CTLA-4 treatment, the second one is for anti-PD-1/L1 treatment, and the third one is for combination treatment, anti-PD-1/L1+anti-CTLA-4. For example, 'Melanoma-Chen (140 samples/++-)' means Chen dataset contains 104 samples with anti-CTLA-4 or anti-PD-1/L1 therapy."),
                                      
                                      selectizeInput("data_source_expression",
                                                     "Study: ",
                                                     # choices = c("Melanoma-Auslander" ,"Melanoma-Chen (104 samples/++-)","Melanoma-Gide","Melanoma-Snyder-Nathanson",
                                                     #   "Melanoma-Hugo","Melanoma-Prat","Melanoma-Riaz" ,"Melanoma-Van Allen","Prostate Cancer-Kwek",
                                                     #   "Renal Cell Carcinoma-Miao","Gastric Cancer-Kim","Melanoma-Jerby-Arnon-ValCo2","Melanoma-Chen-Pre-On"),
                                                     choices = c("Melanoma-Auslander (037 samples/+++)",
                                                                 "Melanoma-Chen (104 samples/++-)",
                                                                 "Melanoma-Gide (091 samples/-++)",
                                                                 "Melanoma-Snyder-Nathanson (064 samples/+--)",
                                                                 "Melanoma-Hugo (040 samples/-+-)",
                                                                 "Melanoma-Prat (025 samples/-+-)",
                                                                 "Melanoma-Riaz (139 samples/-+-)",
                                                                 "Melanoma-Van Allen (112 samples/+--)",
                                                                 "Melanoma-Jerby-Arnon-ValCo2 (112 samples/-+-)",
                                                                 "Melanoma-Chen-Pre-On (023 samples)",
                                                                 "Metastatic Urothelial Cancer-Mariathasan (348 samples/-+-)",
                                                                 "Glioblastoma-Cloughesy (029 samples/-+-)",
                                                                 "Prostate Cancer-Kwek (022 samples/+--)",
                                                                 "Renal Cell Carcinoma-Miao (098 samples/-++)",
                                                                 "Gastric Cancer-Kim (061 samples/-+-)"),
                                                     selected = c("Melanoma-Hugo (040 samples/-+-)","Melanoma-Van Allen (112 samples/+--)"),
                                                     multiple = TRUE),
                                      selectizeInput("treatment_expression",
                                                     "Treatment: ",
                                                     choices = NULL,
                                                     multiple = TRUE),
                                      checkboxInput("dynamic_check_expression","Dynamic. Changes of expressions between On- and Pre- treatment in one sample."),
                                      p("Please note, 'Melanoma-Riaz' and 'Melanoma-Gide' provide dynamic analysis."),
                                      selectizeInput("description_expression",
                                                     "Pre- or On-treatment: ",
                                                     choices = NULL,
                                                     multiple = TRUE),
                                      selectizeInput("gene_expression","Insert a gene, for example: CD19",choices=NULL),
                                      ##### Parameter
                                      h4("Parameters of survival analysis",style="color: #663399;font-size: 25px"),
                                      sliderInput("slider_expression_OS",
                                                  "Seperate samples by gene expression cutoff (default value is 0.5, i.e. median): ",
                                                  min=0,max=1,value=0.5),
                                      selectizeInput("adjust_OS_expression",
                                                     "Adjust survival analysis with: ",
                                                     choices = c("None","Age","Gender","Stage"),
                                                     selected = "None",
                                                     multiple = FALSE),
                                      # sliderInput("slider_expression_PFS",
                                      #             "Seperate samples for progression free survival analysis by gene expression cutoff (%): ",
                                      #             min=0,max=1,value=0.5),
                                      actionButton("do_expression","Go",style="background-color: #7CDBD5")),
                         conditionalPanel(condition="input.do_expression",
                                          mainPanel(tabsetPanel(id="expression_tabs",
                                            tabPanel("Summary",
                                                     
                                                     wellPanel(
                                                       h1("Statistics",
                                                          style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                          margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                       div(id="container",
                                                           h4("Number of selected cancer type: "),
                                                           div(textOutput("expression_summary_disease_number"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                           style="margin-bottom:30px"),
                                                       div(id="container",
                                                           h4("Number of selected samples: "),
                                                           div(textOutput("expression_summary_sample_number"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                           style="margin-bottom:30px"),
                                                       #div(id="loading-c",tags$img(src="spinner.gif"),style="text-align:center"),
                                                       plotlyOutput("expression_summary_plots",height=960)),
                                                     wellPanel(id="expression_clinical_attribute",
                                                       h1("Clinical Attribute",
                                                                  style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                          margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                       selectizeInput("clinical_expression","Please select clinical data:",
                                                                              choices = c("treatment type","Pre- or On-treatment","RECIST","Age","Gender")),style="margin-bottom:-1px"),
                                                     uiOutput("expression_summary_clinical_plots"),
                                                     column(12,wellPanel(
                                                       h1("Download",
                                                                  style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                          margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                       div(id="container",
                                                           h4("Data format:   "),
                                                           radioButtons("expression_summary_type","",
                                                                        choices = c("Excel (CSV)","Text (TSV)", "JSON"),
                                                                        inline = TRUE),
                                                           style="margin-bottom:30px"),
                                                       div(downloadButton("expression_summary_download", "Download"),style="margin-bottom:30px"),
                                                       div(DT::dataTableOutput("expression_summary_table"),style="background-color: #7CDBD5;overflow-y: scroll;overflow-x: scroll")))
                                            ),
                                            tabPanel("Immunotherapy response",
                                                     #div(id="loading-d",tags$img(src="spinner.gif"),style="text-align:center"),
                                                     wellPanel(
                                                       h1("Meta-analysis across selected cohorts",
                                                          style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                          margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                       plotOutput("expression_plots_plots_meta",height=480)),
                                                     h1("Analysis in each individual cohort",
                                                                   style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                          margin-top:20px;margin-left:-20px;margin-right:-20px"),
                                                     # div(id="container",
                                                     #     h4("Combined p-value of the meta-analysis for selected cohorts: "),
                                                     #     div(textOutput("expression_plots_plots_combined_p"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                     #     h4(", which is estimated from single p-values, "),
                                                     #     div(textOutput("expression_plots_plots_single_p"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                     #     style="margin-bottom:30px"),
                                                       uiOutput("expression_plots_plots",height = "auto")),
                                            tabPanel("Overall survival",
                                                     #wellPanel(
                                                     wellPanel(
                                                       h1("Meta-analysis across selected cohorts",
                                                          style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                          margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                       plotOutput("expression_survival_plots_meta",height=480)),
                                                       h1("Analysis in each individual cohort",
                                                                  style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                                          margin-top:20px;margin-left:-20px;margin-right:-20px"),
                                                     
                                                     # div(id="container",
                                                     #     h4("Combined p-value of the meta-analysis for selected cohorts: "),
                                                     #     div(textOutput("expression_survival_plots_combined_p"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                     #     h4(", which is estimated from single p-values, "),
                                                     #     div(textOutput("expression_survival_plots_single_p"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                     #     style="margin-bottom:30px"),
                                                               uiOutput("expression_survival_plots",height = "auto")),#),
                                            tabPanel("Progression free survival",
                                                     #wellPanel(
                                                     wellPanel(
                                                       h1("Meta-analysis across selected cohorts",
                                                          style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                          margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                       plotOutput("expression_PFS_plots_meta",height=480)),
                                                       h1("Analysis in each individual cohort",
                                                                  style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                                          margin-top:20px;margin-left:-20px;margin-right:-20px"),
                                                     # div(id="container",
                                                     #     h4("Combined p-value of the meta-analysis for selected cohorts: "),
                                                     #     div(textOutput("expression_PFS_plots_combined_p"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                     #     h4(", which is estimated from single p-values, "),
                                                     #     div(textOutput("expression_PFS_plots_single_p"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                     #     style="margin-bottom:30px"),
                                                                uiOutput("expression_PFS_plots",height = "auto")),#),
                                            tabPanel("Evaluation",
                                                     wellPanel (
                                                       h1("Summary of the selected feature",
                                                                   style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                          margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                       DT::dataTableOutput("expression_evaluation_table")
                                                                #uiOutput("expression_evaluation_plots")
                                                                ))
                                                     
                                          )))),
               tabPanel ("--Transcriptomic: Expression sum",
                         h4("Specific signature assessment",style="font-size:25px;
		                                  text-align: center;
		                                  margin-top: 20px;
                                      "),
                         
                         h4("--Expression sum",style="font-size:25px;
		                                  text-align: center;
		                                  margin-top: 20px;
                                      "),
                         fluidRow(column(width=12,h4("Specific signature assessment module provides a detailed view of one 
                                                     particular feature. The associations with immunotherapy response, 
                                                     overall survival (OS) and progression free survival (PFS) are 
                                                     investigated in the module.",
                                                     style="font-size:20px;
                                                     margin-left: 275px;
                                                     margin-right: 275px;"),
                                         h4("Expression sum: exploring the associations of gene expression sum with 
                                            immunotherapy response, OS and PFS. Expression sum focuses on a list of genes, 
                                            which is a simplified concept to explore gene sets or pathways of interest. 
                                            Please choose either pre-defined gene sets which were collected from ICB-stimulated 
                                            mechanism or define your own gene set.",
                                            style="font-size:20px;
                                            margin-left: 275px;
                                            margin-right: 275px;"),
                                         style="background-color:#7CDBD5; height:180px;margin-bottom:20px")),
                         
                         #fluidRow(column(width=12,style="background-color:#7CDBD5; height:180px;margin-bottom:20px")),
                         # fluidRow(column(width=12,h4("Exploring the association of genes expression sum to immunotherapy response, overall survival and progression free survival.",style="text-align:center"),
                         #                 style="background-color:#FEDCD2; height:200px;margin-bottom:20px")),
                         sidebarPanel(h4("Select samples",style="color: #663399;font-size: 25px"),
                                      helpText("In the options of 'Study: ' box, three +/- labels indicate three types of treatment. + means received this type of treatment. – means did not receive this type of treatment. The first label is for anti-CTLA-4 treatment, the second one is for anti-PD-1/L1 treatment, and the third one is for combination treatment, anti-PD-1/L1+anti-CTLA-4. For example, 'Melanoma-Chen (140 samples/++-)' means Chen dataset contains 104 samples with anti-CTLA-4 or anti-PD-1/L1 therapy."),
                                      
                                      selectizeInput("data_source_expression_sum",
                                                     "Study: ",
                                                     # choices = c("Melanoma-Auslander" ,"Melanoma-Chen","Melanoma-Gide","Melanoma-Snyder-Nathanson",
                                                     #             "Melanoma-Hugo","Melanoma-Prat","Melanoma-Riaz" ,"Melanoma-Van Allen","Prostate Cancer-Kwek",
                                                     #             "Renal Cell Carcinoma-Miao","Gastric Cancer-Kim","Melanoma-Jerby-Arnon-ValCo2","Melanoma-Chen-Pre-On"),
                                                     choices = c("Melanoma-Auslander (037 samples/+++)",
                                                                 "Melanoma-Chen (104 samples/++-)",
                                                                 "Melanoma-Gide (091 samples/-++)",
                                                                 "Melanoma-Snyder-Nathanson (064 samples/+--)",
                                                                 "Melanoma-Hugo (040 samples/-+-)",
                                                                 "Melanoma-Prat (025 samples/-+-)",
                                                                 "Melanoma-Riaz (139 samples/-+-)",
                                                                 "Melanoma-Van Allen (112 samples/+--)",
                                                                 "Melanoma-Jerby-Arnon-ValCo2 (112 samples/-+-)",
                                                                 "Melanoma-Chen-Pre-On (023 samples)",
                                                                 "Metastatic Urothelial Cancer-Mariathasan (348 samples/-+-)",
                                                                 "Glioblastoma-Cloughesy (029 samples/-+-)",
                                                                 "Prostate Cancer-Kwek (022 samples/+--)",
                                                                 "Renal Cell Carcinoma-Miao (098 samples/-++)",
                                                                 "Gastric Cancer-Kim (061 samples/-+-)"
                                                                 ),
                                                     
                                                     selected = c("Melanoma-Hugo (040 samples/-+-)","Melanoma-Van Allen (112 samples/+--)"),
                                                     multiple = TRUE),
                                      selectizeInput("treatment_expression_sum",
                                                     "Treatment: ",
                                                     choices = NULL,
                                                     multiple = TRUE),
                                      checkboxInput("dynamic_check_expression_sum","Dynamic. Changes of genes expression sum between On and Pre treatment in one sample."),
                                      p("Please note, 'Melanoma-Riaz' and 'Melanoma-Gide' provide dynamic analysis."),
                                      selectizeInput("description_expression_sum",
                                                     "Pre- or On-treatment: ",
                                                     choices = NULL,
                                                     multiple = TRUE),
                                      selectizeInput("defined_gene_expression_sum",
                                                     "Pre-defined gene set or user-defined list: ",
                                                     choices = c("user-defined list","DNA_damage_response","PDL1_expression_and_PD1_checkpoint_pathway_in_cancer","T_cell_receptor_signaling_pathway","B_cell_receptor_signaling_pathway","Cell_cycle_control","Survival_cell_death_regulation_signaling"),
                                                     multiple = FALSE),
                                      
                                      selectizeInput("gene_expression_sum","Insert a gene set, for example: CD4 CD6 CD8A CD8B",
                                                     choices=NULL,multiple=TRUE),
                                      ##### Parameter
                                      h4("Parameters of survival analysis",style="color: #663399;font-size: 25px"),
                                      sliderInput("slider_expression_sum_OS",
                                                  "Seperate samples by expression sum cutoff (default value is 0.5, i.e. median): ",
                                                  min=0,max=1,value=0.5),
                                      selectizeInput("adjust_OS_expression_sum",
                                                     "Adjust survival analysis with: ",
                                                     choices = c("None","Age","Gender","Stage"),
                                                     selected = "None",
                                                     multiple = FALSE),
                                      
                                      # sliderInput("slider_expression_sum_PFS",
                                      #             "Seperate samples for progression free survival analysis by expression sum cutoff (%): ",
                                      #             min=0,max=1,value=0.5),
                                      actionButton("do_expression_sum","Go",style="background-color: #7CDBD5")),
                         conditionalPanel(condition="input.do_expression_sum",
                                          mainPanel(tabsetPanel(
                                            tabPanel("Summary",
                                                     wellPanel(
                                                       h1("Statistics",
                                                                  style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                                  margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                       div(id="container",
                                                           h4("Number of selected cancer type: "),
                                                           div(textOutput("expression_sum_summary_disease_number"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                           style="margin-bottom:30px"),
                                                       div(id="container",
                                                           h4("Number of selected samples: "),
                                                           div(textOutput("expression_sum_summary_sample_number"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                           style="margin-bottom:30px"),
                                                       plotlyOutput("expression_sum_summary_plots",height=960)),
                                                     wellPanel(h1("Clinical Attribute",
                                                                  style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                          margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                               selectizeInput("clinical_expression_sum","Please select clinical data:",
                                                                              choices = c("treatment type","Pre- or On-treatment","RECIST","Age","Gender")),style="margin-bottom:-1px"),
                                                               uiOutput("expression_sum_summary_clinical_plots"),
                                                     column(12,
                                                            h1("Download",
                                                                  style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                          margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                       div(id="container",
                                                           h4("Data format:   "),
                                                           radioButtons("expression_sum_summary_type","",
                                                                        choices = c("Excel (CSV)","Text (TSV)", "JSON"),
                                                                        inline = TRUE),
                                                           style="margin-bottom:30px"),
                                                       div(downloadButton("expression_sum_summary_download", "Download"),style="margin-bottom:30px"),
                                                       div(DT::dataTableOutput("expression_sum_summary_table"),style="background-color: #7CDBD5;overflow-y: scroll;overflow-x: scroll"))
                                            ),
                                            tabPanel("Immunotherapy response",
                                                     #wellPanel(
                                                     wellPanel(
                                                       h1("Meta-analysis across selected cohorts",
                                                          style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                          margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                       plotOutput("expression_sum_plots_plots_meta",height=480)),
                                                       h1("Analysis in each individual cohort",
                                                                  style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                          margin-top:20px;margin-left:-20px;margin-right:-20px"),
                                                     # div(id="container",
                                                     #     h4("Combined p-value of the meta-analysis for selected cohorts: "),
                                                     #     div(textOutput("expression_sum_plots_plots_combined_p"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                     #     h4(", which is estimated from single p-values, "),
                                                     #     div(textOutput("expression_sum_plots_plots_single_p"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                     #     style="margin-bottom:30px"),
                                                               uiOutput("expression_sum_plots_plots",height = "auto")),#),
                                            tabPanel("Overall survival",
                                                     #wellPanel(
                                                     wellPanel(
                                                       h1("Meta-analysis across selected cohorts",
                                                          style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                          margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                       plotOutput("expression_sum_survival_plots_meta",height=480)),
                                                       h1("Analysis in each individual cohort",
                                                                  style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                                          margin-top:20px;margin-left:-20px;margin-right:-20px"),
                                                     # div(id="container",
                                                     #     h4("Combined p-value of the meta-analysis for selected cohorts: "),
                                                     #     div(textOutput("expression_sum_survival_plots_combined_p"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                     #     h4(", which is estimated from single p-values, "),
                                                     #     div(textOutput("expression_sum_survival_plots_single_p"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                     #     style="margin-bottom:30px"),
                                                               uiOutput("expression_sum_survival_plots",height = "auto")),#),
                                            tabPanel("Progression free survival",
                                                     #wellPanel(
                                                     wellPanel(
                                                       h1("Meta-analysis across selected cohorts",
                                                          style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                          margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                       plotOutput("expression_sum_PFS_plots_meta",height=480)),
                                                       h1("Analysis in each individual cohort",
                                                                  style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                                          margin-top:20px;margin-left:-20px;margin-right:-20px"),
                                                     # div(id="container",
                                                     #     h4("Combined p-value of the meta-analysis for selected cohorts: "),
                                                     #     div(textOutput("expression_sum_PFS_plots_combined_p"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                     #     h4(", which is estimated from single p-values, "),
                                                     #     div(textOutput("expression_sum_PFS_plots_single_p"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                     #     style="margin-bottom:30px"),
                                                               uiOutput("expression_sum_PFS_plots",height = "auto")),#),
                                            tabPanel("Evaluation",
                                                     wellPanel (h1("Summary of the selected feature",
                                                                   style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                          margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                                DT::dataTableOutput("expression_sum_evaluation_table")
                                                                #uiOutput("expression_sum_evaluation_plots")
                                                                ))
                                            )))),
               tabPanel ("--Transcriptomic: Expression relation pairs",
                         h4("Specific signature assessment",style="font-size:25px;
		                                  text-align: center;
		                                  margin-top: 20px;
                                      "),
                         
                         h4("--Expression relation pairs",style="font-size:25px;
		                                  text-align: center;
		                                  margin-top: 20px;
                                      "),
                         fluidRow(column(width=12,h4("Specific signature assessment module provides a detailed view of one 
                                                     particular feature. The associations with immunotherapy response, 
                                                     overall survival (OS) and progression free survival (PFS) are 
                                                     investigated in the module.",
                                                     style="font-size:20px;
                                                     margin-left: 275px;
                                                     margin-right: 275px;"),
                                         h4("Expression relation pairs: exploring the associations of gene pairs with 
                                            immunotherapy response, OS and PFS. Gene expression relation pairs is a summed 
                                            score of relative comparison of gene pairs.",
                                            style="font-size:20px;
                                            margin-left: 275px;
                                            margin-right: 275px;"),
                                         style="background-color:#7CDBD5; height:180px;margin-bottom:20px")),
                         
                         #fluidRow(column(width=12,style="background-color:#7CDBD5; height:180px;margin-bottom:20px")),
                         # fluidRow(column(width=12,h4("Exploring the association of gene expression relation pairs to immunotherapy response, overall survival and progression free survival.",style="text-align:center"),
                         #                 style="background-color:#FEDCD2; height:200px;margin-bottom:20px")),
                         sidebarPanel(h4("Select samples",style="color: #663399;font-size: 25px"),
                                      helpText("In the options of 'Study: ' box, three +/- labels indicate three types of treatment. + means received this type of treatment. – means did not receive this type of treatment. The first label is for anti-CTLA-4 treatment, the second one is for anti-PD-1/L1 treatment, and the third one is for combination treatment, anti-PD-1/L1+anti-CTLA-4. For example, 'Melanoma-Chen (140 samples/++-)' means Chen dataset contains 104 samples with anti-CTLA-4 or anti-PD-1/L1 therapy."),
                                      
                                      selectizeInput("data_source_expression_pairs",
                                                     "Study: ",
                                                     # choices = c("Melanoma-Auslander" ,"Melanoma-Chen","Melanoma-Gide","Melanoma-Snyder-Nathanson",
                                                     #             "Melanoma-Hugo","Melanoma-Prat","Melanoma-Riaz" ,"Melanoma-Van Allen","Prostate Cancer-Kwek",
                                                     #             "Renal Cell Carcinoma-Miao","Gastric Cancer-Kim","Melanoma-Jerby-Arnon-ValCo2"),
                                                     choices = c("Melanoma-Auslander (037 samples/+++)",
                                                                 "Melanoma-Chen (104 samples/++-)",
                                                                 "Melanoma-Gide (091 samples/-++)",
                                                                 "Melanoma-Snyder-Nathanson (064 samples/+--)",
                                                                 "Melanoma-Hugo (040 samples/-+-)",
                                                                 "Melanoma-Prat (025 samples/-+-)",
                                                                 "Melanoma-Riaz (139 samples/-+-)",
                                                                 "Melanoma-Van Allen (112 samples/+--)",
                                                                 "Melanoma-Jerby-Arnon-ValCo2 (112 samples/-+-)",
                                                                 "Melanoma-Chen-Pre-On (023 samples)",
                                                                 "Metastatic Urothelial Cancer-Mariathasan (348 samples/-+-)",
                                                                 "Glioblastoma-Cloughesy (029 samples/-+-)",
                                                                 "Prostate Cancer-Kwek (022 samples/+--)",
                                                                 "Renal Cell Carcinoma-Miao (098 samples/-++)",
                                                                 "Gastric Cancer-Kim (061 samples/-+-)"),
                                                     
                                                     selected = c("Melanoma-Hugo (040 samples/-+-)","Melanoma-Van Allen (112 samples/+--)"),
                                                     multiple = TRUE),
                                      selectizeInput("treatment_expression_pairs",
                                                     "Treatment: ",
                                                     choices = NULL,
                                                     multiple = TRUE),
                                      selectizeInput("description_expression_pairs",
                                                     "Pre- or On-treatment: ",
                                                     choices = NULL,
                                                     multiple = TRUE),
                                      
                                      actionButton("add_expression_pairs","Add gene pairs"),
                                      p(strong("Please click 'Add gene pairs' button to insert more gene pairs.")),
                                      p("For example:"),
                                      p("Gene pairs #2: PDCD1,TNFRSF4"),
                                      p("Gene pairs #3: CTLA4,TNFRSF4"),
                                      p("Gene pairs #4: CD28 CD86"),
                                      p("Gene pairs #5: CD27 PDCD1"),
                                     p("For more gene relation pairs which were proved related with immunotheray response, please refer to",a(href="https://www.nature.com/articles/s41591-018-0157-9/","Auslander, et al.")),
                                      p("Gene expression relations, are defined as a sum score for pairwise
                                                    comparison of gene expressions."),
                                      p(withMathJax("$$F=\\sum F_{i,j}, F_{i,j}=\\binom{1, exp\\left ( i \\right ) > exp\\left ( j \\right )}{0, otherwise}$$")),
                                      p("Where F is the sum score, F(i,j) is the score derived by comparing expression between gene 
                                      i and j. For example, there are m gene pairs, G1 and G1', G2 and G2', ., Gm and Gm'. If G1 > G1', 
                                        this gene pair returns a score of 1, otherwise a score of 0.  The summed score is obtained by 
                                        adding the score from the m pairs.  "),
                                      selectizeInput("gene_expression_pairs_1","Gene pairs #1",choices=NULL,multiple=TRUE,selected = NULL,options=list(maxItems=2)),
                                      selectizeInput("gene_expression_pairs_2","Gene pairs #2",choices=NULL,multiple=TRUE,selected = NULL,options=list(maxItems=2)),
                                      #selectizeInput("gene_expression_pairs_3","Gene pairs #3",choices=NULL,multiple=TRUE,selected = NULL,options=list(maxItems=2)),
                                      uiOutput("gene_expression_pairs"),
                                     
                                     
                                     ##### Parameter
                                     h4("Parameters of survival analysis",style="color: #663399;font-size: 25px"),
                                     sliderInput("slider_expression_pairs_OS",
                                                 "Seperate samples by sum of gene relation pairs (F): ",
                                                 min=0,max=2,value=0),
                                     selectizeInput("adjust_OS_expression_pairs",
                                                    "Adjust survival analysis with: ",
                                                    choices = c("None","Age","Gender","Stage"),
                                                    selected = "None",
                                                    multiple = FALSE),
                                      
                                      #uiOutput("slider_expression_pairs_OS"),
                                      #uiOutput("slider_expression_pairs_PFS"),
                                      
                                      actionButton("do_expression_pairs","Go",style="background-color: #7CDBD5")),
                         conditionalPanel(condition="input.do_expression_pairs",
                                          mainPanel(tabsetPanel(
                                            tabPanel("Summary",
                                                     wellPanel(
                                                       h1("Statistics",
                                                          style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                          margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                       div(id="container",
                                                           h4("Number of selected cancer type: "),
                                                           div(textOutput("expression_pairs_summary_disease_number"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                           style="margin-bottom:30px"),
                                                       div(id="container",
                                                           h4("Number of selected samples: "),
                                                           div(textOutput("expression_pairs_summary_sample_number"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                           style="margin-bottom:30px"),
                                                       plotlyOutput("expression_pairs_summary_plots",height=960)),
                                                     wellPanel(h1("Clinical Attribute",
                                                                  style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                          margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                               selectizeInput("clinical_expression_pairs","Please select clinical data:",
                                                                              choices = c("treatment type","Pre- or On-treatment","RECIST","Age","Gender")),style="margin-bottom:-1px"),
                                                               uiOutput("expression_pairs_summary_clinical_plots"),
                                                     column(12,
                                                       h1("Download",
                                                          style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                          margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                       div(id="container",
                                                           h4("Data format:   "),
                                                           radioButtons("expression_pairs_summary_type","",
                                                                        choices = c("Excel (CSV)","Text (TSV)", "JSON"),
                                                                        inline = TRUE),
                                                           style="margin-bottom:30px"),
                                                       div(downloadButton("expression_pairs_summary_download", "Download"),style="margin-bottom:30px"),
                                                       div(DT::dataTableOutput("expression_pairs_summary_table"),style="background-color: #7CDBD5;overflow-y: scroll;overflow-x: scroll"))
                                            ),
                                            tabPanel("Immunotherapy response",
                                                     #wellPanel (
                                                     wellPanel(
                                                       h1("Meta-analysis across selected cohorts",
                                                          style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                          margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                       plotOutput("expression_pairs_plots_plots_meta",height=480)),
                                                       h1("Analysis in each individual cohort",
                                                                   style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                          margin-top:20px;margin-left:-20px;margin-right:-20px"),
                                                     # div(id="container",
                                                     #     h4("Combined p-value of the meta-analysis for selected cohorts: "),
                                                     #     div(textOutput("expression_pairs_plots_plots_combined_p"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                     #     h4(", which is estimated from single p-values, "),
                                                     #     div(textOutput("expression_pairs_plots_plots_single_p"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                     #     style="margin-bottom:30px"),
                                                                uiOutput("expression_pairs_plots_plots",height="auto")),#),
                                            tabPanel("Overall survival",
                                                     #wellPanel(
                                                     wellPanel(
                                                       h1("Meta-analysis across selected cohorts",
                                                          style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                          margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                       plotOutput("expression_pairs_survival_plots_meta",height=480)),
                                                       h1("Analysis in each individual cohort",
                                                                  style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                                          margin-top:20px;margin-left:-20px;margin-right:-20px"),
                                                     # div(id="container",
                                                     #     h4("Combined p-value of the meta-analysis for selected cohorts: "),
                                                     #     div(textOutput("expression_pairs_survival_plots_combined_p"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                     #     h4(", which is estimated from single p-values, "),
                                                     #     div(textOutput("expression_pairs_survival_plots_single_p"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                     #     style="margin-bottom:30px"),
                                                               uiOutput("expression_pairs_survival_plots",height = "auto")),#),
                                            tabPanel("Progression free survival",
                                                     #wellPanel(
                                                     wellPanel(
                                                       h1("Meta-analysis across selected cohorts",
                                                          style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                          margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                       plotOutput("expression_pairs_PFS_plots_meta",height=480)),
                                                       h1("Analysis in each individual cohort",
                                                                  style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                                          margin-top:20px;margin-left:-20px;margin-right:-20px"),
                                                     # div(id="container",
                                                     #     h4("Combined p-value of the meta-analysis for selected cohorts: "),
                                                     #     div(textOutput("expression_pairs_PFS_plots_combined_p"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                     #     h4(", which is estimated from single p-values, "),
                                                     #     div(textOutput("expression_pairs_PFS_plots_single_p"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                     #     style="margin-bottom:30px"),
                                                               uiOutput("expression_pairs_PFS_plots",height = "auto")),#),
                                            tabPanel("Evaluation",
                                                     wellPanel (h1("Summary of the selected feature",
                                                                   style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                          margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                                DT::dataTableOutput("expression_pairs_evaluation_table")
                                                                #uiOutput("expression_pairs_evaluation_plots")
                                                                ))
                                            )))),
               tabPanel ("--Transcriptomic: Immune cell components",
                         h4("Specific signature assessment",style="font-size:25px;
		                                  text-align: center;
                            margin-top: 20px;
                            "),
                         
                         h4("--Immune cell components",style="font-size:25px;
		                                  text-align: center;
		                                  margin-top: 20px;
                                      "),
                         fluidRow(column(width=12,h4("Specific signature assessment module provides a detailed view of one 
                                                     particular feature. The associations with immunotherapy response, 
                                                     overall survival (OS) and progression free survival (PFS) are 
                                                     investigated in the module.",
                                                     style="font-size:20px;
                                                     margin-left: 275px;
                                                     margin-right: 275px;"),
                                         h4("Immune cell components: exploring the associations of immune cell proportion with 
                                            immunotherapy response, OS and PFS. Immune cell components were generated from gene 
                                            expression profiles by using CIBERSORT.Abundances of 22 immune cell types were 
                                            estimated from mixed gene expression data. The values of immune cell components 
                                            denote the cell type proportions.",
                                            style="font-size:20px;
                                            margin-left: 275px;
                                            margin-right: 275px;"),
                                         style="background-color:#7CDBD5; height:180px;margin-bottom:20px")),
                         
                         #fluidRow(column(width=12,style="background-color:#7CDBD5; height:180px;margin-bottom:20px")),
                         # fluidRow(column(width=12,h4("Exploring the association of immune cell proportion to immunotherapy response, overall survival and progression free survival.",style="text-align:center"),
                         #                 style="background-color:#FEDCD2; height:200px;margin-bottom:20px")),
                         sidebarPanel(h4("Select samples",style="color: #663399;font-size:25px"),
                                      helpText("In the options of 'Study: ' box, three +/- labels indicate three types of treatment. + means received this type of treatment. – means did not receive this type of treatment. The first label is for anti-CTLA-4 treatment, the second one is for anti-PD-1/L1 treatment, and the third one is for combination treatment, anti-PD-1/L1+anti-CTLA-4. For example, 'Melanoma-Chen (140 samples/++-)' means Chen dataset contains 104 samples with anti-CTLA-4 or anti-PD-1/L1 therapy."),
                                      
                                      selectizeInput("data_source_cibersort",
                                                     "Study: ",
                                                     # choices = c("Melanoma-Auslander" ,"Melanoma-Chen","Melanoma-Gide","Melanoma-Snyder-Nathanson",
                                                     #             "Melanoma-Hugo","Melanoma-Prat","Melanoma-Riaz" ,"Melanoma-Van Allen","Prostate Cancer-Kwek",
                                                     #             "Renal Cell Carcinoma-Miao","Gastric Cancer-Kim"),
                                                     choices = c("Melanoma-Auslander (037 samples/+++)",
                                                                 "Melanoma-Chen (104 samples/++-)",
                                                                 "Melanoma-Gide (091 samples/-++)",
                                                                 "Melanoma-Snyder-Nathanson (064 samples/+--)",
                                                                 "Melanoma-Hugo (040 samples/-+-)",
                                                                 "Melanoma-Prat (025 samples/-+-)",
                                                                 "Melanoma-Riaz (139 samples/-+-)",
                                                                 "Melanoma-Van Allen (112 samples/+--)",
                                                                 "Melanoma-Jerby-Arnon-ValCo2 (112 samples/-+-)",
                                                                 "Melanoma-Chen-Pre-On (023 samples)",
                                                                 "Metastatic Urothelial Cancer-Mariathasan (348 samples/-+-)",
                                                                 "Glioblastoma-Cloughesy (029 samples/-+-)",
                                                                 "Prostate Cancer-Kwek (022 samples/+--)",
                                                                 "Renal Cell Carcinoma-Miao (098 samples/-++)",
                                                                 "Gastric Cancer-Kim (061 samples/-+-)"),
                                                     
                                                     selected = c("Melanoma-Hugo (040 samples/-+-)","Melanoma-Van Allen (112 samples/+--)"),
                                                     multiple = TRUE),
                                      selectizeInput("treatment_cibersort",
                                                     "Treatment: ",
                                                     choices = NULL,
                                                     multiple = TRUE),
                                      checkboxInput("dynamic_check_cibersort","Dynamic. Changes of immune cell components between On and Pre treatment in one sample."),
                                      p("Please note, 'Melanoma-Riaz' and 'Melanoma-Gide' provide dynamic analysis."),
                                      selectizeInput("description_cibersort",
                                                     "Pre- or On-treatment: ",
                                                     choices = NULL,
                                                     multiple = TRUE),
                                      selectizeInput("immucell_cibersort","Immune cell type: ",
                                                     choices = sort(c("B.cells.naive","B.cells.memory","Plasma.cells","T.cells.CD8","T.cells.CD4.naive","T.cells.CD4.memory.resting","T.cells.CD4.memory.activated","T.cells.follicular.helper","T.cells.regulatory..Tregs.","T.cells.gamma.delta","NK.cells.resting","NK.cells.activated","Monocytes","Macrophages.M0","Macrophages.M1","Macrophages.M2","Dendritic.cells.resting","Dendritic.cells.activated","Mast.cells.resting","Mast.cells.activated","Eosinophils","Neutrophils")),
                                                     selected = "Macrophages.M1"),
                                      ##### Parameter
                                      h4("Parameters of survival analysis",style="color: #663399;font-size: 25px"),
                                      sliderInput("slider_cibersort_OS",
                                                  "Seperate samples by immune cell infiltration cutoff (default value is 0.5, i.e. median): ",
                                                  min=0,max=1,value=0.5),
                                      selectizeInput("adjust_OS_cibersort",
                                                     "Adjust survival analysis with: ",
                                                     choices = c("None","Age","Gender","Stage"),
                                                     selected = "None",
                                                     multiple = FALSE),
                                      
                                      # sliderInput("slider_cibersort_PFS",
                                      #             "Seperate samples for progression free survival analysis by immune cell infiltration cutoff (%): ",
                                      #             min=0,max=1,value=0.5),
                                      
                                      actionButton("do_cibersort","Go",style="background-color: #7CDBD5")),
                         conditionalPanel(condition="input.do_cibersort",
                                          mainPanel(tabsetPanel(
                                            tabPanel("Summary",
                                                     wellPanel(
                                                       h1("Statistics",
                                                          style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                                  margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                       div(id="container",
                                                           h4("Number of selected cancer type: "),
                                                           div(textOutput("cibersort_summary_disease_number"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                           style="margin-bottom:30px"),
                                                       div(id="container",
                                                           h4("Number of selected samples: "),
                                                           div(textOutput("cibersort_summary_sample_number"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                           style="margin-bottom:30px"),
                                                       plotlyOutput("cibersort_summary_plots",height=960)),
                                                     wellPanel(h1("Clinical Attribute",
                                                                  style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                          margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                               selectizeInput("clinical_cibersort","Please select clinical data:",
                                                                              choices = c("treatment type","Pre- or On-treatment","RECIST","Age","Gender")),style="margin-bottom:-1px"),
                                                               uiOutput("cibersort_summary_clinical_plots"),
                                                     column(12,
                                                       h1("Download",
                                                          style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                          margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                       div(id="container",
                                                           h4("Data format:   "),
                                                           radioButtons("cibersort_summary_type","",
                                                                        choices = c("Excel (CSV)","Text (TSV)", "JSON"),
                                                                        inline = TRUE),
                                                           style="margin-bottom:30px"),
                                                       div(downloadButton("cibersort_summary_download", "Download"),style="margin-bottom:30px"),
                                                       div(DT::dataTableOutput("cibersort_summary_table"),style="background-color: #7CDBD5;overflow-y: scroll;overflow-x: scroll"))
                                            ),
                                            tabPanel("Immunotherapy response",
                                                     #wellPanel(
                                                     wellPanel(
                                                       h1("Meta-analysis across selected cohorts",
                                                          style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                          margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                       plotOutput("cibersort_plots_plots_meta",height=480)),
                                                       h1("Analysis in each individual cohort",
                                                                  style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                          margin-top:20px;margin-left:-20px;margin-right:-20px"),
                                                     # div(id="container",
                                                     #     h4("Combined p-value of the meta-analysis for selected cohorts: "),
                                                     #     div(textOutput("cibersort_plots_plots_combined_p"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                     #     h4(", which is estimated from single p-values, "),
                                                     #     div(textOutput("cibersort_plots_plots_single_p"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                     #     style="margin-bottom:30px"),
                                                               uiOutput("cibersort_plots_plots",height="auto")),#),
                                            tabPanel("Overall survival",
                                                     #wellPanel(
                                                     wellPanel(
                                                       h1("Meta-analysis across selected cohorts",
                                                          style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                          margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                       plotOutput("cibersort_survival_plots_meta",height=480)),
                                                       h1("Analysis in each individual cohorte",
                                                                  style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                                          margin-top:20px;margin-left:-20px;margin-right:-20px"),
                                                     # div(id="container",
                                                     #     h4("Combined p-value of the meta-analysis for selected cohorts: "),
                                                     #     div(textOutput("cibersort_survival_plots_combined_p"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                     #     h4(", which is estimated from single p-values, "),
                                                     #     div(textOutput("cibersort_survival_plots_single_p"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                     #     style="margin-bottom:30px"),
                                                               uiOutput("cibersort_survival_plots",height = "auto")),#),
                                            tabPanel("Progression free survival",
                                                     #wellPanel(
                                                     wellPanel(
                                                       h1("Meta-analysis across selected cohorts",
                                                          style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                          margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                       plotOutput("cibersort_PFS_plots_meta",height=480)),
                                                       h1("Analysis in each individual cohort",
                                                                  style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                                          margin-top:20px;margin-left:-20px;margin-right:-20px"),
                                                     # div(id="container",
                                                     #     h4("Combined p-value of the meta-analysis for selected cohorts: "),
                                                     #     div(textOutput("cibersort_PFS_plots_combined_p"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                     #     h4(", which is estimated from single p-values, "),
                                                     #     div(textOutput("cibersort_PFS_plots_single_p"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                     #     style="margin-bottom:30px"),
                                                               uiOutput("cibersort_PFS_plots",height = "auto")),#),
                                            tabPanel("Evaluation",
                                                     wellPanel (h1("Summary of the selected feature",
                                                                   style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                          margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                                DT::dataTableOutput("cibersort_evaluation_table")
                                                                #uiOutput("cibersort_evaluation_plots")
                                                                ))
                                            )))),
    tabPanel ("--Integration",
              h4("Specific signature assessment",style="font-size:25px;
		                                  text-align: center;
                            margin-top: 20px;
                            "),
              
              h4("--Integration",style="font-size:25px;
		                                  text-align: center;
		                                  margin-top: 20px;
                                      "),
              fluidRow(column(width=12,h4("Specific signature assessment module provides a detailed view of one 
                                                     particular feature. The associations with immunotherapy response, 
                                          overall survival (OS) and progression free survival (PFS) are 
                                          investigated in the module.",
                                          style="font-size:20px;
                                          margin-left: 275px;
                                          margin-right: 275px;"),
                              h4("Integration: exploring the associations of any two signatures with 
                                 immunotherapy response, OS and PFS. The two combined signatures can be selected 
                                 from either genetic and/or transcriptomic features. Samples will be split into 
                                 X-high/Y-high, X-high/Y-low, X-low/Y-high, and X-low/Y-low groups based on two interactive 
                                 sliders.",
                                 style="font-size:20px;
                                 margin-left: 275px;
                                 margin-right: 275px;"),
                              style="background-color:#7CDBD5; height:180px;margin-bottom:20px")),
              
              #fluidRow(column(width=12,style="background-color:#7CDBD5; height:180px;margin-bottom:20px")),
              # fluidRow(column(width=12,h4("Exploring the association of any two features, one as the X variable and the other as the Y variable, to immunotherapy response, overall survival and progression free survival.",style="text-align:center"),
              #                 style="background-color:#DF744A; height:200px;margin-bottom:20px")),
              sidebarPanel(
                wellPanel(
                  h4("X variable",style="color: #663399;font-size: 25px"),
                  selectInput("xaxis_multi_dimensions",
                              "Features: ",
                              choices = c("expression","expression sum","expression relation pairs","immune cell components","mutation","mutational loads","mutational signatures"),
                              multiple = FALSE,
                              selected = "mutational loads"),
                  conditionalPanel(condition="input.xaxis_multi_dimensions!='expression relation pairs'",
                                   uiOutput("xaxis_gene_multi_dimensions")),
                  conditionalPanel(condition="input.xaxis_multi_dimensions=='expression relation pairs'",
                                   actionButton("xaxis_add_multi_dimensions","Add gene pairs"),
                                   uiOutput("xaxis_gene_multi_dimensions_x")),
                  uiOutput("slider_multi_dimensions_x")),
                wellPanel(
                  h4("Y variable",style="color: #663399;font-size: 25px"),
                  selectInput("yaxis_multi_dimensions",
                              "Features: ",
                              choices = c("expression","expression sum","expression relation pairs","immune cell components","mutation","mutational loads","mutational signatures"),
                              multiple = FALSE,
                              selected = "immune cell components"),
                  conditionalPanel(condition="input.yaxis_multi_dimensions!='expression relation pairs'",
                                   uiOutput("yaxis_gene_multi_dimensions")),
                  conditionalPanel(condition="input.yaxis_multi_dimensions=='expression relation pairs'",
                                   actionButton("yaxis_add_multi_dimensions","Add gene pairs"),
                                   uiOutput("yaxis_gene_multi_dimensions_y")),
                  
                  uiOutput("slider_multi_dimensions_y")),
                wellPanel (
                  h4("Select samples",style="color: #663399;font-size: 25px"),
                  helpText("In the options of 'Study: ' box, three +/- labels indicate three types of treatment. + means received this type of treatment. – means did not receive this type of treatment. The first label is for anti-CTLA-4 treatment, the second one is for anti-PD-1/L1 treatment, and the third one is for combination treatment, anti-PD-1/L1+anti-CTLA-4. For example, 'Melanoma-Chen (140 samples/++-)' means Chen dataset contains 104 samples with anti-CTLA-4 or anti-PD-1/L1 therapy."),
                  
                  selectizeInput("data_source_multi_dimensions",
                                 "Study: ",
                                 # choices = c("Melanoma-Hugo","Melanoma-Riaz","Melanoma-Samstein",
                                 #             "Melanoma-Snyder-Nathanson","Melanoma-Van,Allen","Hepatocellular,Carcinoma-Harding",
                                 #             "Non-Small,Cell,Lung,Cancer-Hira,Rizvi","Non-Small,Cell,Lung,Cancer-Naiyer,Rizvi","Renal,Cell,Carcinoma-Miao",
                                 #             "Non-Small,Cell,Lung,Cancer-Samstein","Bladder,Cancer-Samstein","Breast,Cancer-Samstein",
                                 #             "Cancer,of,Unknown,Primary-Samstein","Colorectal,Cancer-Samstein","Esophagogastric,Cancer-Samstein",
                                 #             "Glioma-Samstein","Head,and,Neck,Cancer-Samstein","Renal,Cell,Carcinoma-Samstein",
                                 #             "Skin,Cancer,,Non-Melanoma-Samstein","Melanoma-Auslander","Melanoma-Chen",
                                 #             "Melanoma-Gide","Melanoma-Prat","Prostate,Cancer-Kwek",
                                 #             "Gastric,Cancer-Kim","Melanoma-Jerby-Arnon-ValCo2"),
                                 choices = c("Melanoma-Hugo (040 samples/-+-)",
                                             "Melanoma-Riaz (139 samples/-+-)",
                                             "Melanoma-Samstein (320 samples/+++)",
                                             "Melanoma-Snyder-Nathanson (064 samples/+--)",
                                             "Melanoma-Van Allen (112 samples/+--)",
                                             "Melanoma-Auslander (037 samples/+++)",
                                             "Melanoma-Chen (104 samples/++-)",
                                             "Melanoma-Gide (091 samples/-++)",
                                             "Melanoma-Prat (025 samples/-+-)",
                                             "Melanoma-Jerby-Arnon-ValCo2 (112 samples/-+-)",
                                             "Hepatocellular Carcinoma-Harding (031 samples/-+-)",
                                             "Non-Small Cell Lung Cancer-Hira Rizvi (240 samples/-++)",
                                             "Non-Small Cell Lung Cancer-Naiyer Rizvi (035 samples/-+-)",
                                             "Renal Cell Carcinoma-Miao (098 samples/-++)",
                                             "Non-Small Cell Lung Cancer-Samstein (350 samples/-++)",
                                             "Metastatic Urothelial Cancer-Mariathasan (348 samples/-+-)",
                                             "Glioblastoma-Cloughesy (029 samples/-+-)",
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
                                             "Basal cell carcinoma-Yost (015 samples/-+-)"),
                                 selected = c("Melanoma-Hugo (040 samples/-+-)","Melanoma-Van Allen (112 samples/+--)"),
                                 multiple = TRUE),
                  selectizeInput("treatment_multi_dimensions",
                                 "Treatment: ",
                                 choices = NULL,
                                 multiple = TRUE),
                  selectizeInput("description_multi_dimensions",
                                 "Pre- or On-treatment: ",
                                 choices = NULL,
                                 multiple = TRUE),
                  ##### Parameter
                  h4("Parameters of survival analysis",style="color: #663399;font-size: 25px"),
                  
                  selectizeInput("adjust_OS_multi_dimensions",
                                 "Adjust survival analysis with: ",
                                 choices = c("None","Age","Gender","Stage"),
                                 selected = "None",
                                 multiple = FALSE),
                  # uiOutput("slider_multi_dimensions_x"),
                  # uiOutput("slider_multi_dimensions_y"),
                  # 
                  actionButton("do_multi_dimensions","Go",style="background-color: #7CDBD5"))
              ),
              conditionalPanel(condition="input.do_multi_dimensions",
                               mainPanel(tabsetPanel(
                                 tabPanel("Summary",
                                          wellPanel(
                                            h1("Statistics",
                                               style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                                  margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                            div(id="container",
                                                h4("Number of selected cancer type: "),
                                                div(textOutput("multi_dimensions_summary_disease_number"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                style="margin-bottom:30px"),
                                            div(id="container",
                                                h4("Number of selected samples: "),
                                                div(textOutput("multi_dimensions_summary_sample_number"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                style="margin-bottom:30px"),
                                            plotlyOutput("multi_dimensions_summary_plots",height=960)),
                                          wellPanel(h1("Clinical Attribute",
                                                       style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                          margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                    selectizeInput("clinical_multi_dimensions","Please select clinical data:",
                                                                   choices = c("treatment type","Pre- or On-treatment","RECIST","Age","Gender")),style="margin-bottom:-1px"),
                                                    uiOutput("multi_dimensions_summary_clinical_plots"),
                                          column(12,
                                            h1("Download",
                                               style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                          margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                            div(id="container",
                                                h4("Data format:   "),
                                                radioButtons("multi_dimensions_summary_type","",
                                                             choices = c("Excel (CSV)","Text (TSV)", "JSON"),
                                                             inline = TRUE),
                                                style="margin-bottom:30px"),
                                            div(downloadButton("multi_dimensions_summary_download", "Download"),style="margin-bottom:30px"),
                                            div(DT::dataTableOutput("multi_dimensions_summary_table"),style="background-color: #7CDBD5;overflow-y: scroll;overflow-x: scroll"))
                                 ),
                                 tabPanel("Immunotherapy response",
                                          # wellPanel (uiOutput("slider_multi_dimensions_x"),
                                          #            uiOutput("slider_multi_dimensions_y")),
                                           #wellPanel (
                                          # wellPanel(
                                          #   h1("Meta-analysis across selected cohorts",
                                          #      style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                          #                 margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                          #   plotOutput("multi_dimensions_plots_plots_meta",height=480)),
                                          # wellPanel(
                                          #   h1("Meta-analysis across selected cohorts",
                                          #      style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                          #                 margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                          #   plotOutput("multi_dimensions_plots_plots_meta",height=480)),
                                          h1("Analysis in each individual cohort",
                                                         style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                         margin-top:20px;margin-left:-20px;margin-right:-20px"),
                                          div(id="container",
                                              h4("Combined p-value of the meta-analysis for selected cohorts: "),
                                              div(textOutput("multi_dimensions_plots_plots_combined_p"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                              h4(", which is estimated from single p-values, "),
                                              div(textOutput("multi_dimensions_plots_plots_single_p"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                              style="margin-bottom:30px"),
                                                      uiOutput("multi_dimensions_plots_plots",height = "auto")),#),
                                 tabPanel("Overall survival",
                                          # wellPanel (uiOutput("slider_multi_dimensions_survival_x"),
                                          #            uiOutput("slider_multi_dimensions_survival_y")),
                                          #wellPanel (
                                          # wellPanel(
                                          #   h1("Meta-analysis across selected cohorts",
                                          #      style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                          #                 margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                          #   plotOutput("multi_dimensions_survival_plots_meta",height=480)),
                                          # wellPanel(
                                          #   h1("Meta-analysis across selected cohorts",
                                          #      style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                          #                 margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                          #   plotOutput("multi_dimensions_survival_plots_meta",height=480)),  
                                          h1("Analysis in each individual cohorte",
                                                        style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                        margin-top:20px;margin-left:-20px;margin-right:-20px"),
                                          div(id="container",
                                              h4("Combined p-value of the meta-analysis for selected cohorts: "),
                                              div(textOutput("multi_dimensions_survival_plots_combined_p"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                              h4(", which is estimated from single p-values, "),
                                              div(textOutput("multi_dimensions_survival_plots_single_p"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                              style="margin-bottom:30px"),
                                                     uiOutput("multi_dimensions_survival_plots",height = "auto")),#),
                                 tabPanel("Progression free survival",
                                          # wellPanel (uiOutput("slider_multi_dimensions_PFS_x"),
                                          #            uiOutput("slider_multi_dimensions_PFS_y")),
                                          #wellPanel (
                                          # wellPanel(
                                          #   h1("Meta-analysis across selected cohorts",
                                          #      style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                          #                 margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                          #   plotOutput("multi_dimensions_PFS_plots_meta",height=480)),
                                          # wellPanel(
                                          #   h1("Meta-analysis across selected cohorts",
                                          #      style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                          #                 margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                          #   plotOutput("multi_dimensions_PFS_plots_meta",height=480)), 
                                          h1("Analysis in each individual cohort",
                                                        style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                                          margin-top:20px;margin-left:-20px;margin-right:-20px"),
                                          div(id="container",
                                              h4("Combined p-value of the meta-analysis for selected cohorts: "),
                                              div(textOutput("multi_dimensions_PFS_plots_combined_p"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                              h4(", which is estimated from single p-values, "),
                                              div(textOutput("multi_dimensions_PFS_plots_single_p"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                              style="margin-bottom:30px"),
                                                     uiOutput("multi_dimensions_PFS_plots",height = "auto")),#),
                                 tabPanel("Evaluation",
                                          wellPanel (h1("Summary of the selected feature",
                                                        style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                          margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                     DT::dataTableOutput("multi_dimensions_evaluation_table")
                                                     #uiOutput("multi_dimensions_evaluation_plots")
                                                     ))
                                 )))),
    #navbarMenu("Single-cell",
               tabPanel("--Single-cell: Gene expression",
                        h4("Specific signature assessment",style="font-size:25px;
		                                  text-align: center;
                            margin-top: 20px;
                            "),
                        
                        h4("--Gene expression for single-cell",style="font-size:25px;
		                                  text-align: center;
		                                  margin-top: 20px;
                                      "),
                        fluidRow(column(width=12,h4("Specific signature assessment module provides a detailed view of one 
                                                     particular feature. The associations with immunotherapy response, 
                                          overall survival (OS) and progression free survival (PFS) are 
                                          investigated in the module.",
                                                    style="font-size:20px;
                                          margin-left: 275px;
                                          margin-right: 275px;"),
                                        h4("Gene expression for single-cell: exploring the associations of gene expression abundances 
                                            of single-cell level with immunotherapy response, OS and PFS. ",
                                           style="font-size:20px;
                                 margin-left: 275px;
                                 margin-right: 275px;"),
                                        style="background-color:#7CDBD5; height:180px;margin-bottom:20px")),
                        
                        #fluidRow(column(width=12,style="background-color:#7CDBD5; height:180px;margin-bottom:20px")),
                        # fluidRow(column(width=12,h4("Exploring the association of gene expression signal to immunotherapy response.",style="text-align:center"),
                        #                 style="background-color:#DCB239; height:200px;margin-bottom:20px")),
                        sidebarPanel(h4("Selection",style="color: #663399;font-size:25px"),
                                     helpText("In the options of 'Study: ' box, three +/- labels indicate three types of treatment. + means received this type of treatment. – means did not receive this type of treatment. The first label is for anti-CTLA-4 treatment, the second one is for anti-PD-1/L1 treatment, and the third one is for combination treatment, anti-PD-1/L1+anti-CTLA-4. For example, 'Melanoma-Chen (140 samples/++-)' means Chen dataset contains 104 samples with anti-CTLA-4 or anti-PD-1/L1 therapy."),
                                     
                                     selectizeInput("data_source_single_cell_gene",
                                                    "Study: ",
                                                    choices = c("Melanoma-Sade_Feldman (048 samples/+++)" ,
                                                                "Melanoma-Krieg_panel_1 (040 samples/-+-)" ,
                                                                "Melanoma-Krieg_panel_2 (040 samples/-+-)" ,
                                                                "Melanoma-Krieg_panel_3 (039 samples/-+-)" ),
                                                    selected = c("Melanoma-Sade_Feldman (048 samples/+++)"),
                                                    multiple = TRUE),
                                     selectizeInput("treatment_single_cell_gene",
                                                    "Treatment: ",
                                                    choices = NULL,
                                                    multiple = TRUE),
                                     selectizeInput("description_single_cell_gene",
                                                    "Pre- or On-treatment: ",
                                                    choices = NULL,
                                                    multiple = TRUE),
                                     
                                     selectizeInput("gene_single_cell_gene","Insert a gene, for example: CD19",choices=NULL),
                                     actionButton("do_single_cell_gene","Go",style="background-color: #7CDBD5"),
                        #		                       uiOutput("slider_cibersort")),
                                     p(strong("This may take a while"),style="margin-right:25px;font-family: 'Segoe UI', Helvetica, Arial, sans-serif")),
                        conditionalPanel(condition="input.do_single_cell_gene",
                                         mainPanel(tabsetPanel(
                                           tabPanel("Summary",
                                                    wellPanel(
                                                      h1("Statistics",
                                                         style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                          margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                      div(id="container",
                                                          h4("Number of selected cancer type: "),
                                                          div(textOutput("single_cell_gene_summary_disease_number"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                          style="margin-bottom:30px"),
                                                      div(id="container",
                                                          h4("Number of selected samples: "),
                                                          div(textOutput("single_cell_gene_summary_sample_number"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                          style="margin-bottom:30px"),
                                                      div(id="container",
                                                          h4("Number of selected cells: "),
                                                          div(textOutput("single_cell_gene_summary_cell_number"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                          style="margin-bottom:30px"),
                                                      plotlyOutput("single_cell_gene_summary_plots",height=960)),
                                                    wellPanel(h1("Clinical Attribute",
                                                                 style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                          margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                              selectizeInput("clinical_single_cell_gene","Please select clinical data:",
                                                                             choices = c("treatment type","Pre- or On-treatment","RECIST","Age","Gender")),style="margin-bottom:-1px"),
                                                              uiOutput("single_cell_gene_summary_clinical_plots"),
                                                    column(12,
                                                      h1("Download",
                                                         style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                          margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                      div(id="container",
                                                          h4("Data format:   "),
                                                          radioButtons("single_cell_gene_summary_type","",
                                                                       choices = c("Excel (CSV)","Text (TSV)", "JSON"),
                                                                       inline = TRUE),
                                                          style="margin-bottom:30px"),
                                                      div(downloadButton("single_cell_gene_summary_download", "Download"),style="margin-bottom:30px"),
                                                      div(DT::dataTableOutput("single_cell_gene_summary_table"),style="background-color: #7CDBD5;overflow-y: scroll;overflow-x: scroll"))
                                           ),
                                           tabPanel("Immunotherapy response",
                                                    # wellPanel (uiOutput("slider_multi_dimensions_x"),
                                                    #            uiOutput("slider_multi_dimensions_y")),
                                                    column (12,
                                                      h1("Gene Expression for Response Groups",
                                                                  style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                          margin-top:20px;margin-left:-20px;margin-right:-20px")),
                                                               uiOutput("single_cell_gene_violin_plots"),
                                                    column (12,
                                                      h1("tSNE Plot for Response Groups",
                                                                  style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                          margin-top:20px;margin-left:-20px;margin-right:-20px"),
                                                               uiOutput("single_cell_gene_tSNE_plots")))
                                           
                                           # tabPanel("Immunotherapy response",
                                           #          ### violin
                                           #          wellPanel(plotOutput("single_cell_gene_plots_violin"), #violin
                                           #                    div(id="container",
                                           #                        h4("Highlight cells which have high "),
                                           #                        div(textOutput("single_cell_gene_plots_tSNE_gene"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                           #                        h4 (" expression"),
                                           #                        style="margin-bottom:30px;margin-top:60px"),
                                           #                    plotOutput("single_cell_gene_plots_tSNE")) #tSNE
                                           )))),
               tabPanel("--Single-cell: Cell populations",
                        h4("Specific signature assessment",style="font-size:25px;
		                                  text-align: center;
                            margin-top: 20px;
                            "),
                        h4("--Cell populations for single-cell",style="font-size:25px;
		                                  text-align: center;
		                                  margin-top: 20px;
                                      "),
                        fluidRow(column(width=12,h4("Specific signature assessment module provides a detailed view of one 
                                                     particular feature. The associations with immunotherapy response, 
                                                    overall survival (OS) and progression free survival (PFS) are 
                                                    investigated in the module.",
                                                    style="font-size:20px;
                                                    margin-left: 275px;
                                                    margin-right: 275px;"),
                                        h4("Cell populations for single-cell: exploring the associations of cell population frequencies 
                                           with immunotherapy response, OS and PFS. Cell populations were identified based on 
                                           gene-cell matrix by R package, Seurat v3.0.1. We selected 1000 highly 
                                           variable genes, sorted out top 10 principle components (PCs) based on 1000 genes, 
                                           clustered cell populations, and visualized those populations in responders and non-responders 
                                           by t-SNE.",
                                           style="font-size:20px;
                                           margin-left: 275px;
                                           margin-right: 275px;"),
                                        style="background-color:#7CDBD5; height:180px;margin-bottom:20px")),
                        
                        #fluidRow(column(width=12,style="background-color:#7CDBD5; height:180px;margin-bottom:20px")),
                        # fluidRow(column(width=12,h4("Exploring the association of cell population frequencies to immunotherapy response, overall survival and progression free survival.",style="text-align:center"),
                        #                 style="background-color:#DCB239; height:200px;margin-bottom:20px")),
                        sidebarPanel(h4("Selection",style="color: #663399;font-size:25px"),
                                     # uiOutput("disease_single_cell_cell"),
                                     # uiOutput("data_source_single_cell_cell"),
                                     # uiOutput("treatment_single_cell_cell"),
                                     # uiOutput("description_single_cell_cell"),
                                     helpText("In the options of 'Study: ' box, three +/- labels indicate three types of treatment. + means received this type of treatment. – means did not receive this type of treatment. The first label is for anti-CTLA-4 treatment, the second one is for anti-PD-1/L1 treatment, and the third one is for combination treatment, anti-PD-1/L1+anti-CTLA-4. For example, 'Melanoma-Chen (140 samples/++-)' means Chen dataset contains 104 samples with anti-CTLA-4 or anti-PD-1/L1 therapy."),
                                     
                                     selectizeInput("data_source_single_cell_cell",
                                                    "Study: ",
                                                    #choices = c("Melanoma-Sade_Feldman" ,"Melanoma-Krieg_panel_1" ,"Melanoma-Krieg_panel_2" ,"Melanoma-Krieg_panel_3" ),
                                                    choices = c("Melanoma-Sade_Feldman (048 samples/+++)" ,
                                                                "Melanoma-Krieg_panel_1 (040 samples/-+-)" ,
                                                                "Melanoma-Krieg_panel_2 (040 samples/-+-)" ,
                                                                "Melanoma-Krieg_panel_3 (039 samples/-+-)" ),
                                                    selected = c("Melanoma-Sade_Feldman (048 samples/+++)"),
                                                    multiple = FALSE),
                                     selectizeInput("treatment_single_cell_cell",
                                                    "Treatment: ",
                                                    choices = NULL,
                                                    multiple = TRUE),
                                     selectizeInput("description_single_cell_cell",
                                                    "Pre- or On-treatment: ",
                                                    choices = NULL,
                                                    multiple = TRUE),
                                     actionButton("check_first_single_cell_cell","Browse all cell populations",style="background-color: #7CDBD5"),
                                     
                                     bsModal("bsModal_check_first_single_cell_cell","All cell populations","check_first_single_cell_cell",size="large",
                                             uiOutput("ui_bsModal_check_first_single_cell_cell")),
                                     p(strong("OR select specific population(s) to explore"),style="font-size:15px;margin-right:25px;margin-top:20px;font-family: 'Segoe UI', Helvetica, Arial, sans-serif"),
                                     
                                     selectizeInput("cluster_single_cell_cell","Select cell population(s), for example: C04 (IGHD+,VPREB3+,CD19+,PAX5+)",
                                                    multiple=TRUE, choices=NULL),
                                     ##### Parameter
                                     h4("Parameters of survival analysis",style="color: #663399;font-size: 25px"),
                                     
                                     sliderInput("slider_single_cell_cell_OS",
                                                 "Seperate samples with frequency cutoff (default value is 0.5, i.e. median): ",
                                                 min=0, max=1, value=0.5),
                                     selectizeInput("adjust_OS_single_cell_cell",
                                                    "Adjust survival analysis with: ",
                                                    choices = c("None","Age","Gender","Stage"),
                                                    selected = "None",
                                                    multiple = FALSE),
                                     # sliderInput("slider_single_cell_cell_PFS",
                                     #             "Seperate samples with frequency cutoff (%): ",
                                     #             min=0,max=1,value=0.5),
                                     actionButton("do_single_cell_cell","Go",style="background-color: #7CDBD5"),
                                     p(strong("This may take a while"),style="margin-right:25px;font-family: 'Segoe UI', Helvetica, Arial, sans-serif")),
                        
                        conditionalPanel(condition="input.do_single_cell_cell",
                                         mainPanel(tabsetPanel(
                                           tabPanel("Summary",
                                                    wellPanel(
                                                      h1("Statistics",
                                                         style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                          margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                      div(id="container",
                                                          h4("Number of selected cancer type: "),
                                                          div(textOutput("single_cell_cell_summary_disease_number"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                          style="margin-bottom:30px"),
                                                      div(id="container",
                                                          h4("Number of selected samples: "),
                                                          div(textOutput("single_cell_cell_summary_sample_number"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                          style="margin-bottom:30px"),
                                                      div(id="container",
                                                          h4("Number of selected cells: "),
                                                          div(textOutput("single_cell_cell_summary_cell_number"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                          style="margin-bottom:30px"),
                                                      plotlyOutput("single_cell_cell_summary_plots",height=960)),
                                                    wellPanel(h1("Clinical Attribute",
                                                                 style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                          margin-top:20px;margin-left:-20px;margin-right:-20px"),
                                                              selectizeInput("clinical_single_cell_cell","Please select clinical data:",
                                                                             choices = c("treatment type","Pre- or On-treatment","RECIST","Age","Gender")),style="margin-bottom:-1px"),
                                                              column(width=6,wellPanel(plotlyOutput("single_cell_cell_summary_clinical_plots",height=480)),style="padding-bottom:20px"),
                                                    column(12,
                                                      h1("Cell Information Download",
                                                         style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                          margin-top:20px;margin-left:-20px;margin-right:-20px"),
                                                      div(id="container",
                                                          h4("Cells information of selected cluster "),
                                                          div(textOutput("single_cell_cell_cluster_1"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                          style="margin-bottom:30px"),
                                                      div(id="container",
                                                          h4("Data format:   "),
                                                          radioButtons("single_cell_cell_summary_cell_type","",
                                                                       choices = c("Excel (CSV)","Text (TSV)", "JSON"),
                                                                       inline = TRUE),
                                                          style="margin-bottom:30px"),
                                                      div(downloadButton("single_cell_cell_summary_cell_download", "Download"),style="margin-bottom:30px"),
                                                      div(DT::dataTableOutput("single_cell_cell_summary_cell_table"),style="background-color: #7CDBD5;overflow-y: scroll;overflow-x: scroll")),
                                                    column(12,
                                                      h1("Marker Genes Download",
                                                                 style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                          margin-top:20px;margin-left:-20px;margin-right:-20px"),
                                                      div(id="container",
                                                          h4("All marker genes of selected cluster "),
                                                          div(textOutput("single_cell_cell_cluster_2"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                          style="margin-bottom:30px"),
                                                      div(id="container",
                                                          h4("Data format:   "),
                                                          radioButtons("single_cell_cell_summary_marker_gene_type","",
                                                                       choices = c("Excel (CSV)","Text (TSV)", "JSON"),
                                                                       inline = TRUE),
                                                          style="margin-bottom:30px"),
                                                      div(downloadButton("single_cell_cell_summary_marker_gene_download", "Download"),style="margin-bottom:30px"),
                                                      div(DT::dataTableOutput("single_cell_cell_summary_marker_gene_table"),style="background-color: #7CDBD5;overflow-y: scroll;overflow-x: scroll"))
                                           ),
                                           tabPanel("Immunotherapy response",
                                                    ### boxplot tSNE heatmap
                                                    column(12,
                                                      h1("Response Groups",
                                                                 style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                          margin-top:20px;margin-left:-20px;margin-right:-20px"),
                                                              div(id="container",
                                                                  h4("Difference of cluster "),
                                                                  div(textOutput("single_cell_cell_plots_boxplot_cluster"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                                  style="margin-bottom:30px;margin-top:20px")),
                                                              column(width=6,wellPanel(plotlyOutput("single_cell_cell_plots_boxplot",height="auto")),style="padding-bottom:20px"),
                                                              #plotlyOutput("single_cell_cell_plots_boxplot",height="auto"), #boxplot
                                                              column(12,
                                                                     div(id="container",
                                                                  h4("Highlight cluster "),
                                                                  div(textOutput("single_cell_cell_plots_tSNE_cluster"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                                  style="margin-bottom:30px;margin-top:20px"),
                                                              plotOutput("single_cell_cell_plots_tSNE",height=500))#tSNE
                                                              # column(12,
                                                              #        div(id="container",
                                                              #     h4("Top 10 marker genes of cluster "),
                                                              #     div(textOutput("single_cell_cell_plots_heatmap_cluster"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                              #     style="margin-bottom:30px;margin-top:20px"), 
                                                              # plotOutput("single_cell_cell_plots_heatmap",height=500))
                                                    ),
                                           tabPanel("Overall survival",
                                                    #wellPanel(
                                                      h1("Overall Survival Kaplan-Meier Estimate",
                                                                 style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                                          margin-top:20px;margin-left:-20px;margin-right:-20px"),
                                                              column(width=6,wellPanel(plotlyOutput("single_cell_cell_survival_plots",height="auto"),
                                                                                       dataTableOutput("single_cell_cell_survival_tables")),style="padding-bottom:20px")),
                                           tabPanel("Progression free survival",
                                                    #wellPanel(
                                                      h1("Progression-free Kaplan-Meier Estimate",
                                                                 style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                                          margin-top:20px;margin-left:-20px;margin-right:-20px"),
                                                              column(width=6,wellPanel(plotlyOutput("single_cell_cell_PFS_plots",height="auto"),
                                                                                       dataTableOutput("single_cell_cell_PFS_tables")),style="padding-bottom:20px")),
                                                              #plotlyOutput("single_cell_cell_PFS_plots",height = "auto"))),
                                           tabPanel("Evaluation",
                                                    wellPanel (h1("Evaluation of Custom Feature",
                                                                  style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                          margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                               DT::dataTableOutput("single_cell_cell_evaluation_table")
                                                               #plotlyOutput("single_cell_cell_evaluation_plots",height="auto")
                                                               ))
                                         ))))
    ),

      navbarMenu("Pan-cancer analysis",
                 "Signatures prioritization",
                 tabPanel("--Rank signatures",
                          h4("Pan-cancer",style="font-size:25px;
                             text-align: center;
                             margin-top: 20px;
                             "),
                          #fluidRow(column(width=12,style="background-color:#7CDBD5; height:180px;margin-bottom:20px")),
                          fluidRow(column(width=12,h4("Signatures prioritization in pan-cancer analysis first aggregates samples 
                                                      into one dataset, then signatures are ranked based on the statistical significance 
                                                      of the associations in the aggregated dataset. It focuses on genomic 
                                                      features that are comparable across cohorts, including mutation, 
                                                      mutation signatures and immune cell components.",
                                                      style="font-size:20px;
                                                    margin-left: 275px;
                                                    margin-right: 275px;"),
                                          
                                          style="background-color:#7CDBD5; height:180px;margin-bottom:20px")),
                          
                          sidebarPanel(h4("Selection",style="color: #663399;font-size:25px"),
                                       selectizeInput("sample_pan_cancer",
                                                      "Sample run",
                                                      choices=c("custom selection",
                                                                "case study 1",
                                                                "all samples",
                                                                "samples with anti-CTLA-4 treatment",
                                                                "samples with anti-PD-1/L1 treatment",
                                                                #"samples with anti-PD-1/L1+anti-CTLA-4 treatment",
                                                                "samples before treatment",
                                                                "samples after treatment"),
                                                      selected=c("case study 1"),
                                                      multiple=FALSE),
                                       #### OR
                                       hr(),
                                       p(strong("OR select sample(s) manually: "),style="font-size:15px;margin-right:25px;margin-top:20px;font-family: 'Segoe UI', Helvetica, Arial, sans-serif"),
                                       
                                       helpText("In the options of 'Study: ' box, three +/- labels indicate three types of treatment. + means received this type of treatment. – means did not receive this type of treatment. The first label is for anti-CTLA-4 treatment, the second one is for anti-PD-1/L1 treatment, and the third one is for combination treatment, anti-PD-1/L1+anti-CTLA-4. For example, 'Melanoma-Chen (140 samples/++-)' means Chen dataset contains 104 samples with anti-CTLA-4 or anti-PD-1/L1 therapy."),
                                       
                                       selectizeInput("data_source_pan_cancer",
                                                      "Study: ",
                                                      # choices = c("Melanoma-Hugo","Melanoma-Riaz","Melanoma-Samstein",
                                                      #             "Melanoma-Snyder-Nathanson","Melanoma-Van Allen","Hepatocellular Carcinoma-Harding",
                                                      #             "Non-Small Cell Lung Cancer-Hira Rizvi","Non-Small Cell Lung Cancer-Naiyer Rizvi","Renal Cell Carcinoma-Miao",
                                                      #             "Non-Small Cell Lung Cancer-Samstein","Bladder Cancer-Samstein","Breast Cancer-Samstein",
                                                      #             "Cancer of Unknown Primary-Samstein","Colorectal Cancer-Samstein","Esophagogastric Cancer-Samstein",
                                                      #             "Glioma-Samstein","Head and Neck Cancer-Samstein","Renal Cell Carcinoma-Samstein",
                                                      #             "Skin Cancer, Non-Melanoma-Samstein","Melanoma-Auslander","Melanoma-Chen",
                                                      #             "Melanoma-Gide","Melanoma-Prat","Prostate Cancer-Kwek",
                                                      #             "Gastric Cancer-Kim","Melanoma-Jerby-Arnon-ValCo2"),
                                                      choices = c("Melanoma-Hugo (040 samples/-+-)",
                                                                  "Melanoma-Riaz (139 samples/-+-)",
                                                                  "Melanoma-Samstein (320 samples/+++)",
                                                                  "Melanoma-Snyder-Nathanson (064 samples/+--)",
                                                                  "Melanoma-Van Allen (112 samples/+--)",
                                                                  "Melanoma-Auslander (037 samples/+++)",
                                                                  "Melanoma-Chen (104 samples/++-)",
                                                                  "Melanoma-Gide (091 samples/-++)",
                                                                  "Melanoma-Prat (025 samples/-+-)",
                                                                  "Hepatocellular Carcinoma-Harding (031 samples/-+-)",
                                                                  "Non-Small Cell Lung Cancer-Hira Rizvi (240 samples/-++)",
                                                                  "Non-Small Cell Lung Cancer-Naiyer Rizvi (035 samples/-+-)",
                                                                  "Metastatic Urothelial Cancer-Mariathasan (348 samples/-+-)",
                                                                  "Glioblastoma-Cloughesy (029 samples/-+-)",
                                                                  "Renal Cell Carcinoma-Miao (098 samples/-++)",
                                                                  "Non-Small Cell Lung Cancer-Samstein (350 samples/-++)",
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
                                                                  "Melanoma-Jerby-Arnon-ValCo2 (112 samples/-+-)",
                                                                  "Basal cell carcinoma-Yost (015 samples/-+-)"),
                                                      selected = c( "Melanoma-Hugo (040 samples/-+-)",
                                                                    "Melanoma-Riaz (139 samples/-+-)",
                                                                    "Melanoma-Snyder-Nathanson (064 samples/+--)",
                                                                    "Melanoma-Van Allen (112 samples/+--)",
                                                                    "Colorectal Cancer-Le (031 samples/-+-)",
                                                                    "Metastatic Urothelial Cancer-Mariathasan (348 samples/-+-)",
                                                                    "Non-Small Cell Lung Cancer-Naiyer Rizvi (035 samples/-+-)"),
                                                      multiple = TRUE),
                                       selectizeInput("treatment_pan_cancer",
                                                      "Treatment: ",
                                                      choices = NULL,
                                                      multiple = TRUE),
                                       selectizeInput("description_pan_cancer",
                                                      "Pre- or On-treatment: ",
                                                      choices = NULL,
                                                      multiple = TRUE),
                                       actionButton("do_pan_cancer","Go",style="background-color: #7CDBD5"),
                                       p(strong("This may take a while"),style="margin-right:25px;font-family: 'Segoe UI', Helvetica, Arial, sans-serif")),
                          conditionalPanel(condition="input.do_pan_cancer",
                                           mainPanel(tabsetPanel(
                                             tabPanel("Summary",
                                                      #div(id="loading-c",tags$img(src="spinner.gif"),style="text-align:center",
                                                      #hide(div(id="app-c",
                                                      wellPanel(
                                                        h1("Statistics",
                                                           style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                           margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                        div(id="container",
                                                            h4("Number of selected cancer type: "),
                                                            div(textOutput("pan_cancer_summary_disease_number"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                            style="margin-bottom:30px"),
                                                        div(id="container",
                                                            h4("Number of selected samples: "),
                                                            div(textOutput("pan_cancer_summary_sample_number"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                            style="margin-bottom:30px"),
                                                        plotlyOutput("pan_cancer_summary_plots",height=960))),
                                             tabPanel("Mutation",
                                                      column(12,
                                                             h1("Distribution of p-values for genes in pan-cancer",
                                                                style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;margin-top:20px;margin-left:-20px;margin-right:-20px"),
                                                             plotlyOutput("pan_cancer_mutation_plots",height="auto")),
                                                      # div(id="container",
                                                      #     h4("Number of significant genes: "),
                                                      #     div(textOutput("pan_cancer_mutation_significant_number"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                      #     style="margin-bottom:30px"),
                                                      # div(DT::dataTableOutput("pan_cancer_mutation_overlap_table"),style="background-color: lightblue;overflow-y: scroll;overflow-x: scroll")),
                                                      # column(12,h1("Distribution of p-values for each gene",
                                                      #              style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                      #                                  margin-top:20px;margin-left:-20px;margin-right:-20px"),
                                                      #        uiOutput("pan_cancer_mutation_plots",height = "auto")),#),
                                                      column(12,
                                                             h1("Download",
                                                                style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                                margin-top:20px;margin-left:-20px;margin-right:-20px"),
                                                             div(id="container",
                                                                 h4("Data format:   "),
                                                                 radioButtons("pan_cancer_mutation_type","",
                                                                              choices = c("Excel (CSV)","Text (TSV)", "JSON"),
                                                                              inline = TRUE),
                                                                 style="margin-bottom:30px"),
                                                             div(downloadButton("pan_cancer_mutation_download", "Download"),style="margin-bottom:30px"),
                                                             div(DT::dataTableOutput("pan_cancer_mutation_table"),style="background-color: #7CDBD5;overflow-y: scroll;overflow-x: scroll"),
                                                             uiOutput("pan_cancer_mutation_modals"))),
                                             tabPanel("Mutation signatures",
                                                      column(12,
                                                             h1("Distribution of p-values for mutational signatures in pan-cancer",
                                                                style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;margin-top:20px;margin-left:-20px;margin-right:-20px"),
                                                             plotlyOutput("pan_cancer_mutation_signature_plots",height="auto")),
                                                      #        div(id="container",
                                                      #            h4("Number of overlapping significant clusters: "),
                                                      #            div(textOutput("pan_cancer_overlap_number"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                      #            style="margin-bottom:30px"),
                                                      #        div(DT::dataTableOutput("pan_cancer_overlap_table"),style="background-color: lightblue;overflow-y: scroll;overflow-x: scroll")),
                                                      # column(12,h1("Distribution of p-values for each cluster",
                                                      #              style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                      #                                  margin-top:20px;margin-left:-20px;margin-right:-20px"),
                                                      #        uiOutput("pan_cancer_plots",height = "auto")),#),
                                                      
                                                      column(12,
                                                             h1("Download",
                                                                style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                                margin-top:20px;margin-left:-20px;margin-right:-20px"),
                                                             div(id="container",
                                                                 h4("Data format:   "),
                                                                 radioButtons("pan_cancer_mutation_signature_type","",
                                                                              choices = c("Excel (CSV)","Text (TSV)", "JSON"),
                                                                              inline = TRUE),
                                                                 style="margin-bottom:30px"),
                                                             div(downloadButton("pan_cancer_mutation_signature_download", "Download"),style="margin-bottom:30px"),
                                                             div(DT::dataTableOutput("pan_cancer_mutation_signature_table"),style="background-color: #7CDBD5;overflow-y: scroll;overflow-x: scroll"),
                                                             uiOutput("pan_cancer_mutation_signature_modals"))),
                                             tabPanel("Expression",
                                                      column(12,
                                                             h1("Distribution of p-values for immune cells in pan-cancer",
                                                                style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;margin-top:20px;margin-left:-20px;margin-right:-20px"),
                                                             p(strong("PLEASE NOTE, due to different experimental designs and 
                                                                 data processing methods, and additional covariates, 
                                                                 some bias might be introduced in the aggregated dataset."),style="margin-right:25px;font-family: 'Segoe UI', Helvetica, Arial, sans-serif"),
                                                             plotlyOutput("pan_cancer_expression_plots",height="auto")),
                                                      #        div(id="container",
                                                      #            h4("Number of overlapping significant clusters: "),
                                                      #            div(textOutput("pan_cancer_overlap_number"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                      #            style="margin-bottom:30px"),
                                                      #        div(DT::dataTableOutput("pan_cancer_overlap_table"),style="background-color: lightblue;overflow-y: scroll;overflow-x: scroll")),
                                                      # 
                                                      # 
                                                      # column(12,h1("Distribution of p-values for each cluster",
                                                      #              style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                      #                                  margin-top:20px;margin-left:-20px;margin-right:-20px"),
                                                      #        uiOutput("pan_cancer_plots",height = "auto")),#),
                                                      # 
                                                      column(12,
                                                             h1("Download",
                                                                style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                          margin-top:20px;margin-left:-20px;margin-right:-20px"),
                                                             div(id="container",
                                                                 h4("Data format:   "),
                                                                 radioButtons("pan_cancer_expression_type","",
                                                                              choices = c("Excel (CSV)","Text (TSV)", "JSON"),
                                                                              inline = TRUE),
                                                                 style="margin-bottom:30px"),
                                                             div(downloadButton("pan_cancer_expression_download", "Download"),style="margin-bottom:30px"),
                                                             div(DT::dataTableOutput("pan_cancer_expression_table"),style="background-color: #7CDBD5;overflow-y: scroll;overflow-x: scroll"),
                                                             uiOutput("pan_cancer_expression_modals"))),
                                             
                                             tabPanel("Immune cell component",
                                                      column(12,
                                                             h1("Distribution of p-values for immune cells in pan-cancer",
                                                                style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;margin-top:20px;margin-left:-20px;margin-right:-20px"),
                                                             plotlyOutput("pan_cancer_cibersort_plots",height="auto")),
                                                      #        div(id="container",
                                                      #            h4("Number of overlapping significant clusters: "),
                                                      #            div(textOutput("pan_cancer_overlap_number"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                      #            style="margin-bottom:30px"),
                                                      #        div(DT::dataTableOutput("pan_cancer_overlap_table"),style="background-color: lightblue;overflow-y: scroll;overflow-x: scroll")),
                                                      # 
                                                      # 
                                                      # column(12,h1("Distribution of p-values for each cluster",
                                                      #              style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                      #                                  margin-top:20px;margin-left:-20px;margin-right:-20px"),
                                                      #        uiOutput("pan_cancer_plots",height = "auto")),#),
                                                      # 
                                                      column(12,
                                                             h1("Download",
                                                                style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                          margin-top:20px;margin-left:-20px;margin-right:-20px"),
                                                             div(id="container",
                                                                 h4("Data format:   "),
                                                                 radioButtons("pan_cancer_cibersort_type","",
                                                                              choices = c("Excel (CSV)","Text (TSV)", "JSON"),
                                                                              inline = TRUE),
                                                                 style="margin-bottom:30px"),
                                                             div(downloadButton("pan_cancer_cibersort_download", "Download"),style="margin-bottom:30px"),
                                                             div(DT::dataTableOutput("pan_cancer_cibersort_table"),style="background-color: #7CDBD5;overflow-y: scroll;overflow-x: scroll"),
                                                             uiOutput("pan_cancer_cibersort_modals")))
                                             
                                             )))
                          
                          ),
                 "----","Specific signature assessment",
                 tabPanel("--Genetic: Mutation",
                          h4("Specific signature assessment",style="font-size:25px;
		                                  text-align: center;
                            margin-top: 20px;
                            "),
                          
                          h4("--Mutation in aggretated dataset",style="font-size:25px;
		                                  text-align: center;
		                                  margin-top: 20px;"),
                          fluidRow(column(width=12,h4("Specific signature assessment module provides a detailed view of one 
                                                     particular feature. The associations with immunotherapy response, 
                                                      overall survival (OS) and progression free survival (PFS) are 
                                                      investigated in the module.",
                                                      style="font-size:20px;
                                                      margin-left: 275px;
                                                      margin-right: 275px;"),
                                          h4("Mutations in aggregated dataset: exploring the associations of mutational frequencies with immunotherapy response, 
                                             OS and PFS in the aggregated dataset.",
                                             style="font-size:20px;
                                             margin-left: 275px;
                                             margin-right: 275px;"),
                                          style="background-color:#7CDBD5; height:180px;margin-bottom:20px")),
                          
                          #fluidRow(column(width=12,style="background-color:#7CDBD5; height:180px;margin-bottom:20px")),
                          sidebarPanel(h4("Selection",style="color: #663399;font-size:25px"),
                                       helpText("In the options of 'Study: ' box, three +/- labels indicate three types of treatment. + means received this type of treatment. – means did not receive this type of treatment. The first label is for anti-CTLA-4 treatment, the second one is for anti-PD-1/L1 treatment, and the third one is for combination treatment, anti-PD-1/L1+anti-CTLA-4. For example, 'Melanoma-Chen (140 samples/++-)' means Chen dataset contains 104 samples with anti-CTLA-4 or anti-PD-1/L1 therapy."),
                                       
                                       selectizeInput("data_source_pan_cancer_assessment_mutation",
                                                      "Study: ",
                                                      # choices = c("Melanoma-Hugo" ,"Melanoma-Riaz" ,"Melanoma-Samstein" ,"Melanoma-Snyder-Nathanson" ,
                                                      #             "Melanoma-Van Allen", "Hepatocellular Carcinoma-Harding" ,"Non-Small Cell Lung Cancer-Hira Rizvi" ,
                                                      #             "Non-Small Cell Lung Cancer-Naiyer Rizvi" ,"Renal Cell Carcinoma-Miao","Non-Small Cell Lung Cancer-Samstein" ,"Bladder Cancer-Samstein" ,
                                                      #             "Breast Cancer-Samstein" ,"Cancer of Unknown Primary-Samstein" ,"Colorectal Cancer-Samstein" ,
                                                      #             "Esophagogastric Cancer-Samstein" ,"Glioma-Samstein" ,"Head and Neck Cancer-Samstein" ,
                                                      #             "Renal Cell Carcinoma-Samstein" ,"Skin Cancer, Non-Melanoma-Samstein" ),
                                                      choices = c("Melanoma-Hugo (040 samples/-+-)",
                                                                  "Melanoma-Riaz (139 samples/-+-)",
                                                                  "Melanoma-Samstein (320 samples/+++)",
                                                                  "Melanoma-Snyder-Nathanson (064 samples/+--)",
                                                                  "Melanoma-Van Allen (112 samples/+--)",
                                                                  "Hepatocellular Carcinoma-Harding (031 samples/-+-)",
                                                                  "Non-Small Cell Lung Cancer-Hira Rizvi (240 samples/-++)",
                                                                  "Non-Small Cell Lung Cancer-Naiyer Rizvi (035 samples/-+-)",
                                                                  "Renal Cell Carcinoma-Miao (098 samples/-++)",
                                                                  "Non-Small Cell Lung Cancer-Samstein (350 samples/-++)",
                                                                  "Bladder Cancer-Samstein (215 samples/-++)",
                                                                  "Breast Cancer-Samstein (044 samples/+++)",
                                                                  "Cancer of Unknown Primary-Samstein (088 samples/+++)",
                                                                  "Colorectal Cancer-Samstein (110 samples/+++)",
                                                                  "Colorectal Cancer-Le (031 samples/-+-)",
                                                                  "Esophagogastric Cancer-Samstein (126 samples/+++)",
                                                                  "Glioma-Samstein (117 samples/-++)",
                                                                  "Head and Neck Cancer-Samstein (139 samples/-++)",
                                                                  "Renal Cell Carcinoma-Samstein (151 samples/-++)",
                                                                  "Basal cell carcinoma-Yost (015 samples/-+-)"),
                                                      
                                                      selected = c("Melanoma-Hugo (040 samples/-+-)","Melanoma-Van Allen (112 samples/+--)"),
                                                      multiple = TRUE),
                                       selectizeInput("treatment_pan_cancer_assessment_mutation",
                                                      "Treatment: ",
                                                      choices = NULL,
                                                      multiple = TRUE),
                                       selectizeInput("description_pan_cancer_assessment_mutation",
                                                      "Pre- or On-treatment: ",
                                                      choices = NULL,
                                                      multiple = TRUE),
                                       selectizeInput("defined_gene_pan_cancer_assessment_mutation",
                                                      "Pre-defined gene set or user-defined list: ",
                                                      choices = c("user-defined list","DNA_damage_response","PDL1_expression_and_PD1_checkpoint_pathway_in_cancer","T_cell_receptor_signaling_pathway","B_cell_receptor_signaling_pathway","Cell_cycle_control","Survival_cell_death_regulation_signaling"),
                                                      multiple = FALSE),
                                       selectizeInput("gene_pan_cancer_assessment_mutation",
                                                      "Insert a gene or gene set, for example: BRAF KRAS",
                                                      choices=NULL,
                                                      multiple=TRUE),
                                       ##### Parameter
                                       h4("Parameters of survival analysis",style="color: #663399;font-size: 25px"),
                                       selectizeInput("adjust_OS_pan_cancer_assessment_mutation",
                                                      "Adjust survival analysis with: ",
                                                      choices = c("None","Age","Gender","Stage"),
                                                      selected = "None",
                                                      multiple = FALSE),
                                       actionButton("do_pan_cancer_assessment_mutation","Go",style="background-color: #7CDBD5")),
                          conditionalPanel(condition="input.do_pan_cancer_assessment_mutation",
                                           mainPanel(tabsetPanel(
                                             tabPanel("Summary",
                                                      #div(id="loading-c",tags$img(src="spinner.gif"),style="text-align:center",
                                                      #hide(div(id="app-c",
                                                      wellPanel(
                                                        h1("Statistics",
                                                           style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                           margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                        div(id="container",
                                                            h4("Number of selected cancer type: "),
                                                            div(textOutput("pan_cancer_assessment_mutation_summary_disease_number"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                            style="margin-bottom:30px"),
                                                        div(id="container",
                                                            h4("Number of selected samples: "),
                                                            div(textOutput("pan_cancer_assessment_mutation_summary_sample_number"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                            style="margin-bottom:30px"),
                                                        plotlyOutput("pan_cancer_assessment_mutation_summary_plots",height=960)),
                                                      #uiOutput("mutation_summary_plots",height="auto")),
                                                      wellPanel(h1("Clinical Attribute",
                                                                   style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                                   margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                                selectizeInput("pan_cancer_assessment_mutation_clinical","Please select clinical data:",
                                                                               choices = c("treatment type","Pre- or On-treatment","RECIST","Age","Gender")),
                                                                plotlyOutput("pan_cancer_assessment_mutation_summary_clinical_plots",height=480),
                                                                style="margin-bottom:-1px"),
                                                      
                                                      column(12,
                                                             h1("Download",
                                                                style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                          margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                             div(id="container",
                                                                 h4("Data format:   "),
                                                                 radioButtons("pan_cancer_assessment_mutation_summary_type","",
                                                                              choices = c("Excel (CSV)","Text (TSV)", "JSON"),
                                                                              inline = TRUE),
                                                                 style="margin-bottom:30px"),
                                                             div(downloadButton("pan_cancer_assessment_mutation_summary_download", "Download"),style="margin-bottom:30px"),
                                                             div(DT::dataTableOutput("pan_cancer_assessment_mutation_summary_table"),style="background-color: #7CDBD5;overflow-y: scroll;overflow-x: scroll"))
                                                      ),
                                             tabPanel("Immunotherapy response",
                                                      #wellPanel(
                                                      # h1("Response Groups",
                                                      wellPanel(
                                                        h1("Analysis in the aggregated dataset",
                                                          style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                                          margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                        plotlyOutput("pan_cancer_assessment_mutation_plots_plots",height = "auto")),#),
                                                      h1("Analysis in each individual cohort",
                                                         style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                                          margin-top:20px;margin-left:-20px;margin-right:-20px"),
                                                        uiOutput("pan_cancer_assessment_individual_mutation_plots_plots",height = "auto")),#),
                                             
                                             tabPanel("Overall survival",
                                                      #wellPanel(
                                                      #h1("Overall Survival Kaplan-Meier Estimate",
                                                      wellPanel(
                                                        h1("Analysis in the aggregated dataset",
                                                          style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                                          margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                        plotlyOutput("pan_cancer_assessment_mutation_survival_plots",height = "auto"),
                                                        dataTableOutput("pan_cancer_assessment_mutation_survival_summary_tables",height = "auto")),#),
                                                        h1("Analysis in each individual cohort",
                                                           style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                                          margin-top:20px;margin-left:-20px;margin-right:-20px"),
                                                      uiOutput("pan_cancer_assessment_individual_mutation_survival_plots",height = "auto")),#),
                                                      # column(width=12,wellPanel(plotlyOutput("pan_cancer_assessment_mutation_survival_plots",height = "auto")),style="padding-bottom:20px")),
                                                      # plotlyOutput("pan_cancer_assessment_mutation_survival_plots",height = "auto")),#),
                                             tabPanel("Progression free survival",
                                                      #wellPanel(
                                                      wellPanel(
                                                        h1("Analysis in the aggregated dataset",
                                                          style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                                          margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                        plotlyOutput("pan_cancer_assessment_mutation_PFS_plots",height = "auto"),
                                                        dataTableOutput("pan_cancer_assessment_mutation_PFS_summary_tables",height = "auto"),
                                                      h1("Analysis in each individual cohort",
                                                         style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                                          margin-top:20px;margin-left:-20px;margin-right:-20px"),
                                                      uiOutput("pan_cancer_assessment_individual_mutation_PFS_plots",height = "auto")))#),
                                                      # column(width=12,wellPanel(plotlyOutput("pan_cancer_assessment_mutation_PFS_plots",height = "auto")),style="padding-bottom:20px"))#,
                                                      # plotlyOutput("pan_cancer_assessment_mutation_PFS_plots",height = "auto")),#),
                                             # tabPanel("Evaluation",
                                             #          wellPanel(
                                             #            h1("Evaluation of Custom Feature",
                                             #               style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                             #              margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                             #            #uiOutput("mutation_evaluation_plots",height = "auto")
                                             #            DT::dataTableOutput("pan_cancer_assessment_mutation_evaluation_table")
                                             #          ))
                                           )))),
                 tabPanel("--Genetic: Mutation loads/burden",
                          h4("Specific signature assessment",style="font-size:25px;
		                                  text-align: center;
                            margin-top: 20px;
                            "),

                          h4("--Mutation loads/burden in aggregated dataset",style="font-size:25px;
		                                  text-align: center;
		                                  margin-top: 20px;"),
                          fluidRow(column(width=12,h4("Specific signature assessment module provides a detailed view of one
                                                     particular feature. The associations with immunotherapy response,
                                                      overall survival (OS) and progression free survival (PFS) are
                                                      investigated in the module.",
                                                      style="font-size:20px;
                                                      margin-left: 275px;
                                                      margin-right: 275px;"),
                                          h4("Mutations loads/burden in aggregated dataset: exploring the associations of mutational loads/burden (TMB) with immunotherapy response,
                                             OS and PFS in the aggregated cohort.",
                                             style="font-size:20px;
                                             margin-left: 275px;
                                             margin-right: 275px;"),
                                          style="background-color:#7CDBD5; height:180px;margin-bottom:20px")),

                          #fluidRow(column(width=12,style="background-color:#7CDBD5; height:180px;margin-bottom:20px")),
                          sidebarPanel(h4("Selection",style="color: #663399;font-size:25px"),
                                       helpText("In the options of 'Study: ' box, three +/- labels indicate three types of treatment. + means received this type of treatment. – means did not receive this type of treatment. The first label is for anti-CTLA-4 treatment, the second one is for anti-PD-1/L1 treatment, and the third one is for combination treatment, anti-PD-1/L1+anti-CTLA-4. For example, 'Melanoma-Chen (140 samples/++-)' means Chen dataset contains 104 samples with anti-CTLA-4 or anti-PD-1/L1 therapy."),

                                       selectizeInput("data_source_pan_cancer_assessment_mutation_loads",
                                                      "Study: ",
                                                      # choices = c("Melanoma-Hugo" ,"Melanoma-Riaz" ,"Melanoma-Samstein" ,"Melanoma-Snyder-Nathanson" ,
                                                      #             "Melanoma-Van Allen", "Hepatocellular Carcinoma-Harding" ,"Non-Small Cell Lung Cancer-Hira Rizvi" ,
                                                      #             "Non-Small Cell Lung Cancer-Naiyer Rizvi" ,"Renal Cell Carcinoma-Miao","Non-Small Cell Lung Cancer-Samstein" ,"Bladder Cancer-Samstein" ,
                                                      #             "Breast Cancer-Samstein" ,"Cancer of Unknown Primary-Samstein" ,"Colorectal Cancer-Samstein" ,
                                                      #             "Esophagogastric Cancer-Samstein" ,"Glioma-Samstein" ,"Head and Neck Cancer-Samstein" ,
                                                      #             "Renal Cell Carcinoma-Samstein" ,"Skin Cancer, Non-Melanoma-Samstein" ),
                                                      choices = c("Melanoma-Hugo (040 samples/-+-)",
                                                                  "Melanoma-Riaz (139 samples/-+-)",
                                                                  "Melanoma-Samstein (320 samples/+++)",
                                                                  "Melanoma-Snyder-Nathanson (064 samples/+--)",
                                                                  "Melanoma-Van Allen (112 samples/+--)",
                                                                  "Hepatocellular Carcinoma-Harding (031 samples/-+-)",
                                                                  "Non-Small Cell Lung Cancer-Hira Rizvi (240 samples/-++)",
                                                                  "Non-Small Cell Lung Cancer-Naiyer Rizvi (035 samples/-+-)",
                                                                  "Renal Cell Carcinoma-Miao (098 samples/-++)",
                                                                  "Non-Small Cell Lung Cancer-Samstein (350 samples/-++)",
                                                                  "Bladder Cancer-Samstein (215 samples/-++)",
                                                                  "Breast Cancer-Samstein (044 samples/+++)",
                                                                  "Cancer of Unknown Primary-Samstein (088 samples/+++)",
                                                                  "Colorectal Cancer-Samstein (110 samples/+++)",
                                                                  "Colorectal Cancer-Le (031 samples/-+-)",
                                                                  "Esophagogastric Cancer-Samstein (126 samples/+++)",
                                                                  "Glioma-Samstein (117 samples/-++)",
                                                                  "Head and Neck Cancer-Samstein (139 samples/-++)",
                                                                  "Renal Cell Carcinoma-Samstein (151 samples/-++)",
                                                                  "Basal cell carcinoma-Yost (015 samples/-+-)"),

                                                      selected = c("Melanoma-Hugo (040 samples/-+-)","Melanoma-Van Allen (112 samples/+--)"),
                                                      multiple = TRUE),
                                       selectizeInput("treatment_pan_cancer_assessment_mutation_loads",
                                                      "Treatment: ",
                                                      choices = NULL,
                                                      multiple = TRUE),
                                       selectizeInput("description_pan_cancer_assessment_mutation_loads",
                                                      "Pre- or On-treatment: ",
                                                      choices = NULL,
                                                      multiple = TRUE),
                                       ##### Parameter
                                       h4("Parameters of survival analysis",style="color: #663399;font-size: 25px"),

                                       sliderInput("slider_pan_cancer_assessment_mutation_loads_OS",
                                                   "Seperate samples by gene mutation loads cutoff (default value is 0.5, i.e. median): ",
                                                   min=0,max=1,value=0.5),
                                       selectizeInput("adjust_OS_pan_cancer_assessment_mutation_loads",
                                                      "Adjust survival analysis with: ",
                                                      choices = c("None","Age","Gender","Stage"),
                                                      selected = "None",
                                                      multiple = FALSE),
                                       actionButton("do_pan_cancer_assessment_mutation_loads","Go",style="background-color: #7CDBD5")),
                          conditionalPanel(condition="input.do_pan_cancer_assessment_mutation_loads",
                                           mainPanel(tabsetPanel(
                                             tabPanel("Summary",
                                                      #div(id="loading-c",tags$img(src="spinner.gif"),style="text-align:center",
                                                      #hide(div(id="app-c",
                                                      wellPanel(
                                                        h1("Statistics",
                                                           style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                           margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                        div(id="container",
                                                            h4("Number of selected cancer type: "),
                                                            div(textOutput("pan_cancer_assessment_mutation_loads_summary_disease_number"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                            style="margin-bottom:30px"),
                                                        div(id="container",
                                                            h4("Number of selected samples: "),
                                                            div(textOutput("pan_cancer_assessment_mutation_loads_summary_sample_number"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                            style="margin-bottom:30px"),
                                                        plotlyOutput("pan_cancer_assessment_mutation_loads_summary_plots",height=960)),
                                                      #uiOutput("mutation_summary_plots",height="auto")),
                                                      wellPanel(h1("Clinical Attribute",
                                                                   style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                                   margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                                selectizeInput("pan_cancer_assessment_mutation_loads_clinical","Please select clinical data:",
                                                                               choices = c("treatment type","Pre- or On-treatment","RECIST","Age","Gender")),
                                                                plotlyOutput("pan_cancer_assessment_mutation_loads_summary_clinical_plots",height=480),
                                                                style="margin-bottom:-1px"),

                                                      column(12,
                                                             h1("Download",
                                                                style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                          margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                             div(id="container",
                                                                 h4("Data format:   "),
                                                                 radioButtons("pan_cancer_assessment_mutation_loads_summary_type","",
                                                                              choices = c("Excel (CSV)","Text (TSV)", "JSON"),
                                                                              inline = TRUE),
                                                                 style="margin-bottom:30px"),
                                                             div(downloadButton("pan_cancer_assessment_mutation_loads_summary_download", "Download"),style="margin-bottom:30px"),
                                                             div(DT::dataTableOutput("pan_cancer_assessment_mutation_loads_summary_table"),style="background-color: #7CDBD5;overflow-y: scroll;overflow-x: scroll"))
                                             ),
                                             tabPanel("Immunotherapy response",
                                                     wellPanel(
                                                      h1("Analysis in the aggregated dataset",
                                                         style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                                          margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                      p(strong("PLEASE NOTE, due to different experimental designs and 
                                                                 data processing methods, and additional covariates, 
                                                                 some bias might be introduced in the aggregated dataset."),style="margin-right:25px;font-family: 'Segoe UI', Helvetica, Arial, sans-serif"),
                                                      plotlyOutput("pan_cancer_assessment_mutation_loads_plots_plots",height = "auto")),#),
                                                      h1("Analysis in each individual cohort",
                                                         style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                                          margin-top:20px;margin-left:-20px;margin-right:-20px"),
                                                      uiOutput("pan_cancer_assessment_individual_mutation_loads_plots_plots",height = "auto")),#),
#                                              
                                             tabPanel("Overall survival",
                                                      wellPanel(
                                                      h1("Analysis in the aggregated dataset",
                                                         style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                                          margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                      plotlyOutput("pan_cancer_assessment_mutation_loads_survival_plots",height = "auto"),
                                                      dataTableOutput("pan_cancer_assessment_mutation_loads_survival_summary_tables",height = "auto")),#),
                                                      h1("Analysis in each individual cohort",
                                                         style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                                          margin-top:20px;margin-left:-20px;margin-right:-20px"),
                                                      uiOutput("pan_cancer_assessment_individual_mutation_loads_survival_plots",height = "auto")),#),
#                                                       # column(width=12,wellPanel(plotlyOutput("pan_cancer_assessment_mutation_loads_survival_plots",height = "auto")),style="padding-bottom:20px")),
#                                              # plotlyOutput("pan_cancer_assessment_mutation_survival_plots",height = "auto")),#),
                                             tabPanel("Progression free survival",
                                                      wellPanel(
                                                      h1("Analysis in the aggregated dataset",
                                                         style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                                          margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                      plotlyOutput("pan_cancer_assessment_mutation_loads_PFS_plots",height = "auto"),
                                                      dataTableOutput("pan_cancer_assessment_mutation_loads_PFS_summary_tables",height = "auto")),
                                                      h1("Analysis in each individual cohort",
                                                         style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                                          margin-top:20px;margin-left:-20px;margin-right:-20px"),
                                                      uiOutput("pan_cancer_assessment_individual_mutation_loads_PFS_plots",height = "auto"))
#                                                       # column(width=12,wellPanel(plotlyOutput("pan_cancer_assessment_mutation_loads_PFS_plots",height = "auto")),style="padding-bottom:20px"))#,
#                                              # plotlyOutput("pan_cancer_assessment_mutation_PFS_plots",height = "auto")),#),
#                                              # tabPanel("Evaluation",
#                                              #          wellPanel(
#                                              #            h1("Evaluation of Custom Feature",
#                                              #               style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
#                                              #              margin-top:-20px;margin-left:-20px;margin-right:-20px"),
#                                              #            #uiOutput("mutation_evaluation_plots",height = "auto")
#                                              #            DT::dataTableOutput("pan_cancer_assessment_mutation_evaluation_table")
#                                              #          ))
                                           )))),
                 tabPanel("--Genetic: Mutation signatures",
                          h4("Specific signature assessment",style="font-size:25px;
		                                  text-align: center;
                            margin-top: 20px;
                            "),

                          h4("--Mutational signatures in aggregated dataset",style="font-size:25px;
                             text-align: center;
                             margin-top: 20px;"),
                          fluidRow(column(width=12,h4("Specific signature assessment module provides a detailed view of one
                                                     particular feature. The associations with immunotherapy response,
                                                      overall survival (OS) and progression free survival (PFS) are
                                                      investigated in the module.",
                                                      style="font-size:20px;
                                                      margin-left: 275px;
                                                      margin-right: 275px;"),
                                          h4("Mutational signatures in aggregated dataset: exploring the associations of mutational signatures with immunotherapy response,
                                             OS and PFS in the aggregated cohort.",
                                             style="font-size:20px;
                                             margin-left: 275px;
                                             margin-right: 275px;"),
                                          style="background-color:#7CDBD5; height:180px;margin-bottom:20px")),

                          #fluidRow(column(width=12,style="background-color:#7CDBD5; height:180px;margin-bottom:20px")),
                          sidebarPanel(h4("Selection",style="color: #663399;font-size:25px"),
                                       helpText("In the options of 'Study: ' box, three +/- labels indicate three types of treatment. + means received this type of treatment. – means did not receive this type of treatment. The first label is for anti-CTLA-4 treatment, the second one is for anti-PD-1/L1 treatment, and the third one is for combination treatment, anti-PD-1/L1+anti-CTLA-4. For example, 'Melanoma-Chen (140 samples/++-)' means Chen dataset contains 104 samples with anti-CTLA-4 or anti-PD-1/L1 therapy."),

                                       selectizeInput("data_source_pan_cancer_assessment_mutation_signature",
                                                      "Study: ",
                                                      # choices = c("Melanoma-Hugo" ,"Melanoma-Riaz" ,"Melanoma-Samstein" ,"Melanoma-Snyder-Nathanson" ,
                                                      #             "Melanoma-Van Allen", "Hepatocellular Carcinoma-Harding" ,"Non-Small Cell Lung Cancer-Hira Rizvi" ,
                                                      #             "Non-Small Cell Lung Cancer-Naiyer Rizvi" ,"Renal Cell Carcinoma-Miao","Non-Small Cell Lung Cancer-Samstein" ,"Bladder Cancer-Samstein" ,
                                                      #             "Breast Cancer-Samstein" ,"Cancer of Unknown Primary-Samstein" ,"Colorectal Cancer-Samstein" ,
                                                      #             "Esophagogastric Cancer-Samstein" ,"Glioma-Samstein" ,"Head and Neck Cancer-Samstein" ,
                                                      #             "Renal Cell Carcinoma-Samstein" ,"Skin Cancer, Non-Melanoma-Samstein" ),
                                                      choices = c("Melanoma-Hugo (040 samples/-+-)",
                                                                  "Melanoma-Riaz (139 samples/-+-)",
                                                                  "Melanoma-Samstein (320 samples/+++)",
                                                                  "Melanoma-Snyder-Nathanson (064 samples/+--)",
                                                                  "Melanoma-Van Allen (112 samples/+--)",
                                                                  "Hepatocellular Carcinoma-Harding (031 samples/-+-)",
                                                                  "Non-Small Cell Lung Cancer-Hira Rizvi (240 samples/-++)",
                                                                  "Non-Small Cell Lung Cancer-Naiyer Rizvi (035 samples/-+-)",
                                                                  "Renal Cell Carcinoma-Miao (098 samples/-++)",
                                                                  "Non-Small Cell Lung Cancer-Samstein (350 samples/-++)",
                                                                  "Bladder Cancer-Samstein (215 samples/-++)",
                                                                  "Breast Cancer-Samstein (044 samples/+++)",
                                                                  "Cancer of Unknown Primary-Samstein (088 samples/+++)",
                                                                  "Colorectal Cancer-Samstein (110 samples/+++)",
                                                                  "Colorectal Cancer-Le (031 samples/-+-)",
                                                                  "Esophagogastric Cancer-Samstein (126 samples/+++)",
                                                                  "Glioma-Samstein (117 samples/-++)",
                                                                  "Head and Neck Cancer-Samstein (139 samples/-++)",
                                                                  "Renal Cell Carcinoma-Samstein (151 samples/-++)",
                                                                  "Basal cell carcinoma-Yost (015 samples/-+-)"),

                                                      selected = c("Melanoma-Hugo (040 samples/-+-)","Melanoma-Van Allen (112 samples/+--)"),
                                                      multiple = TRUE),
                                       selectizeInput("treatment_pan_cancer_assessment_mutation_signature",
                                                      "Treatment: ",
                                                      choices = NULL,
                                                      multiple = TRUE),
                                       selectizeInput("description_pan_cancer_assessment_mutation_signature",
                                                      "Pre- or On-treatment: ",
                                                      choices = NULL,
                                                      multiple = TRUE),
                                       selectizeInput("signature_pan_cancer_assessment_mutation_signature",
                                                      "Mutational signature type:  ",
                                                      choices = NULL,
                                                      multiple = FALSE),
                                       ##### Parameter
                                       h4("Parameters of survival analysis",style="color: #663399;font-size: 25px"),

                                       sliderInput("slider_pan_cancer_assessment_mutation_signature_OS",
                                                   "Seperate samples by mutational signature cutoff (%): ",
                                                   min=0,max=1,value=0.5),
                                       selectizeInput("adjust_OS_pan_cancer_assessment_mutation_signature",
                                                      "Adjust survival analysis with: ",
                                                      choices = c("None","Age","Gender","Stage"),
                                                      selected = "None",
                                                      multiple = FALSE),
                                       actionButton("do_pan_cancer_assessment_mutation_signature","Go",style="background-color: #7CDBD5")),
                          conditionalPanel(condition="input.do_pan_cancer_assessment_mutation_signature",
                                           mainPanel(tabsetPanel(
                                             tabPanel("Summary",
                                                      #div(id="loading-c",tags$img(src="spinner.gif"),style="text-align:center",
                                                      #hide(div(id="app-c",
                                                      wellPanel(
                                                        h1("Statistics",
                                                           style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                           margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                        div(id="container",
                                                            h4("Number of selected cancer type: "),
                                                            div(textOutput("pan_cancer_assessment_mutation_signature_summary_disease_number"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                            style="margin-bottom:30px"),
                                                        div(id="container",
                                                            h4("Number of selected samples: "),
                                                            div(textOutput("pan_cancer_assessment_mutation_signature_summary_sample_number"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                            style="margin-bottom:30px"),
                                                        plotlyOutput("pan_cancer_assessment_mutation_signature_summary_plots",height=960)),
                                                      #uiOutput("mutation_summary_plots",height="auto")),
                                                      wellPanel(h1("Clinical Attribute",
                                                                   style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                                   margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                                selectizeInput("pan_cancer_assessment_mutation_signature_clinical","Please select clinical data:",
                                                                               choices = c("treatment type","Pre- or On-treatment","RECIST","Age","Gender")),
                                                                plotlyOutput("pan_cancer_assessment_mutation_signature_summary_clinical_plots",height=480),
                                                                style="margin-bottom:-1px"),

                                                      column(12,
                                                             h1("Download",
                                                                style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                          margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                             div(id="container",
                                                                 h4("Data format:   "),
                                                                 radioButtons("pan_cancer_assessment_mutation_signature_summary_type","",
                                                                              choices = c("Excel (CSV)","Text (TSV)", "JSON"),
                                                                              inline = TRUE),
                                                                 style="margin-bottom:30px"),
                                                             div(downloadButton("pan_cancer_assessment_mutation_signature_summary_download", "Download"),style="margin-bottom:30px"),
                                                             div(DT::dataTableOutput("pan_cancer_assessment_mutation_signature_summary_table"),style="background-color: #7CDBD5;overflow-y: scroll;overflow-x: scroll"))
                                                      ),
                                             tabPanel("Immunotherapy response",
                                                      wellPanel(
                                                      h1("Analysis in the aggregated dataset",
                                                         style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                                          margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                      plotlyOutput("pan_cancer_assessment_mutation_signature_plots_plots",height = "auto")),#),
                                                      h1("Analysis in each individual cohort",
                                                         style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                                          margin-top:20px;margin-left:-20px;margin-right:-20px"),
                                                      uiOutput("pan_cancer_assessment_individual_mutation_signature_plots_plots",height = "auto")),#),
#                                              
                                             tabPanel("Overall survival",
                                                       wellPanel(
                                                      h1("Analysis in the aggregated dataset",
                                                         style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                                          margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                      plotlyOutput("pan_cancer_assessment_mutation_signature_survival_plots",height = "auto"),
                                                      dataTableOutput("pan_cancer_assessment_mutation_signature_survival_summary_tables",height = "auto")),
                                                      h1("Analysis in each individual cohort",
                                                         style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                                          margin-top:20px;margin-left:-20px;margin-right:-20px"),
                                                      uiOutput("pan_cancer_assessment_individual_mutation_signature_survival_plots",height = "auto")),#),
#                                              
#                                                       # plotlyOutput("pan_cancer_assessment_mutation_signature_survival_plots",height = "auto")),#),
                                             tabPanel("Progression free survival",
                                                       wellPanel(
                                                      h1("Analysis in the aggregated dataset",
                                                         style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                                          margin-top:20px;margin-left:-20px;margin-right:-20px"),
                                                      plotlyOutput("pan_cancer_assessment_mutation_signature_PFS_plots",height = "auto"),
                                                      dataTableOutput("pan_cancer_assessment_mutation_signature_PFS_summary_tables",height = "auto")),#),
                                             h1("Analysis in each individual cohort",
                                                style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                                          margin-top:20px;margin-left:-20px;margin-right:-20px"),
                                             uiOutput("pan_cancer_assessment_individual_mutation_signature_PFS_plots",height = "auto"))
#                                              
#                                                       # plotlyOutput("pan_cancer_assessment_mutation_signature_PFS_plots",height = "auto"))#,#),
#                                              # tabPanel("Evaluation",
#                                              #          wellPanel(
#                                              #            h1("Evaluation of Custom Feature",
#                                              #               style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
#                                              #              margin-top:-20px;margin-left:-20px;margin-right:-20px"),
#                                              #            #uiOutput("mutation_evaluation_plots",height = "auto")
#                                              #            DT::dataTableOutput("pan_cancer_assessment_mutation_signature_evaluation_table")
#                                              #          ))
                                           )))),
                 tabPanel("--Transcriptomic: Expression",
                          h4("Specific signature assessment",style="font-size:25px;
		                                  text-align: center;
                            margin-top: 20px;
                            "),

                          h4("--Expression in aggregated dataset",style="font-size:25px;
                             text-align: center;
                             margin-top: 20px;"),
                          fluidRow(column(width=12,h4("Specific signature assessment module provides a detailed view of one
                                                     particular feature. The associations with immunotherapy response,
                                                     overall survival (OS) and progression free survival (PFS) are
                                                     investigated in the module.",
                                                      style="font-size:20px;
                                                     margin-left: 275px;
                                                     margin-right: 275px;"),
                                          h4("Expression in aggregated dataset: exploring the associations of gene expression with
                                            immunotherapy response, OS and PFS in the aggregated cohort. ",
                                             style="font-size:20px;
                                            margin-left: 275px;
                                            margin-right: 275px;"),
                                          style="background-color:#7CDBD5; height:180px;margin-bottom:20px")),

                          #fluidRow(column(width=12,style="background-color:#7CDBD5; height:180px;margin-bottom:20px")),
                          sidebarPanel(h4("Selection",style="color: #663399;font-size:25px"),
                                       helpText("In the options of 'Study: ' box, three +/- labels indicate three types of treatment. + means received this type of treatment. – means did not receive this type of treatment. The first label is for anti-CTLA-4 treatment, the second one is for anti-PD-1/L1 treatment, and the third one is for combination treatment, anti-PD-1/L1+anti-CTLA-4. For example, 'Melanoma-Chen (140 samples/++-)' means Chen dataset contains 104 samples with anti-CTLA-4 or anti-PD-1/L1 therapy."),

                                       selectizeInput("data_source_pan_cancer_assessment_expression",
                                                      "Study: ",
                                                      # choices = c("Melanoma-Auslander" ,"Melanoma-Chen","Melanoma-Gide","Melanoma-Snyder-Nathanson",
                                                      #             "Melanoma-Hugo","Melanoma-Prat","Melanoma-Riaz" ,"Melanoma-Van Allen","Prostate Cancer-Kwek",
                                                      #             "Renal Cell Carcinoma-Miao","Gastric Cancer-Kim"),
                                                      choices = c("Melanoma-Auslander (037 samples/+++)",
                                                                  "Melanoma-Chen (104 samples/++-)",
                                                                  "Melanoma-Gide (091 samples/-++)",
                                                                  "Melanoma-Snyder-Nathanson (064 samples/+--)",
                                                                  "Melanoma-Hugo (040 samples/-+-)",
                                                                  "Melanoma-Prat (025 samples/-+-)",
                                                                  "Melanoma-Riaz (139 samples/-+-)",
                                                                  "Melanoma-Van Allen (112 samples/+--)",
                                                                  "Melanoma-Jerby-Arnon-ValCo2 (112 samples/-+-)",
                                                                  "Melanoma-Chen-Pre-On (023 samples)",
                                                                  "Metastatic Urothelial Cancer-Mariathasan (348 samples/-+-)",
                                                                  "Glioblastoma-Cloughesy (029 samples/-+-)",
                                                                  "Prostate Cancer-Kwek (022 samples/+--)",
                                                                  "Renal Cell Carcinoma-Miao (098 samples/-++)",
                                                                  "Gastric Cancer-Kim (061 samples/-+-)"),

                                                      selected = c("Melanoma-Hugo (040 samples/-+-)","Melanoma-Van Allen (112 samples/+--)"),
                                                      multiple = TRUE),
                                       selectizeInput("treatment_pan_cancer_assessment_expression",
                                                      "Treatment: ",
                                                      choices = NULL,
                                                      multiple = TRUE),

                                       checkboxInput("dynamic_check_pan_cancer_assessment_expression","Dynamic. Changes of expressions between On- and Pre- treatment in one sample."),
                                       p("Please note, 'Melanoma-Riaz' and 'Melanoma-Gide' provide dynamic analysis."),
                                       selectizeInput("description_pan_cancer_assessment_expression",
                                                      "Pre- or On-treatment: ",
                                                      choices = NULL,
                                                      multiple = TRUE),
                                       selectizeInput("gene_pan_cancer_assessment_expression","Insert a gene, for example: CD19",
                                                      choices = NULL),
                                       ##### Parameter
                                       h4("Parameters of survival analysis",style="color: #663399;font-size: 25px"),

                                       sliderInput("slider_pan_cancer_assessment_expression_OS",
                                                   "Seperate samples by gene expression cutoff (defaulst value is 0.5, i.e. median): ",
                                                   min=0,max=1,value=0.5),
                                       selectizeInput("adjust_OS_pan_cancer_assessment_expression",
                                                      "Adjust survival analysis with: ",
                                                      choices = c("None","Age","Gender","Stage"),
                                                      selected = "None",
                                                      multiple = FALSE),

                                       actionButton("do_pan_cancer_assessment_expression","Go",style="background-color: #7CDBD5")),
                          conditionalPanel(condition="input.do_pan_cancer_assessment_expression",
                                           mainPanel(tabsetPanel(
                                             tabPanel("Summary",
                                                      #div(id="loading-c",tags$img(src="spinner.gif"),style="text-align:center",
                                                      #hide(div(id="app-c",
                                                      wellPanel(
                                                        h1("Statistics",
                                                           style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                           margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                        div(id="container",
                                                            h4("Number of selected cancer type: "),
                                                            div(textOutput("pan_cancer_assessment_expression_summary_disease_number"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                            style="margin-bottom:30px"),
                                                        div(id="container",
                                                            h4("Number of selected samples: "),
                                                            div(textOutput("pan_cancer_assessment_expression_summary_sample_number"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                            style="margin-bottom:30px"),
                                                        plotlyOutput("pan_cancer_assessment_expression_summary_plots",height=960)),
                                                      #uiOutput("mutation_summary_plots",height="auto")),
                                                      wellPanel(h1("Clinical Attribute",
                                                                   style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                                   margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                                selectizeInput("clinical_pan_cancer_assessment_expression","Please select clinical data:",
                                                                               choices = c("treatment type","Pre- or On-treatment","RECIST","Age","Gender")),
                                                                plotlyOutput("pan_cancer_assessment_expression_summary_clinical_plots",height=480),
                                                                style="margin-bottom:-1px"),

                                                      column(12,
                                                             h1("Download",
                                                                style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                                margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                             div(id="container",
                                                                 h4("Data format:   "),
                                                                 radioButtons("pan_cancer_assessment_expression_summary_type","",
                                                                              choices = c("Excel (CSV)","Text (TSV)", "JSON"),
                                                                              inline = TRUE),
                                                                 style="margin-bottom:30px"),
                                                             div(downloadButton("pan_cancer_assessment_expression_summary_download", "Download"),style="margin-bottom:30px"),
                                                             div(DT::dataTableOutput("pan_cancer_assessment_expression_summary_table"),style="background-color: #7CDBD5;overflow-y: scroll;overflow-x: scroll"))
                                             ),
                                             tabPanel("Immunotherapy response",
                                                      wellPanel(
                                                      h1("Analysis in the aggregated dataset",
                                                         style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                         margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                      p(strong("PLEASE NOTE, due to different experimental designs and 
                                                                 data processing methods, and additional covariates, 
                                                                 some bias might be introduced in the aggregated dataset."),style="margin-right:25px;font-family: 'Segoe UI', Helvetica, Arial, sans-serif"),
                                                      plotlyOutput("pan_cancer_assessment_expression_plots_plots",height = "auto")),#),
                                                      h1("Analysis in each individual cohort",
                                                         style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                                          margin-top:20px;margin-left:-20px;margin-right:-20px"),
                                                      uiOutput("pan_cancer_assessment_individual_expression_plots_plots",height = "auto")),#),
#                                              
                                             tabPanel("Overall survival",
                                                     wellPanel(
                                                      h1("Analysis in the aggregated dataset",
                                                         style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                         margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                      plotlyOutput("pan_cancer_assessment_expression_survival_plots",height = "auto"),
                                                      dataTableOutput("pan_cancer_assessment_expression_survival_summary_tables",height = "auto")),#),
                                                      h1("Analysis in each individual cohort",
                                                         style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                                          margin-top:20px;margin-left:-20px;margin-right:-20px"),
                                                      uiOutput("pan_cancer_assessment_individual_expression_survival_plots",height = "auto")),#),
#                                              
                                             tabPanel("Progression free survival",
                                                      wellPanel(
                                                      h1("Analysis in the aggregated dataset",
                                                         style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                         margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                      plotlyOutput("pan_cancer_assessment_expression_PFS_plots",height = "auto"),
                                                      dataTableOutput("pan_cancer_assessment_expression_PFS_summary_tables",height = "auto")),#,#),
                                                      h1("Analysis in each individual cohort",
                                                         style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                                          margin-top:20px;margin-left:-20px;margin-right:-20px"),
                                                      uiOutput("pan_cancer_assessment_individual_expression_PFS_plots",height = "auto"))
#                                              
#                                              # tabPanel("Evaluation",
#                                              #          wellPanel(
#                                              #            h1("Evaluation of Custom Feature",
#                                              #               style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
#                                              #               margin-top:-20px;margin-left:-20px;margin-right:-20px"),
#                                              #            #uiOutput("mutation_evaluation_plots",height = "auto")
#                                              #            DT::dataTableOutput("pan_cancer_assessment_expression_evaluation_table")
#                                              #            ))
                                           )))),
                 tabPanel("--Transcriptomic: Expression sum",
                          h4("Specific signature assessment",style="font-size:25px;
		                                  text-align: center;
                            margin-top: 20px;
                            "),

                          h4("--Expression sum in aggregated dataset",style="font-size:25px;
                             text-align: center;
                             margin-top: 20px;"),
                          fluidRow(column(width=12,h4("Specific signature assessment module provides a detailed view of one
                                                     particular feature. The associations with immunotherapy response,
                                                     overall survival (OS) and progression free survival (PFS) are
                                                     investigated in the module.",
                                                      style="font-size:20px;
                                                     margin-left: 275px;
                                                     margin-right: 275px;"),
                                          h4("Expression sum in aggregated dataset: exploring the associations of sum gene set with
                                            immunotherapy response, OS and PFS in the aggregated cohort. ",
                                             style="font-size:20px;
                                            margin-left: 275px;
                                            margin-right: 275px;"),
                                          style="background-color:#7CDBD5; height:180px;margin-bottom:20px")),

                          #fluidRow(column(width=12,style="background-color:#7CDBD5; height:180px;margin-bottom:20px")),
                          sidebarPanel(h4("Selection",style="color: #663399;font-size:25px"),
                                       helpText("In the options of 'Study: ' box, three +/- labels indicate three types of treatment. + means received this type of treatment. – means did not receive this type of treatment. The first label is for anti-CTLA-4 treatment, the second one is for anti-PD-1/L1 treatment, and the third one is for combination treatment, anti-PD-1/L1+anti-CTLA-4. For example, 'Melanoma-Chen (140 samples/++-)' means Chen dataset contains 104 samples with anti-CTLA-4 or anti-PD-1/L1 therapy."),

                                       selectizeInput("data_source_pan_cancer_assessment_expression_sum",
                                                      "Study: ",
                                                      # choices = c("Melanoma-Auslander" ,"Melanoma-Chen","Melanoma-Gide","Melanoma-Snyder-Nathanson",
                                                      #             "Melanoma-Hugo","Melanoma-Prat","Melanoma-Riaz" ,"Melanoma-Van Allen","Prostate Cancer-Kwek",
                                                      #             "Renal Cell Carcinoma-Miao","Gastric Cancer-Kim"),
                                                      choices = c("Melanoma-Auslander (037 samples/+++)",
                                                                  "Melanoma-Chen (104 samples/++-)",
                                                                  "Melanoma-Gide (091 samples/-++)",
                                                                  "Melanoma-Snyder-Nathanson (064 samples/+--)",
                                                                  "Melanoma-Hugo (040 samples/-+-)",
                                                                  "Melanoma-Prat (025 samples/-+-)",
                                                                  "Melanoma-Riaz (139 samples/-+-)",
                                                                  "Melanoma-Van Allen (112 samples/+--)",
                                                                  "Melanoma-Jerby-Arnon-ValCo2 (112 samples/-+-)",
                                                                  "Melanoma-Chen-Pre-On (023 samples)",
                                                                  "Metastatic Urothelial Cancer-Mariathasan (348 samples/-+-)",
                                                                  "Glioblastoma-Cloughesy (029 samples/-+-)",
                                                                  "Prostate Cancer-Kwek (022 samples/+--)",
                                                                  "Renal Cell Carcinoma-Miao (098 samples/-++)",
                                                                  "Gastric Cancer-Kim (061 samples/-+-)"),

                                                      selected = c("Melanoma-Hugo (040 samples/-+-)","Melanoma-Van Allen (112 samples/+--)"),
                                                      multiple = TRUE),
                                       selectizeInput("treatment_pan_cancer_assessment_expression_sum",
                                                      "Treatment: ",
                                                      choices = NULL,
                                                      multiple = TRUE),

                                       checkboxInput("dynamic_check_pan_cancer_assessment_expression_sum","Dynamic. Changes of expression_sums between On- and Pre- treatment in one sample."),
                                       p("Please note, 'Melanoma-Riaz' and 'Melanoma-Gide' provide dynamic analysis."),
                                       selectizeInput("description_pan_cancer_assessment_expression_sum",
                                                      "Pre- or On-treatment: ",
                                                      choices = NULL,
                                                      multiple = TRUE),
                                       selectizeInput("defined_gene_pan_cancer_assessment_expression_sum",
                                                      "Pre-defined gene set or user-defined list: ",
                                                      choices = c("user-defined list","DNA_damage_response","PDL1_expression_and_PD1_checkpoint_pathway_in_cancer","T_cell_receptor_signaling_pathway","B_cell_receptor_signaling_pathway","Cell_cycle_control","Survival_cell_death_regulation_signaling"),
                                                      multiple = FALSE),
                                       selectizeInput("gene_pan_cancer_assessment_expression_sum","Insert a gene set, for example: CD4 CD6 CD8A CD8B",
                                                      choices = NULL,multiple=TRUE),
                                       ##### Parameter
                                       h4("Parameters of survival analysis",style="color: #663399;font-size: 25px"),

                                       sliderInput("slider_pan_cancer_assessment_expression_sum_OS",
                                                   "Seperate samples by gene expression_sum cutoff (defaulst value is 0.5, i.e. median): ",
                                                   min=0,max=1,value=0.5),
                                       selectizeInput("adjust_OS_pan_cancer_assessment_expression_sum",
                                                      "Adjust survival analysis with: ",
                                                      choices = c("None","Age","Gender","Stage"),
                                                      selected = "None",
                                                      multiple = FALSE),

                                       actionButton("do_pan_cancer_assessment_expression_sum","Go",style="background-color: #7CDBD5")),
                          conditionalPanel(condition="input.do_pan_cancer_assessment_expression_sum",
                                           mainPanel(tabsetPanel(
                                             tabPanel("Summary",
                                                      #div(id="loading-c",tags$img(src="spinner.gif"),style="text-align:center",
                                                      #hide(div(id="app-c",
                                                      wellPanel(
                                                        h1("Statistics",
                                                           style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                           margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                        div(id="container",
                                                            h4("Number of selected cancer type: "),
                                                            div(textOutput("pan_cancer_assessment_expression_sum_summary_disease_number"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                            style="margin-bottom:30px"),
                                                        div(id="container",
                                                            h4("Number of selected samples: "),
                                                            div(textOutput("pan_cancer_assessment_expression_sum_summary_sample_number"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                            style="margin-bottom:30px"),
                                                        plotlyOutput("pan_cancer_assessment_expression_sum_summary_plots",height=960)),
                                                      #uiOutput("mutation_summary_plots",height="auto")),
                                                      wellPanel(h1("Clinical Attribute",
                                                                   style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                                   margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                                selectizeInput("clinical_pan_cancer_assessment_expression_sum","Please select clinical data:",
                                                                               choices = c("treatment type","Pre- or On-treatment","RECIST","Age","Gender")),
                                                                plotlyOutput("pan_cancer_assessment_expression_sum_summary_clinical_plots",height=480),
                                                                style="margin-bottom:-1px"),

                                                      column(12,
                                                             h1("Download",
                                                                style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                                margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                             div(id="container",
                                                                 h4("Data format:   "),
                                                                 radioButtons("pan_cancer_assessment_expression_sum_summary_type","",
                                                                              choices = c("Excel (CSV)","Text (TSV)", "JSON"),
                                                                              inline = TRUE),
                                                                 style="margin-bottom:30px"),
                                                             div(downloadButton("pan_cancer_assessment_expression_sum_summary_download", "Download"),style="margin-bottom:30px"),
                                                             div(DT::dataTableOutput("pan_cancer_assessment_expression_sum_summary_table"),style="background-color: #7CDBD5;overflow-y: scroll;overflow-x: scroll"))
                                             ),
                                             tabPanel("Immunotherapy response",
                                                      wellPanel(
                                                        h1("Analysis in the aggregated dataset",
                                                           style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                         margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                        p(strong("PLEASE NOTE, due to different experimental designs and 
                                                                 data processing methods, and additional covariates, 
                                                                 some bias might be introduced in the aggregated dataset."),style="margin-right:25px;font-family: 'Segoe UI', Helvetica, Arial, sans-serif"),
                                                        plotlyOutput("pan_cancer_assessment_expression_sum_plots_plots",height = "auto")),#),
                                                      h1("Analysis in each individual cohort",
                                                         style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                                          margin-top:20px;margin-left:-20px;margin-right:-20px"),
                                                      uiOutput("pan_cancer_assessment_individual_expression_sum_plots_plots",height = "auto")),#),
#                                              
                                             tabPanel("Overall survival",
                                                      wellPanel(
                                                        h1("Analysis in the aggregated dataset",
                                                           style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                         margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                        plotlyOutput("pan_cancer_assessment_expression_sum_survival_plots",height = "auto"),
                                                        dataTableOutput("pan_cancer_assessment_expression_sum_urvival_summary_tables",height = "auto")),#),
                                                      h1("Analysis in each individual cohort",
                                                         style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                                          margin-top:20px;margin-left:-20px;margin-right:-20px"),
                                                      uiOutput("pan_cancer_assessment_individual_expression_sum_survival_plots",height = "auto")),#),
#                                              
                                             tabPanel("Progression free survival",
                                                      wellPanel(
                                                        h1("Analysis in the aggregated dataset",
                                                           style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                         margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                        plotlyOutput("pan_cancer_assessment_expression_sum_PFS_plots",height = "auto"),
                                                        dataTableOutput("pan_cancer_assessment_expression_sum_PFS_summary_tables",height = "auto")),#),
                                                      h1("Analysis in each individual cohort",
                                                         style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                                          margin-top:20px;margin-left:-20px;margin-right:-20px"),
                                                      uiOutput("pan_cancer_assessment_individual_expression_sum_PFS_plots",height = "auto"))
#                                              # tabPanel("Evaluation",
#                                              #          wellPanel(
#                                              #            h1("Evaluation of Custom Feature",
#                                              #               style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
#                                              #               margin-top:-20px;margin-left:-20px;margin-right:-20px"),
#                                              #            #uiOutput("mutation_evaluation_plots",height = "auto")
#                                              #            DT::dataTableOutput("pan_cancer_assessment_expression_sum_evaluation_table")
#                                              #            ))
                                           )))),
                 
                 tabPanel ("--Transcriptomic: Expression relation pairs",
                           h4("Specific signature assessment",style="font-size:25px;
		                                  text-align: center;
		                                  margin-top: 20px;
                                      "),

                           h4("--Expression relation pairs in aggregated dataset",style="font-size:25px;
		                                  text-align: center;
		                                  margin-top: 20px;
                                      "),
                           fluidRow(column(width=12,h4("Specific signature assessment module provides a detailed view of one
                                                     particular feature. The associations with immunotherapy response,
                                                     overall survival (OS) and progression free survival (PFS) are
                                                     investigated in the module.",
                                                       style="font-size:20px;
                                                     margin-left: 275px;
                                                     margin-right: 275px;"),
                                           h4("Expression relation pairs: exploring the associations of gene pairs with
                                            immunotherapy response, OS and PFS. Gene expression relation pairs is a pairsmed
                                            score of relative comparison of gene pairs.",
                                              style="font-size:20px;
                                            margin-left: 275px;
                                            margin-right: 275px;"),
                                           style="background-color:#7CDBD5; height:180px;margin-bottom:20px")),

                           sidebarPanel(h4("Select samples",style="color: #663399;font-size: 25px"),
                                        helpText("In the options of 'Study: ' box, three +/- labels indicate three types of treatment. + means received this type of treatment. – means did not receive this type of treatment. The first label is for anti-CTLA-4 treatment, the second one is for anti-PD-1/L1 treatment, and the third one is for combination treatment, anti-PD-1/L1+anti-CTLA-4. For example, 'Melanoma-Chen (140 samples/++-)' means Chen dataset contains 104 samples with anti-CTLA-4 or anti-PD-1/L1 therapy."),

                                        selectizeInput("data_source_pan_cancer_assessment_expression_pairs",
                                                       "Study: ",
                                                       # choices = c("Melanoma-Auslander" ,"Melanoma-Chen","Melanoma-Gide","Melanoma-Snyder-Nathanson",
                                                       #             "Melanoma-Hugo","Melanoma-Prat","Melanoma-Riaz" ,"Melanoma-Van Allen","Prostate Cancer-Kwek",
                                                       #             "Renal Cell Carcinoma-Miao","Gastric Cancer-Kim","Melanoma-Jerby-Arnon-ValCo2"),
                                                       choices = c("Melanoma-Auslander (037 samples/+++)",
                                                                   "Melanoma-Chen (104 samples/++-)",
                                                                   "Melanoma-Gide (091 samples/-++)",
                                                                   "Melanoma-Snyder-Nathanson (064 samples/+--)",
                                                                   "Melanoma-Hugo (040 samples/-+-)",
                                                                   "Melanoma-Prat (025 samples/-+-)",
                                                                   "Melanoma-Riaz (139 samples/-+-)",
                                                                   "Melanoma-Van Allen (112 samples/+--)",
                                                                   "Melanoma-Jerby-Arnon-ValCo2 (112 samples/-+-)",
                                                                   "Melanoma-Chen-Pre-On (023 samples)",
                                                                   "Metastatic Urothelial Cancer-Mariathasan (348 samples/-+-)",
                                                                   "Glioblastoma-Cloughesy (029 samples/-+-)",
                                                                   "Prostate Cancer-Kwek (022 samples/+--)",
                                                                   "Renal Cell Carcinoma-Miao (098 samples/-++)",
                                                                   "Gastric Cancer-Kim (061 samples/-+-)"),

                                                       selected = c("Melanoma-Hugo (040 samples/-+-)","Melanoma-Van Allen (112 samples/+--)"),
                                                       multiple = TRUE),
                                        selectizeInput("treatment_pan_cancer_assessment_expression_pairs",
                                                       "Treatment: ",
                                                       choices = NULL,
                                                       multiple = TRUE),
                                        selectizeInput("description_pan_cancer_assessment_expression_pairs",
                                                       "Pre- or On-treatment: ",
                                                       choices = NULL,
                                                       multiple = TRUE),

                                        actionButton("add_pan_cancer_assessment_expression_pairs","Add gene pairs"),
                                        p(strong("Please click 'Add gene pairs' button to insert more gene pairs.")),
                                        p("For example:"),
                                        p("Gene pairs #2: PDCD1,TNFRSF4"),
                                        p("Gene pairs #3: CTLA4,TNFRSF4"),
                                        p("Gene pairs #4: CD28 CD86"),
                                        p("Gene pairs #5: CD27 PDCD1"),
                                        p("For more gene relation pairs which were proved related with immunotheray response, please refer to",a(href="https://www.nature.com/articles/s41591-018-0157-9/","Auslander, et al.")),
                                        p("Gene pan_cancer_assessment_expression relations, are defined as a pairs score for pairwise
                                                    comparison of gene pan_cancer_assessment_expressions."),
                                        p(withMathJax("$$F=\\sum F_{i,j}, F_{i,j}=\\binom{1, exp\\left ( i \\right ) > exp\\left ( j \\right )}{0, otherwise}$$")),
                                        p("Where F is the pairs score, F(i,j) is the score derived by comparing pan_cancer_assessment_expression between gene
                                      i and j. For example, there are m gene pairs, G1 and G1', G2 and G2', ., Gm and Gm'. If G1 > G1',
                                        this gene pair returns a score of 1, otherwise a score of 0.  The pairsmed score is obtained by
                                        adding the score from the m pairs.  "),
                                        selectizeInput("gene_pan_cancer_assessment_expression_pairs_1","Gene pairs #1",choices=NULL,multiple=TRUE,selected = NULL,options=list(maxItems=2)),
                                        selectizeInput("gene_pan_cancer_assessment_expression_pairs_2","Gene pairs #2",choices=NULL,multiple=TRUE,selected = NULL,options=list(maxItems=2)),
                                        #selectizeInput("gene_pan_cancer_assessment_expression_pairs_3","Gene pairs #3",choices=NULL,multiple=TRUE,selected = NULL,options=list(maxItems=2)),
                                        uiOutput("gene_pan_cancer_assessment_expression_pairs"),


                                        ##### Parameter
                                        h4("Parameters of survival analysis",style="color: #663399;font-size: 25px"),
                                        sliderInput("slider_pan_cancer_assessment_expression_pairs_OS",
                                                    "Seperate samples by pairs of gene relation pairs (F): ",
                                                    min=0,max=2,value=0),
                                        selectizeInput("adjust_OS_pan_cancer_assessment_expression_pairs",
                                                       "Adjust survival analysis with: ",
                                                       choices = c("None","Age","Gender","Stage"),
                                                       selected = "None",
                                                       multiple = FALSE),

                                        #uiOutput("slider_pan_cancer_assessment_expression_pairs_OS"),
                                        #uiOutput("slider_pan_cancer_assessment_expression_pairs_PFS"),

                                        actionButton("do_pan_cancer_assessment_expression_pairs","Go",style="background-color: #7CDBD5")),
                           conditionalPanel(condition="input.do_pan_cancer_assessment_expression_pairs",
                                            mainPanel(tabsetPanel(
                                              tabPanel("Summary",
                                                       wellPanel(
                                                         h1("Statistics",
                                                            style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                          margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                         div(id="container",
                                                             h4("Number of selected cancer type: "),
                                                             div(textOutput("pan_cancer_assessment_expression_pairs_summary_disease_number"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                             style="margin-bottom:30px"),
                                                         div(id="container",
                                                             h4("Number of selected samples: "),
                                                             div(textOutput("pan_cancer_assessment_expression_pairs_summary_sample_number"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                             style="margin-bottom:30px"),
                                                         plotlyOutput("pan_cancer_assessment_expression_pairs_summary_plots",height=960)),
                                                       wellPanel(h1("Clinical Attribute",
                                                                    style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                          margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                                 selectizeInput("clinical_pan_cancer_assessment_expression_pairs","Please select clinical data:",
                                                                                choices = c("treatment type","Pre- or On-treatment","RECIST","Age","Gender")),
                                                       plotlyOutput("pan_cancer_assessment_expression_pairs_summary_clinical_plots",height=480),
                                                       style="margin-bottom:-1px"),
                                              column(12,
                                                     h1("Download",
                                                        style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                          margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                     div(id="container",
                                                         h4("Data format:   "),
                                                         radioButtons("pan_cancer_assessment_expression_pairs_summary_type","",
                                                                      choices = c("Excel (CSV)","Text (TSV)", "JSON"),
                                                                      inline = TRUE),
                                                         style="margin-bottom:30px"),
                                                     div(downloadButton("pan_cancer_assessment_expression_pairs_summary_download", "Download"),style="margin-bottom:30px"),
                                                     div(DT::dataTableOutput("pan_cancer_assessment_expression_pairs_summary_table"),style="background-color: #7CDBD5;overflow-y: scroll;overflow-x: scroll"))
                                            ),
                                            tabPanel("Immunotherapy response",
                                                     wellPanel(
                                                       h1("Analysis in the aggregated dataset",
                                                          style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                         margin-top:20px;margin-left:-20px;margin-right:-20px"),
                                                       p(strong("PLEASE NOTE, due to different experimental designs and 
                                                                 data processing methods, and additional covariates, 
                                                                 some bias might be introduced in the aggregated dataset."),style="margin-right:25px;font-family: 'Segoe UI', Helvetica, Arial, sans-serif"),
                                                       plotlyOutput("pan_cancer_assessment_expression_pairs_plots_plots",height = "auto")),#),
                                                     h1("Analysis in each individual cohort",
                                                        style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                                          margin-top:20px;margin-left:-20px;margin-right:-20px"),
                                                     uiOutput("pan_cancer_assessment_individual_expression_pairs_plots_plots",height = "auto")),#),
#                                             
                                            tabPanel("Overall survival",
                                                     wellPanel(
                                                       h1("Analysis in the aggregated dataset",
                                                          style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                         margin-top:20px;margin-left:-20px;margin-right:-20px"),
                                                       plotlyOutput("pan_cancer_assessment_expression_pairs_survival_plots",height = "auto"),
                                                       dataTableOutput("pan_cancer_assessment_expression_pairs_survival_summary_tables",height = "auto")),#),
                                                     h1("Analysis in each individual cohort",
                                                        style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                                          margin-top:20px;margin-left:-20px;margin-right:-20px"),
                                                     uiOutput("pan_cancer_assessment_individual_expression_pairs_survival_plots",height = "auto")),#),
#                                             
                                            tabPanel("Progression free survival",
                                                     wellPanel(
                                                       h1("Analysis in the aggregated dataset",
                                                          style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                         margin-top:20px;margin-left:-20px;margin-right:-20px"),
                                                       plotlyOutput("pan_cancer_assessment_expression_pairs_PFS_plots",height = "auto"),
                                                       dataTableOutput("pan_cancer_assessment_expression_pairs_PFS_summary_tables",height = "auto")),#),
                                                     h1("Analysis in each individual cohort",
                                                        style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                                          margin-top:20px;margin-left:-20px;margin-right:-20px"),
                                                     uiOutput("pan_cancer_assessment_individual_expression_pairs_PFS_plots",height = "auto"))
#                                             # tabPanel("Evaluation",
#                                             #          wellPanel(
#                                             #            h1("Evaluation of Custom Feature",
#                                             #               style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
#                                             #               margin-top:-20px;margin-left:-20px;margin-right:-20px"),
#                                             #            #uiOutput("mutation_evaluation_plots",height = "auto")
#                                             #            DT::dataTableOutput("pan_cancer_assessment_expression_pairs_evaluation_table")
#                                             #            ))
                                            )))),
                 
                 tabPanel("--Transcriptomic: Immune cell components",
                          h4("Specific signature assessment",style="font-size:25px;
		                                  text-align: center;
                            margin-top: 20px;
                            "),

                          h4("--Immune cell components in aggregated dataset",style="font-size:25px;
                             text-align: center;
                             margin-top: 20px;"),
                          fluidRow(column(width=12,h4("Specific signature assessment module provides a detailed view of one
                                                     particular feature. The associations with immunotherapy response,
                                                     overall survival (OS) and progression free survival (PFS) are
                                                     investigated in the module.",
                                                      style="font-size:20px;
                                                     margin-left: 275px;
                                                     margin-right: 275px;"),
                                          h4("Immune cell components in aggregated dataset: exploring the associations of immune cell proportion with
                                            immunotherapy response, OS and PFS in the aggregated cohort. ",
                                             style="font-size:20px;
                                            margin-left: 275px;
                                            margin-right: 275px;"),
                                          style="background-color:#7CDBD5; height:180px;margin-bottom:20px")),

                          #fluidRow(column(width=12,style="background-color:#7CDBD5; height:180px;margin-bottom:20px")),
                          sidebarPanel(h4("Selection",style="color: #663399;font-size:25px"),
                                       helpText("In the options of 'Study: ' box, three +/- labels indicate three types of treatment. + means received this type of treatment. – means did not receive this type of treatment. The first label is for anti-CTLA-4 treatment, the second one is for anti-PD-1/L1 treatment, and the third one is for combination treatment, anti-PD-1/L1+anti-CTLA-4. For example, 'Melanoma-Chen (140 samples/++-)' means Chen dataset contains 104 samples with anti-CTLA-4 or anti-PD-1/L1 therapy."),

                                       selectizeInput("data_source_pan_cancer_assessment_cibersort",
                                                      "Study: ",
                                                      # choices = c("Melanoma-Auslander" ,"Melanoma-Chen","Melanoma-Gide","Melanoma-Snyder-Nathanson",
                                                      #             "Melanoma-Hugo","Melanoma-Prat","Melanoma-Riaz" ,"Melanoma-Van Allen","Prostate Cancer-Kwek",
                                                      #             "Renal Cell Carcinoma-Miao","Gastric Cancer-Kim"),
                                                      choices = c("Melanoma-Auslander (037 samples/+++)",
                                                                  "Melanoma-Chen (104 samples/++-)",
                                                                  "Melanoma-Gide (091 samples/-++)",
                                                                  "Melanoma-Snyder-Nathanson (064 samples/+--)",
                                                                  "Melanoma-Hugo (040 samples/-+-)",
                                                                  "Melanoma-Prat (025 samples/-+-)",
                                                                  "Melanoma-Riaz (139 samples/-+-)",
                                                                  "Melanoma-Van Allen (112 samples/+--)",
                                                                  "Melanoma-Jerby-Arnon-ValCo2 (112 samples/-+-)",
                                                                  "Melanoma-Chen-Pre-On (023 samples)",
                                                                  "Metastatic Urothelial Cancer-Mariathasan (348 samples/-+-)",
                                                                  "Glioblastoma-Cloughesy (029 samples/-+-)",
                                                                  "Prostate Cancer-Kwek (022 samples/+--)",
                                                                  "Renal Cell Carcinoma-Miao (098 samples/-++)",
                                                                  "Gastric Cancer-Kim (061 samples/-+-)"),

                                                      selected = c("Melanoma-Hugo (040 samples/-+-)","Melanoma-Van Allen (112 samples/+--)"),
                                                      multiple = TRUE),
                                       selectizeInput("treatment_pan_cancer_assessment_cibersort",
                                                      "Treatment: ",
                                                      choices = NULL,
                                                      multiple = TRUE),
                                       checkboxInput("dynamic_check_pan_cancer_assessment_cibersort","Dynamic. Changes of immune cell infiltration between On- and Pre- treatment in one sample."),
                                       p("Please note, 'Melanoma-Riaz' and 'Melanoma-Gide' provide dynamic analysis."),

                                       selectizeInput("description_pan_cancer_assessment_cibersort",
                                                      "Pre- or On-treatment: ",
                                                      choices = NULL,
                                                      multiple = TRUE),
                                       selectizeInput("immucell_pan_cancer_assessment_cibersort","Immune cell type: ",
                                                      choices = sort(c("B.cells.naive","B.cells.memory","Plasma.cells","T.cells.CD8","T.cells.CD4.naive","T.cells.CD4.memory.resting","T.cells.CD4.memory.activated","T.cells.follicular.helper","T.cells.regulatory..Tregs.","T.cells.gamma.delta","NK.cells.resting","NK.cells.activated","Monocytes","Macrophages.M0","Macrophages.M1","Macrophages.M2","Dendritic.cells.resting","Dendritic.cells.activated","Mast.cells.resting","Mast.cells.activated","Eosinophils","Neutrophils")),
                                                      selected = "Macrophages.M1"),
                                       ##### Parameter
                                       h4("Parameters of survival analysis",style="color: #663399;font-size: 25px"),

                                       sliderInput("slider_pan_cancer_assessment_cibersort_OS",
                                                   "Seperate samples by immune cell infiltration cutoff (%): ",
                                                   min=0,max=1,value=0.5),
                                       selectizeInput("adjust_OS_pan_cancer_assessment_cibersort",
                                                      "Adjust survival analysis with: ",
                                                      choices = c("None","Age","Gender","Stage"),
                                                      selected = "None",
                                                      multiple = FALSE),

                                       actionButton("do_pan_cancer_assessment_cibersort","Go",style="background-color: #7CDBD5")),
                          conditionalPanel(condition="input.do_pan_cancer_assessment_cibersort",
                                           mainPanel(tabsetPanel(
                                             tabPanel("Summary",
                                                      #div(id="loading-c",tags$img(src="spinner.gif"),style="text-align:center",
                                                      #hide(div(id="app-c",
                                                      wellPanel(
                                                        h1("Statistics",
                                                           style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                           margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                        div(id="container",
                                                            h4("Number of selected cancer type: "),
                                                            div(textOutput("pan_cancer_assessment_cibersort_summary_disease_number"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                            style="margin-bottom:30px"),
                                                        div(id="container",
                                                            h4("Number of selected samples: "),
                                                            div(textOutput("pan_cancer_assessment_cibersort_summary_sample_number"),style="font-family: 'Lobster', cursive; color: #ad1d28; font-size: 20px"),
                                                            style="margin-bottom:30px"),
                                                        plotlyOutput("pan_cancer_assessment_cibersort_summary_plots",height=960)),
                                                      #uiOutput("mutation_summary_plots",height="auto")),
                                                      wellPanel(h1("Clinical Attribute",
                                                                   style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                                   margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                                selectizeInput("pan_cancer_assessment_cibersort_clinical","Please select clinical data:",
                                                                               choices = c("treatment type","Pre- or On-treatment","RECIST","Age","Gender")),
                                                                plotlyOutput("pan_cancer_assessment_cibersort_summary_clinical_plots",height=480),
                                                                style="margin-bottom:-1px"),

                                                      column(12,
                                                             h1("Download",
                                                                style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                                margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                             div(id="container",
                                                                 h4("Data format:   "),
                                                                 radioButtons("pan_cancer_assessment_cibersort_summary_type","",
                                                                              choices = c("Excel (CSV)","Text (TSV)", "JSON"),
                                                                              inline = TRUE),
                                                                 style="margin-bottom:30px"),
                                                             div(downloadButton("pan_cancer_assessment_cibersort_summary_download", "Download"),style="margin-bottom:30px"),
                                                             div(DT::dataTableOutput("pan_cancer_assessment_cibersort_summary_table"),style="background-color: #7CDBD5;overflow-y: scroll;overflow-x: scroll"))
                                                      ),
                                             tabPanel("Immunotherapy response",
                                                      wellPanel(
                                                        h1("Analysis in the aggregated dataset",
                                                           style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                         margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                        plotlyOutput("pan_cancer_assessment_cibersort_plots_plots",height = "auto")),#),
                                                      h1("Analysis in each individual cohort",
                                                         style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                                          margin-top:20px;margin-left:-20px;margin-right:-20px"),
                                                      uiOutput("pan_cancer_assessment_individual_cibersort_plots_plots",height = "auto")),#),
#                                              
                                             tabPanel("Overall survival",
                                                     wellPanel(
                                                        h1("Analysis in the aggregated dataset",
                                                           style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                         margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                        plotlyOutput("pan_cancer_assessment_cibersort_survival_plots",height = "auto"),
                                                        dataTableOutput("pan_cancer_assessment_cibersort_survival_summary_tables",height = "auto")),#),
                                                      h1("Analysis in each individual cohort",
                                                         style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                                          margin-top:20px;margin-left:-20px;margin-right:-20px"),
                                                      uiOutput("pan_cancer_assessment_individual_cibersort_survival_plots",height = "auto")),#),
#                                              
                                             tabPanel("Progression free survival",
                                                      wellPanel(
                                                        h1("Analysis in the aggregated dataset",
                                                           style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                         margin-top:-20px;margin-left:-20px;margin-right:-20px"),
                                                        plotlyOutput("pan_cancer_assessment_cibersort_PFS_plots",height = "auto"),
                                                        dataTableOutput("pan_cancer_assessment_cibersort_PFS_summary_tables",height = "auto")),#),
                                                      h1("Analysis in each individual cohort",
                                                         style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
                                                                          margin-top:20px;margin-left:-20px;margin-right:-20px"),
                                                      uiOutput("pan_cancer_assessment_individual_cibersort_PFS_plots",height = "auto"))
#                                                       # plotlyOutput("pan_cancer_assessment_cibersort_PFS_plots",height = "auto"))#,#),
#                                              # tabPanel("Evaluation",
#                                              #          wellPanel(
#                                              #            h1("Evaluation of Custom Feature",
#                                              #               style="height:40px;font-size:23px;color:black;background-color:#DCB239;text-align:center;
#                                              #               margin-top:-20px;margin-left:-20px;margin-right:-20px"),
#                                              #            #uiOutput("mutation_evaluation_plots",height = "auto")
#                                              #            DT::dataTableOutput("pan_cancer_assessment_cibersort_evaluation_table")
#                                              #            ))
                                             ))))
                 ),



    

    tabPanel("Users' data",
             h4("Users' data",style="font-size:25px;
		                                  text-align: center;
		                                  margin-top: 20px;
                                      "),
             fluidRow(column(width=12,p("",
                                        style="font-size:20px;
                  font-weight:bold;
                  margin-left: 500px;
                  margin-right: 500px;
                  text-align: center;
                  position:absolute;
                  "),
                             style="background-color:#7CDBD5; height:180px;margin-bottom:20px")),
             

             # fluidRow(column(width=12,h4("This tab enables users to upload your own datasets, 
             #       which are not restricted to melanoma but can be from any cancer types. 
             #       The uploaded data can be analysed independently or co-analysed with existing datasets to 
             #       identify or validate signatures of interest.",style="text-align:center"),
             #                 style="background-color:#008F95; height:200px;margin-bottom:20px")),
             fluidRow(column(4,h4("Upload clinical data",style="color: #663399;font-size: 20px"),
                             fileInput("file_clinical","Choose a file to upload:",
                                       accept = c(
                                         'text/csv',
                                         'text/comma-separated-values',
                                         'text/tab-separated-values',
                                         'text/plain',
                                         '.csv',
                                         '.tsv')),
                             #                         tags$hr(),
                             #                         radioButtons("header_clinical","Header",c(Yes=TRUE,No=FALSE),TRUE),
                             #                         radioButtons("sep_clinical","Separator",c(Comma=",",Semicolon=";",Tab="\t"),"\t"),
                             #                         actionButton("do_user_data_clinical","Combine",style="background-color: lightblue"),
                             tags$hr(),
                             p("Example file for clinical data: ",a(href="Example_clinical_data.txt","Example_clinical_data.txt")),
                             p("The clinical data should contain 12 columns which are 'Disease','PatientID','data_source','treatment type','treatment status','PFS.status','RECIST','OS.status','OS','PFS','Age' and 'Gender'."),
                             div(id="container",p("Disease",style="color:#DCB239"),p(": required. Cancer type.")),
                             div(id="container",p("PatientID",style="color:#DCB239"),p(": required. A unique identifier for each sample.")),
                             div(id="container",p("data_source",style="color:#DCB239"),p(": required. A character string specifying the experiment name (e.g. 'experiment_1', 'MyExperiment', 'User', etc).")),
                             div(id="container",p("treatment type",style="color:#DCB239"),p(": required. A character string specifying the treatment type, for example, 'anti-PD-1', 'anti-CTLA-4', 'anti-IL17RA', etc. ")),
                             div(id="container",p("treatment status",style="color:#DCB239"),p(": required. Flaglist string specifying pre-treatment or on-treatment. Please insert one of 'Pre', 'On', or 'Unknown' for each sample. ")),
                             div(id="container",p("PFS.status",style="color:#DCB239"),p(": required. Flaglist string specifying the therapeutic outcome. Please insert one of 'response', 'nonresponse' or 'Unknown' for each sample. ")),
                             div(id="container",p("RECIST",style="color:#DCB239"),p(": optional. RECIST is a standard way to measure how well a cancer patient responds to treatment, please refer to ",a(href= "https://www.cancer.gov/publications/dictionaries/cancer-terms/def/recist","NIH."), "Please specify one of 'CR', 'PR', 'PD', 'SD' or 'NA'.")),
                             div(id="container",p("OS.status",style="color:#DCB239"),p(": optional. Specifying one of 'living', 'deceased' or 'NA'.")),
                             div(id="container",p("OS",style="color:#DCB239"),p(": optional. A number specifying overall survival days. If no data available fill in NA. ")),
                             div(id="container",p("PFS",style="color:#DCB239"),p(": optional. A number specifying progression free survival days. If no data available fill in NA. ")),
                             div(id="container",p("Age",style="color:#DCB239"),p(": optional. ")),
                             div(id="container",p("Gender",style="color:#DCB239"),p(": optional. Specifying one of 'Male', 'Female' or 'NA'.")),
                             
                             p("Please keep your column names same with above columns' names. If no data available please fill in NA."),
                             style="background-color: #DCDCDC;margin-right:20px"),
                      column (7,h4("Check for uploaded clinical data",style="color: #663399;font-size: 20px"),
                              radioButtons("display_clinical","Display",
                                           choices = c("Top 10 rows","All"),
                                           inline = TRUE),
                              div(tableOutput("user_clinical_table"),style="background-color: #7CDBD5;overflow-y: scroll;overflow-x: scroll"),
                              style="background-color: #DCDCDC"),
                      style="margin-left:25px;margin-right:25px"
             ),
             div(class = "intro-divider-sub"), 
             fluidRow(column(4,h4("Upload transcriptome data",style="color: #663399;font-size: 20px"),
                             fileInput("file_transcriptome","Choose a file to upload:",
                                       accept = c(
                                         'text/csv',
                                         'text/comma-separated-values',
                                         'text/tab-separated-values',
                                         'text/plain',
                                         '.csv',
                                         '.tsv')),
                             #                            tags$hr(),
                             #                            radioButtons("header_transcriptome","Header",c(Yes="TRUE",No="FALSE"),"TRUE"),
                             #                            radioButtons("sep_transcriptome","Separator",c(Comma=",",Semicolon=";",Tab="\t"),"\t"),
                             #                            actionButton("do_user_data_transcriptome","Combine",style="background-color: lightblue"),
                             tags$hr(),
                             p("Example file for transcriptome data: ",a(href="Example_transcriptome_data.txt","Example_transcriptome_data.txt")),
                             p("The transcriptome data where each row represents a sample and each column represents a gene. And the gene expression values should be normalized and log2 transfered."),
                             #p("The transcriptome data must contain m rows which denote samples and n columns which denote patientID and gene symbols. And the gene expression values should be normalized and log2 transfered."),
                             p("PLEASE NOTE: the 'PatientID' of each sample should match to the 'PatientID' column of clinical data."),
                             style="background-color: #DCDCDC;margin-right:20px"),
                      column (7,h4("Check for uploaded transcriptome data",style="color: #663399;font-size: 20px"),
                              radioButtons("display_transcriptome","Display",
                                           choices = c("Top 10 rows and columns","All"),
                                           inline = TRUE),
                              div(tableOutput("user_transcriptome_table"),style="background-color: #7CDBD5;overflow-y: scroll;overflow-x: scroll"),
                              style="background-color: #DCDCDC"),
                      style="margin-left:25px;margin-right:25px"
             ),
             div(class = "intro-divider-sub"),
             fluidRow(column(4,h4("Upload mutation data",style="color: #663399;font-size: 20px"),
                             fileInput("file_mutation","Choose a file to upload:",
                                       accept = c(
                                         'text/csv',
                                         'text/comma-separated-values',
                                         'text/tab-separated-values',
                                         'text/plain',
                                         '.csv',
                                         '.tsv')),
                             #                              tags$hr(),
                             #                              radioButtons("header_mutation","Header",c(Yes="TRUE",No="FALSE"),"TRUE"),
                             #                              radioButtons("sep_mutation","Separator",c(Comma=",",Semicolon=";",Tab="\t"),"\t"),
                             
                             tags$hr(),
                             p("Example file for mutation data: ",a(href="Example_mutation_data.txt","Example_mutation_data.txt")),
                             p("The mutation data should contain 7 columns which are 'PatientID','gene','variant_class', 'Chromosome', 'pos', 'ref' and 'alt'."),
                             div(id="container",p("PatientID",style="color:#DCB239"),p(": required. Sample identifier. NOTE: the 'PatientID' column of mutation data should match to the 'PatientID' column of clinical data.")),
                             div(id="container",p("gene",style="color:#DCB239"),p(": required. Gene symbols")),
                             div(id="container",p("variant_class",style="color:#DCB239"),p(": required. Flaglist string specifying variant type. For example, 'Missense_Mutation', 'Nonsense_Mutation', 'Silent', 'Intron', and etc.")),
                             div(id="container",p("Chromosome",style="color:#DCB239"),p(": required. Flaglist string or number specifying chromosome. For example, both of 'chr1','chr2' and '1', '2' are acceptable.")),
                             div(id="container",p("pos",style="color:#DCB239"),p(": required. Mutation position. Default is set to the UCSC hg19 assembly, which corresponds to the GRCh37 assembly.")),
                             div(id="container",p("ref",style="color:#DCB239"),p(": required. reference base.")),
                             div(id="container",p("alt",style="color:#DCB239"),p(": required. alternate base.")),
                             p("Please keep your column names same with above columns' names. If no data available please fill in NA."),
                             
                             style="background-color: #DCDCDC;margin-right:20px"),
                      column(7,h4("Check for uploaded mutation data",style="color: #663399;font-size: 20px"), 
                             radioButtons("display_mutation","Display",
                                          choices = c("Top 10 rows","All"),
                                          inline = TRUE),
                             div(tableOutput("user_mutation_table"),style="background-color: #7CDBD5;overflow-y: scroll;overflow-x: scroll"),
                             style="background-color: #DCDCDC"),
                      style="margin-left:25px;margin-right:25px"
             ),
             
             div(class = "intro-divider-sub"),
             
             fluidRow(column(4,h4("Upload single-cell data",style="color: #663399;font-size: 20px"),
                             h4("--Gene-cell matrix",style="color: #663399;font-size: 20px"),
                             fileInput("file_gene_cell","Choose a file to upload:",
                                       accept = c(
                                         'text/csv',
                                         'text/comma-separated-values',
                                         'text/tab-separated-values',
                                         'text/plain',
                                         '.csv',
                                         '.tsv')),
                             #                              tags$hr(),
                             #                              radioButtons("header_mutation","Header",c(Yes="TRUE",No="FALSE"),"TRUE"),
                             #                              radioButtons("sep_mutation","Separator",c(Comma=",",Semicolon=";",Tab="\t"),"\t"),
                             
                             tags$hr(),
                             p("Example file for gene-cell data: ",a(href="Example_gene_cell_data.txt","Example_gene_cell_data.txt")),
                             p("The gene-cell data where each row represents a cell and each column represents 
                               a gene. And the gene expression values should be read counts."),
                             
                             style="background-color: #DCDCDC;margin-right:20px;margin-bottom:20px"),
                      column(7,h4("Check for uploaded gene-cell data",style="color: #663399;font-size: 20px"), 
                             radioButtons("display_gene_cell","Display",
                                          choices = c("Top 10 rows * top 10 columns","All"),
                                          inline = TRUE),
                             div(tableOutput("user_gene_cell_table"),style="background-color: lightblue;overflow-y: scroll;overflow-x: scroll"),
                             style="background-color: #DCDCDC"),
                      style="margin-left:25px;margin-right:25px;margin-bottom:20px"
             ),
             
             fluidRow(column(4,
                             h4("--Patient-cell data",style="color: #663399;font-size: 20px"),
                             fileInput("file_patient_cell","Choose a file to upload:",
                                       accept = c(
                                         'text/csv',
                                         'text/comma-separated-values',
                                         'text/tab-separated-values',
                                         'text/plain',
                                         '.csv',
                                         '.tsv')),
                             #                              tags$hr(),
                             #                              radioButtons("header_mutation","Header",c(Yes="TRUE",No="FALSE"),"TRUE"),
                             #                              radioButtons("sep_mutation","Separator",c(Comma=",",Semicolon=";",Tab="\t"),"\t"),
                             
                             tags$hr(),
                             p("Example file for patient-cell data: ",a(href="Example_patient_cell_data.txt","Example_patient_cell_data.txt")),
                             p("The patient-cell data should contain 2 columns which are 'PatientID' and 'cells'."),
                             div(id="container",p("PatientID",style="color:#DCB239"),p(": required. Sample identifier. NOTE: the 'PatientID' column of mutation data should match to the 'PatientID' column of clinical data.")),
                             div(id="container",p("cells",style="color:#DCB239"),p(": required. Cell names")),
                             
                             p("Please keep your column names same with above columns' names. If no data available please fill in NA."),
                             p("PLEASE NOTE: the 'PatientID' of each sample should match to the 'PatientID' column of clinical data.
                               the 'cells' should match to the column names of gene-cell data."),
                             style="background-color: #DCDCDC;margin-right:20px"),
                      column(7,h4("Check for uploaded patient-cell data",style="color: #663399;font-size: 20px"), 
                             radioButtons("display_patient_cell","Display",
                                          choices = c("Top 10 rows","All"),
                                          inline = TRUE),
                             div(tableOutput("user_patient_cell_table"),style="background-color: lightblue;overflow-y: scroll;overflow-x: scroll"),
                             style="background-color: #DCDCDC"),
                      style="margin-left:25px;margin-right:25px"
             ),
             div(class = "intro-divider-sub"),
             actionButton("do_user_data","Combine my data to Immu-Mela",style="background-color: #7CDBD5; margin-left:25px"),
             div(progressBar(id = "pb2",value = 0,total = 100,title = "",display_pct = TRUE),style="margin-left:25px;margin-right:25px"),
             p(strong("This may take a while"),style="margin-left:25px;margin-right:25px;font-family: 'Segoe UI', Helvetica, Arial, sans-serif"),
             div(class = "intro-divider-sub")
    ),
    tabPanel("HELP",
             fluidRow(column(width=12,style="background-color:#7CDBD5; height:180px;margin-bottom:20px")),
             h4("Methods",style="margin-left:275px;color: #663399;font-size:25px"),
             p("Cancer-Immu explores the associations of multi-angle features with immunotherapy response, 
               which are derived from a variety types of genomic data, including genetic, transcriptomic and single cell. 
               Genetic level is comprised of mutation, mutational loads/burden, and mutational signature. Transcriptomic 
               level includes expression, expression sum, expression relation pairs and immune cell components. Single-cell 
               level contains gene/protein expression and specific cell population (Figure 1).",
               style="font-size:20px;
               margin-left: 300px;
               margin-right: 275px;"),
             # div(img(src='Methods_Figure1-20200908.jpg'),
             div(img(src='Methods_Figure1-20210405.jpg'),
                 style="text-align: center;
                 margin-top: 20px;
                 margin-bottom: 20px"),
             p("Figure 1. Data content of Cancer-Immu.",
               style="font-size:20px;
               margin-left: 300px;
               margin-right: 275px;
               text-align:center"),
             p("Cancer-Immu provides meta-analysis and pan-cancer analysis modules to detect consistent and rare 
               omics features associated with immunotherapy response across multiple cohorts. Each analysis includes 
               two functions, signature prioritization and specific signature assessment.",
               style="font-size:20px;
               margin-left: 300px;
               margin-right: 275px;"),
             p("Signatures prioritization in the meta-analysis is aimed to rank 
               signatures based on their common associations with immunotherapy 
               response across multiple cohorts. The association test is performed 
               in each individual cohort. Firstly, we scaled signature values in 
               each individual cohort to z-scores with mean of zero and standard 
               deviation of one. And then effect size and standard error of effect 
               size were calculated from binomial logistic regression using z-scores 
               as terms and immune checkpoint inhibitor therapy response as values. 
               The meta-analysis results of the associations between signature and 
               response (odds ratios) can be estimated by combining individual 
               result in each study via random forest model of meta-analysis by 
               meta package in R. Then, as a final step, the signatures are ranked 
               by the meta-analysis p-value/FDR (top panel of Figure 2). 
               The detailed view of the association between one signature and ICB 
               responsiveness, OS and PFS, is provided by specific signature 
               assessment module (bottom panel of Figure 2).",
               style="font-size:20px;
               margin-left: 300px;
               margin-right: 275px;"),
             # div(img(src='Methods_Figure2-20200908.jpg'),
             div(img(src='Methods_Figure2-20210405.jpg'),
                 style="text-align: center;
                 margin-top: 20px;
                 margin-bottom: 20px"),
             p("Figure 2. Meta-analysis module.",
               style="font-size:20px;
               margin-left: 300px;
               margin-right: 275px;
               text-align:center"),
             p("Pan-cancer analysis evaluates and ranks signatures based on their associations with ICB-based 
               response in the aggregated cohort. To detect the associations between 
               rare events and ICB-based response in a large-scale dataset rather than 
               in multiple individual datasets, we aggregated datasets as one big dataset. 
               Some genetic data, including mutation, mutation signatures and immune cell 
               components, were integrated directly without any further process since genomic 
               features are generally comparable and have negligible batch effects across 
               datasets. For incomparable data, to remove platform- or laboratory-specific 
               batch effects, we performed batch correction by using removeBatchEffect 
               function of limma R package along with a design matrix to preserve the 
               response effect. Signatures prioritization calculates the associations between 
               signatures and ICB-based response and then ranks signatures based on the p-value in the aggregated 
               cohort. Specific signature assessment provides a detailed view of the associations between one given 
               signature and ICB therapeutic response, OS and PFS in the aggregated cohort (Figure 3).",
               style="font-size:20px;
               margin-left: 300px;
               margin-right: 275px;"),
             # div(img(src='Methods_Figure3-20200908.jpg'),
             div(img(src='Methods_Figure3-20210405.jpg'),
                 style="text-align: center;
                 margin-top: 20px;
                 margin-bottom: 20px"),
             p("Figure 3. Pan-cancer analysis module.",
               style="font-size:20px;
               margin-left: 300px;
               margin-right: 275px;
               text-align:center"),
             h4("Contact",style="margin-left:275px;color: #663399;font-size:25px"),
             
             p("If you have questions, comments, or find any bugs with Cancer-Immu, please contact",
               style="font-size:20px;
               margin-left: 300px;
               margin-right: 275px;"),
             div(id="container",
                 p("Dr. Qi Liu <",style=""),
                 p("qi.liu@vumc.org",style="color:blue"),
                 p(">",style=""),
                 style="font-size:20px;margin-left: 300px;margin-right: 275px;"),
             div(id="container",
                 p("Dr. Jing Yang <",style=""),
                 p("jing.yang@vumc.org",style="color:blue"),
                 p(">",style=""),
                 style="font-size:20px;margin-left: 300px;margin-right: 275px;"),
             h4("Reference",style="margin-left:275px;color: #663399;font-size:25px"),
             div(id="container",
                 p("[",a(href="https://pubmed.ncbi.nlm.nih.gov/30127394","1"), "]", 
              "Auslander N, Zhang G, Lee JS, Frederick DT, Miao B, Moll T, Tian T, Wei Z, Madan S, Sullivan RJ, 
              Boland G, Flaherty K, Herlyn M, Ruppin E. Robust prediction of response to immune checkpoint blockade 
              therapy in metastatic melanoma. Nat Med. 2018 Oct;24(10):1545-1549. doi: 10.1038/s41591-018-0157-9. 
              Epub 2018 Aug 20. Erratum in: Nat Med. 2018 Dec;24(12):1942. PMID: 30127394; PMCID: PMC6693632.",style="font-size:20px;"),
                 style="font-size:20px;
                 margin-left: 300px;
                 margin-right: 275px;"),
             div(id="container",
                 p("[",a(href="https://www.ncbi.nlm.nih.gov/pubmed/27301722","2"), "]", 
                   "Chen PL, Roh W, Reuben A, Cooper ZA, Spencer CN, Prieto PA, Miller JP, Bassett RL, Gopalakrishnan V, Wani K, De Macedo MP, Austin-Breneman JL, Jiang H, Chang Q, Reddy SM, Chen WS, Tetzlaff MT, Broaddus RJ, Davies MA, Gershenwald JE, Haydu L, Lazar AJ, Patel SP, Hwu P, Hwu WJ, Diab A, Glitza IC, Woodman SE, Vence LM, Wistuba II, Amaria RN, Kwong LN, Prieto V, Davis RE, Ma W, Overwijk WW, Sharpe AH, Hu J, Futreal PA, Blando J, Sharma P, Allison JP, Chin L, Wargo JA. Analysis of Immune Signatures in Longitudinal Tumor Samples Yields Insight into Biomarkers of Response and Mechanisms of Resistance to Immune Checkpoint Blockade. Cancer Discov. 2016 Aug;6(8):827-37. doi: 10.1158/2159-8290.CD-15-1545. Epub 2016 Jun 14. PMID: 27301722; PMCID: PMC5082984.",style="font-size:20px;"),
                 style="font-size:20px;
                 margin-left: 300px;
                 margin-right: 275px;"),
             div(id="container",
                 p("[",a(href="https://www.ncbi.nlm.nih.gov/pubmed/26997480","3"), "]", 
                   "Hugo W, Zaretsky JM, Sun L, Song C, Moreno BH, Hu-Lieskovan S, Berent-Maoz B, Pang J, Chmielowski B, Cherry G, Seja E, Lomeli S, Kong X, Kelley MC, Sosman JA, Johnson DB, Ribas A, Lo RS. Genomic and Transcriptomic Features of Response to Anti-PD-1 Therapy in Metastatic Melanoma. Cell. 2016 Mar 24;165(1):35-44. doi: 10.1016/j.cell.2016.02.065. Epub 2016 Mar 17. Erratum in: Cell. 2017 Jan 26;168(3):542. PMID: 26997480; PMCID: PMC4808437.",style="font-size:20px;"),
                 style="font-size:20px;
                 margin-left: 300px;
                 margin-right: 275px;"),
             div(id="container",
                 p("[",a(href="https://www.ncbi.nlm.nih.gov/pubmed/28487385","4"), "]", 
                   "Prat A, Navarro A, PareL, Reguart N, Galvan P, Pascual T, Martinez A, Nuciforo P, Comerma L, Alos L, Pardo N, Cedres S, Fan C, Parker JS, Gaba L, Victoria I, Vinolas N, Vivancos A, Arance A, Felip E. Immune-Related Gene Expression Profiling After PD-1 Blockade in Non-Small Cell Lung Carcinoma, Head and Neck Squamous Cell Carcinoma, and Melanoma. Cancer Res. 2017 Jul 1;77(13):3540-3550. doi: 10.1158/0008-5472.CAN-16-3556. Epub 2017 May 9. PMID: 28487385.",style="font-size:20px;"),
                 style="font-size:20px;
                 margin-left: 300px;
                 margin-right: 275px;"),
             div(id="container",
                 p("[",a(href="https://www.ncbi.nlm.nih.gov/pubmed/29033130","5"), "]", 
                   "Riaz N, Havel JJ, Makarov V, Desrichard A, Urba WJ, Sims JS, Hodi FS, Martin-Algarra S, Mandal R, Sharfman WH, Bhatia S, Hwu WJ, Gajewski TF, Slingluff CL Jr, Chowell D, Kendall SM, Chang H, Shah R, Kuo F, Morris LGT, Sidhom JW, Schneck JP, Horak CE, Weinhold N, Chan TA. Tumor and Microenvironment Evolution during Immunotherapy with Nivolumab. Cell. 2017 Nov 2;171(4):934-949.e16. doi: 10.1016/j.cell.2017.09.028. Epub 2017 Oct 12. PMID: 29033130; PMCID: PMC5685550.",style="font-size:20px;"),
                 style="font-size:20px;
                 margin-left: 300px;
                 margin-right: 275px;"),
             div(id="container",
                 p("[",a(href="https://www.ncbi.nlm.nih.gov/pubmed/30643254","6"), "]", 
                   "Samstein RM, Lee CH, Shoushtari AN, Hellmann MD, Shen R, Janjigian YY, Barron DA, Zehir A, Jordan EJ, Omuro A, Kaley TJ, Kendall SM, Motzer RJ, Hakimi AA, Voss MH, Russo P, Rosenberg J, Iyer G, Bochner BH, Bajorin DF, Al-Ahmadie HA, Chaft JE, Rudin CM, Riely GJ, Baxi S, Ho AL, Wong RJ, Pfister DG, Wolchok JD, Barker CA, Gutin PH, Brennan CW, Tabar V, Mellinghoff IK, DeAngelis LM, Ariyan CE, Lee N, Tap WD, Gounder MM, D'Angelo SP, Saltz L, Stadler ZK, Scher HI, Baselga J, Razavi P, Klebanoff CA, Yaeger R, Segal NH, Ku GY, DeMatteo RP, Ladanyi M, Rizvi NA, Berger MF, Riaz N, Solit DB, Chan TA, Morris LGT. Tumor mutational load predicts survival after immunotherapy across multiple cancer types. Nat Genet. 2019 Feb;51(2):202-206. doi: 10.1038/s41588-018-0312-8. Epub 2019 Jan 14. PMID: 30643254; PMCID: PMC6365097.",style="font-size:20px;"),
                 style="font-size:20px;
                 margin-left: 300px;
                 margin-right: 275px;"),
             div(id="container",
                 p("[",a(href="https://www.ncbi.nlm.nih.gov/pubmed/25409260","7"), "]", 
                   "Snyder A, Makarov V, Merghoub T, Yuan J, Zaretsky JM, Desrichard A, Walsh LA, Postow MA, Wong P, Ho TS, Hollmann TJ, Bruggeman C, Kannan K, Li Y, Elipenahli C, Liu C, Harbison CT, Wang L, Ribas A, Wolchok JD, Chan TA. Genetic basis for clinical response to CTLA-4 blockade in melanoma. N Engl J Med. 2014 Dec 4;371(23):2189-2199. doi: 10.1056/NEJMoa1406498. Epub 2014 Nov 19. Erratum in: N Engl J Med. 2018 Nov 29;379(22):2185. PMID: 25409260; PMCID: PMC4315319.",style="font-size:20px;"),
                 style="font-size:20px;
                 margin-left: 300px;
                 margin-right: 275px;"),
             p("...",style="font-size:20px;
                 margin-left: 300px;
               margin-right: 275px;"),
             # div(id="container",
             #     p("[",a(href="https://www.ncbi.nlm.nih.gov/pubmed/26359337","8"), "]", 
             #       "Van Allen EM, Miao D, Schilling B, Shukla SA, Blank C, Zimmer L, Sucker A, Hillen U, Foppen MHG, Goldinger SM, Utikal J, Hassel JC, Weide B, Kaehler KC, Loquai C, Mohr P, Gutzmer R, Dummer R, Gabriel S, Wu CJ, Schadendorf D, Garraway LA. Genomic correlates of response to CTLA-4 blockade in metastatic melanoma. Science. 2015 Oct 9;350(6257):207-211. doi: 10.1126/science.aad0095. Epub 2015 Sep 10. Erratum in: Science. 2015 Nov 13;350(6262):aad8366. Erratum in: Science. 2016 Apr 15;352(6283). pii: aaf8264. doi: 10.1126/science.aaf8264. PMID: 26359337; PMCID: PMC5054517.",style="font-size:20px;"),
             #     style="font-size:20px;
             #     margin-left: 300px;
             #     margin-right: 275px;"),
             # div(id="container",
             #     p("[",a(href="https://www.ncbi.nlm.nih.gov/pubmed/30388455","9"), "]", 
             #       "Jerby-Arnon L, Shah P, Cuoco MS, Rodman C, Su MJ, Melms JC, Leeson R, Kanodia A, Mei S, Lin JR, Wang S, Rabasha B, Liu D, Zhang G, Margolais C, Ashenberg O, Ott PA, Buchbinder EI, Haq R, Hodi FS, Boland GM, Sullivan RJ, Frederick DT, Miao B, Moll T, Flaherty KT, Herlyn M, Jenkins RW, Thummalapalli R, Kowalczyk MS, Canadas I, Schilling B, Cartwright ANR, Luoma AM, Malu S, Hwu P, Bernatchez C, Forget MA, Barbie DA, Shalek AK, Tirosh I, Sorger PK, Wucherpfennig K, Van Allen EM, Schadendorf D, Johnson BE, Rotem A, Rozenblatt-Rosen O, Garraway LA, Yoon CH, Izar B, Regev A. A Cancer Cell Program Promotes T Cell Exclusion and Resistance to Checkpoint Blockade. Cell. 2018 Nov 1;175(4):984-997.e24. doi: 10.1016/j.cell.2018.09.006. PMID: 30388455; PMCID: PMC6410377.",style="font-size:20px;"),
             #     style="font-size:20px;
             #     margin-left: 300px;
             #     margin-right: 275px;"),
             # div(id="container",
             #     p("[",a(href="https://www.ncbi.nlm.nih.gov/pubmed/30388456","10"), "]", 
             #       "Sade-Feldman M, Yizhak K, Bjorgaard SL, Ray JP, de Boer CG, Jenkins RW, Lieb DJ, Chen JH, Frederick DT, Barzily-Rokni M, Freeman SS, Reuben A, Hoover PJ, Villani AC, Ivanova E, Portell A, Lizotte PH, Aref AR, Eliane JP, Hammond MR, Vitzthum H, Blackmon SM, Li B, Gopalakrishnan V, Reddy SM, Cooper ZA, Paweletz CP, Barbie DA, Stemmer-Rachamimov A, Flaherty KT, Wargo JA, Boland GM, Sullivan RJ, Getz G, Hacohen N. Defining T Cell States Associated with Response to Checkpoint Immunotherapy in Melanoma. Cell. 2018 Nov 1;175(4):998-1013.e20. doi: 10.1016/j.cell.2018.10.038. Erratum in: Cell. 2019 Jan 10;176(1-2):404. PMID: 30388456; PMCID: PMC6641984.",style="font-size:20px;"),
             #     style="font-size:20px;
             #     margin-left: 300px;
             #     margin-right: 275px;"),
             # div(id="container",
             #     p("[",a(href="https://www.ncbi.nlm.nih.gov/pubmed/29309059","11"), "]", 
             #       "Krieg C, Nowicka M, Guglietta S, Schindler S, Hartmann FJ, Weber LM, Dummer R, Robinson MD, Levesque MP, Becher B. High-dimensional single-cell analysis predicts response to anti-PD-1 immunotherapy. Nat Med. 2018 Feb;24(2):144-153. doi: 10.1038/nm.4466. Epub 2018 Jan 8. Erratum in: Nat Med. 2018 Nov;24(11):1773-1775. PMID: 29309059.",style="font-size:20px;"),
             #     style="font-size:20px;
             #     margin-left: 300px;
             #     margin-right: 275px;"),
             # div(id="container",
             #     p("[",a(href="https://www.ncbi.nlm.nih.gov/pubmed/30373752","12"), "]", 
             #       "Harding JJ, Nandakumar S, Armenia J, Khalil DN, Albano M, Ly M, Shia J, Hechtman JF, Kundra R, El Dika I, Do RK, Sun Y, Kingham TP, D'Angelica MI, Berger MF, Hyman DM, Jarnagin W, Klimstra DS, Janjigian YY, Solit DB, Schultz N, Abou-Alfa GK. Prospective Genotyping of Hepatocellular Carcinoma: Clinical Implications of Next-Generation Sequencing for Matching Patients to Targeted and Immune Therapies. Clin Cancer Res. 2019 Apr 1;25(7):2116-2126. doi: 10.1158/1078-0432.CCR-18-2293. Epub 2018 Oct 29. PMID: 30373752; PMCID: PMC6689131.",style="font-size:20px;"),
             #     style="font-size:20px;
             #     margin-left: 300px;
             #     margin-right: 275px;"),
             # div(id="container",
             #     p("[",a(href="https://www.ncbi.nlm.nih.gov/pubmed/29337640","13"), "]", 
             #       "Rizvi H, Sanchez-Vega F, La K, Chatila W, Jonsson P, Halpenny D, Plodkowski A, Long N, Sauter JL, Rekhtman N, Hollmann T, Schalper KA, Gainor JF, Shen R, Ni A, Arbour KC, Merghoub T, Wolchok J, Snyder A, Chaft JE, Kris MG, Rudin CM, Socci ND, Berger MF, Taylor BS, Zehir A, Solit DB, Arcila ME, Ladanyi M, Riely GJ, Schultz N, Hellmann MD. Molecular Determinants of Response to Anti-Programmed Cell Death (PD)-1 and Anti-Programmed Death-Ligand 1 (PD-L1) Blockade in Patients With Non-Small-Cell Lung Cancer Profiled With Targeted Next-Generation Sequencing. J Clin Oncol. 2018 Mar 1;36(7):633-641. doi: 10.1200/JCO.2017.75.3384. Epub 2018 Jan 16. Erratum in: J Clin Oncol. 2018 Jun 1;36(16):1645. PMID: 29337640; PMCID: PMC6075848.",style="font-size:20px;"),
             #     style="font-size:20px;
             #     margin-left: 300px;
             #     margin-right: 275px;"),
             # div(id="container",
             #     p("[",a(href="https://www.ncbi.nlm.nih.gov/pubmed/25765070","14"), "]", 
             #       "Rizvi NA, Hellmann MD, Snyder A, Kvistborg P, Makarov V, Havel JJ, Lee W, Yuan J, Wong P, Ho TS, Miller ML, Rekhtman N, Moreira AL, Ibrahim F, Bruggeman C, Gasmi B, Zappasodi R, Maeda Y, Sander C, Garon EB, Merghoub T, Wolchok JD, Schumacher TN, Chan TA. Cancer immunology. Mutational landscape determines sensitivity to PD-1 blockade in non-small cell lung cancer. Science. 2015 Apr 3;348(6230):124-8. doi: 10.1126/science.aaa1348. Epub 2015 Mar 12. PMID: 25765070; PMCID: PMC4993154.",style="font-size:20px;"),
             #     style="font-size:20px;
             #     margin-left: 300px;
             #     margin-right: 275px;"),
             # div(id="container",
             #     p("[",a(href="https://www.ncbi.nlm.nih.gov/pubmed/22956585","15"), "]", 
             #       "Kwek SS, Dao V, Roy R, Hou Y, Alajajian D, Simko JP, Small EJ, Fong L. Diversity of antigen-specific responses induced in vivo with CTLA-4 blockade in prostate cancer patients. J Immunol. 2012 Oct 1;189(7):3759-66. doi: 10.4049/jimmunol.1201529. Epub 2012 Sep 5. PMID: 22956585; PMCID: PMC3448828.",style="font-size:20px;"),
             #     style="font-size:20px;
             #     margin-left: 300px;
             #     margin-right: 275px;"),
             # div(id="container",
             #     p("[",a(href="https://www.ncbi.nlm.nih.gov/pubmed/29301960","16"), "]", 
             #       "Miao D, Margolis CA, Gao W, Voss MH, Li W, Martini DJ, Norton C, Bosse D, Wankowicz SM, Cullen D, Horak C, Wind-Rotolo M, Tracy A, Giannakis M, Hodi FS, Drake CG, Ball MW, Allaf ME, Snyder A, Hellmann MD, Ho T, Motzer RJ, Signoretti S, Kaelin WG Jr, Choueiri TK, Van Allen EM. Genomic correlates of response to immune checkpoint therapies in clear cell renal cell carcinoma. Science. 2018 Feb 16;359(6377):801-806. doi: 10.1126/science.aan5951. Epub 2018 Jan 4. PMID: 29301960; PMCID: PMC6035749.",style="font-size:20px;"),
             #     style="font-size:20px;
             #     margin-left: 300px;
             #     margin-right: 275px;"),
             # div(id="container",
             #     p("[",a(href="https://www.ncbi.nlm.nih.gov/pubmed/30013197","17"), "]", 
             #       "Kim ST, Cristescu R, Bass AJ, Kim KM, Odegaard JI, Kim K, Liu XQ, Sher X, Jung H, Lee M, Lee S, Park SH, Park JO, Park YS, Lim HY, Lee H, Choi M, Talasaz A, Kang PS, Cheng J, Loboda A, Lee J, Kang WK. Comprehensive molecular characterization of clinical responses to PD-1 inhibition in metastatic gastric cancer. Nat Med. 2018 Sep;24(9):1449-1458. doi: 10.1038/s41591-018-0101-z. Epub 2018 Jul 16. PMID: 30013197.",style="font-size:20px;"),
             #     style="font-size:20px;
             #     margin-left: 300px;
             #     margin-right: 275px;"),
             # div(id="container",
             #     p("[",a(href="https://www.ncbi.nlm.nih.gov/pubmed/30753825","18"), "]", 
             #       "Gide TN, Quek C, Menzies AM, Tasker AT, Shang P, Holst J, Madore J, Lim SY, Velickovic R, Wongchenko M, Yan Y, Lo S, Carlino MS, Guminski A, Saw RPM, Pang A, McGuire HM, Palendira U, Thompson JF, Rizos H, Silva IPD, Batten M, Scolyer RA, Long GV, Wilmott JS. Distinct Immune Cell Populations Define Response to Anti-PD-1 Monotherapy and Anti-PD-1/Anti-CTLA-4 Combined Therapy. Cancer Cell. 2019 Feb 11;35(2):238-255.e6. doi: 10.1016/j.ccell.2019.01.003. PMID: 30753825.",style="font-size:20px;"),
             #     style="font-size:20px;
             #     margin-left: 300px;
             #     margin-right: 275px;"),
             # 
             
             
             
             h4("Citation",style="margin-left:275px;color: #663399;font-size:25px"),
             p("Immuno-genomic atlas for immune checkpoint blockade-based cancer immunotherapy. ",
               style="font-size:20px;
               margin-left: 300px;
               margin-right: 275px;"),
             
             
             
             div(class = "topbar", style="height: 6px;
                                  background: transparent linear-gradient(to right, #7CDBD5 0%, #DCB239 100%) repeat scroll 0% 0%;
                                  margin-left: -15px;
                                  margin-right: -15px;
                                  margin-bottom:20px"),
             
             p("@Vanderbilt University Medical Center",
               style="color:darkgrey;
                margin-down:-1px;
                text-align:center"),
             p("Center for Quantitative Sciences",
               style="color:darkgrey;
                margin-down:-1px;
                text-align:center"),
             
             p("497A Preston Research Building | Nashville, TN 37232 | 615-322-6618",
               style="color:darkgrey;
                margin-down:1px;
                text-align:center")
)
    
    
    

  )))
))
