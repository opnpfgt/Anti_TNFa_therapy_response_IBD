# Transcriptome-based prediction of anti-TNFα treatment outcomes in inflammatory bowel diseases
This repository contains code and data from a study identifying potential transcriptomic biomarkers of response to anti-TNFα therapy in inflammatory bowel disease (IBD). The research was conducted at the Bioinformatics Institute (2024-2025).

### Contributors
#### Authors:
* Galina Reshetnikova,
*Bioinformatics Institute, St. Petersburg, Russia*,
galina.reshetnikova@helsinki.fi

* Ekaterina Scheglova,
*Moscow Institute of Physics and Technology, Moscow, Russia, Bioinformatics Institute, St. Petersburg, Russia*,
scheglova.es@phystech.edu

* Aleksei Osipov,
*ITMO University, St. Petersburg, Russia, Bioinformatics Institute, St. Petersburg, Russia*,
osipov.natgordon@gmail.com

* Artur Lee,
*Koltzov Institute of Developmental Biology RAS, Moscow, Russia, Bioinformatics Institute, St. Petersburg, Russia*,
aal1999arth@gmail.com

#### Scientific advisor:
* Mariia Saliutina,
*Charité - University Medicine Berlin, Germany, Bioinformatics Institute, St. Petersburg, Russia*,
mariia.saliutina@charite.de

# Goal
Identify transcriptomic markers associated with treatment response by comparing gene expression profiles in responders and non-responders before anti-TNF-α therapy

# Introduction
Inflammatory bowel diseases (IBD), including ulcerative colitis (UC) and Crohn's disease (CD), are chronic inflammatory disorders that significantly reduce the quality of life of millions of people worldwide. Despite sharing key inflammatory mechanisms, UC and CD differ significantly in their clinical and pathological features. During UC, only the mucosal layers of the colon and rectum are affected. In contrast, during CD, any part of the gastrointestinal tract with transmural inflammation can be affected, leading to complications such as fistulas, strictures, and abscesses. 
One of the key immunotherapeutic strategies for IBD treatment is the use of tumor necrosis factor-α (TNF-α) inhibitors, such as infliximab, a chimeric monoclonal antibody that blocks the activity of TNF-α. Despite the overall efficacy of TNF-α blockers, many patients do not experience a clinical response to this therapy. This study aims to identify transcriptomic markers associated with treatment response by comparing gene expression profiles in responders and non-responders before anti-TNF-α therapy. These findings may support the development of personalized treatment strategies and improve overall therapeutic outcomes.


# Datasets

**UC cohorts:**
- **GSE12251** – UC train; 23 patients (12 non-responders, 11 responders)
- **GSE23597** – UC validation; 32 patients (25 non-responders, 7 responders)

**CD cohorts:**
- **GSE16879** – CD train; 37 patients (17 non-responders, 20 responders)
- **GSE282122** – *Single cell CD validation; 14 patients (8 non-responders, 6 
responders, single-cell RNA-seq)
- **GSE57945** - Bulk RNA-seq analysis of CD/healthy gene signatures. 359 patients (218 - CD, 42 - Not IBD, 99 - UC)



# Workflow
Reseacrh workflow is comprised of the following steps
 |![pipeline](images/pipeline.png)|
|:-----------------------------------:|
| *Research workflow*            |

# Results

## Crohn disease


![DEGS_CD](images/UC/train/plot_deg_uc_train.png)
   


For crohn
|![hub_genes](images/hub_genes.png)|
|:-----------------------------------:|
| *Hub genes identified during the study*          |


# Conclusion

Our analysis revealed key transcriptomic markers predicting the therapeutic response to anti-TNFa therapy in both ulcerative colitis (UC) and Crohn's disease (CD). In UC, five concentrator genes — IL1B, IL6, CXCL8, TLR2, and TLR4-were common to CD and are mainly involved in innate immune responses. In addition, ITGAM and S100A12 have become UC-specific markers reflecting increased neutrophil infiltration. The logistic regression model based on a common set of genes demonstrated high predictive efficacy (AUC = 0.829), with IL6 (AUC = 0.817) and IL1B (AUC = 0.771) being the most informative individual predictors.

In CD, we similarly identified common immune-related concentrator genes (IL1B, IL6, CXCL8, TLR2, TLR4), as well as CD-specific markers associated with tissue remodeling and fibrosis — TGFB1, TIMP1, MMP2, and PECAM1. Analysis of the single-cell RNA-seq dataset revealed a significantly higher proportion of monocytes with low IL1B levels among the respondents (p < 0.05), indicating a potential functional phenotype associated with better treatment outcomes.

Taken together, these data highlight that IL1B, IL6, CXCL8, TLR2, and TLR4 are central markers of nonresponse to infliximab in IBD, and identify both common and disease-specific transcriptomic features that may determine personalized therapy strategies.


# References
1. Rutgeerts, P., Van Assche, G., & Vermeire, S. (2006). Infliximab therapy for inflammatory bowel disease–seven years on, Alimentary pharmacology & therapeutics, 23(4): 451-463.
2. Shahini, A. and Shahini, A. (2023). Role of interleukin-6-mediated inflammation in the pathogenesis of inflammatory bowel disease: focus on the available therapeutic approaches and gut microbiome, J. Cell Commun. Signal, 17: 55-74 173.
3. Chen, W., Xu, Z., Jiang, J., Chen, L., Chen, Y., Yu, T., ... & Shi, R. (2023). CXCL8 as a Potential Biomarker for Crohn’s Disease is Associated with Immune Infiltration and RNA Methylation, Biochemical Genetics, 61(6): 2599-2617.
4. Ngoh, E. N., Weisser, S. B., Lo, Y., Kozicky, L. K., Jen, R., Brugger, H. K., ... & Sly, L. M. (2016). Activity of SHIP, which prevents expression of interleukin 1β, is reduced in patients with Crohn’s disease, Gastroenterology, 150(2): 465-476.
5. Tan, Y., Zou, K. F., Qian, W., Chen, S., & Hou, X. H. (2014). Expression and implication of toll-like receptors TLR2, TLR4, and TLR9 in colonic mucosa of patients with ulcerative colitis, Journal of Huazhong University of Science and Technology [Medical Sciences], 34: 785-790.
6. Gole, B., Pernat, C., Jezernik, G., & Potočnik, U. (2023). The expression IL1B correlates negatively with the clinical response to adalimumab in Crohn's disease patients: An ex vivo approach using peripheral blood mononuclear cells, Life Sciences, 326: 121822.
