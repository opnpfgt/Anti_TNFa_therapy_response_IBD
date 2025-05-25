# Установка renv, если он не установлен
#if (!requireNamespace("renv", quietly = TRUE))
#  install.packages("renv")

# Инициализация среды renv
#renv::init()

# Функция для проверки и установки Rtools
install_rtools_if_missing <- function() {
  if (!requireNamespace("pkgbuild", quietly = TRUE)) {
    install.packages("pkgbuild")
  }
  if (!pkgbuild::has_rtools()) {
    cat("Rtools не установлен. Скачиваю и устанавливаю...\n")
    utils::browseURL("https://cran.r-project.org/bin/windows/Rtools/")
    cat("Пожалуйста, установите Rtools вручную, следуя инструкции по ссылке.\n")
    cat("После установки перезапустите R и выполните скрипт снова.\n")
    stop("Rtools не найден.")
  } else {
    cat("Rtools установлен и доступен.\n")
  }
}

# Проверяем и устанавливаем Rtools
install_rtools_if_missing()

# Установка CRAN-пакетов
install.packages(c(
  "tidyverse", "tibble", "ggplot2", "dplyr", "umap", 
  "vegan", "pheatmap", "openxlsx", "ggrepel", "gridExtra", 
  "readr", "VennDiagram", "knitr", "rstudioapi"
))

# Установка Bioconductor и его пакетов
 if (!requireNamespace("BiocManager", quietly = TRUE))
   install.packages("BiocManager")

BiocManager::install(c(
  "GEOquery", "affy", "limma", "clusterProfiler", "org.Hs.eg.db", 
  "AnnotationDbi", "gage", "enrichplot", "DOSE", "impute", "WGCNA"
))

BiocManager::install("DESeq2")

# Установка devtools и CorLevelPlot с GitHub
#  if (!requireNamespace("devtools", quietly = TRUE))
#    install.packages("devtools")
# devtools::install_github("kevinblighe/CorLevelPlot")

# Фиксируем установленные пакеты в среде renv
#renv::snapshot()

cat("Все пакеты успешно установлены и зафиксированы в среде!\n")
