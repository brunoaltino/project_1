# 🚀 Pipeline de Engenharia de Dados: E-commerce Brasil (Olist)

Este projeto demonstra a construção de um pipeline de dados escalável utilizando a **Arquitetura Medalhão** para processar e analisar dados de e-commerce brasileiro.

---

## 🛠️ Tech Stack

![R](https://img.shields.io/badge/R-276DC3?style=for-the-badge&logo=r&logoColor=white)
![Tidyverse](https://img.shields.io/badge/Tidyverse-white?style=for-the-badge&logo=tidyverse&logoColor=276DC3)
![GitHub Actions](https://img.shields.io/badge/GitHub_Actions-2088FF?style=for-the-badge&logo=github-actions&logoColor=white)
![Docker](https://img.shields.io/badge/docker-%230db7ed.svg?style=for-the-badge&logo=docker&logoColor=white)
![Apache Spark](https://img.shields.io/badge/Apache_Spark-E25A1C?style=for-the-badge&logo=apache-spark&logoColor=white)
![Databricks](https://img.shields.io/badge/Databricks-FF3621?style=for-the-badge&logo=databricks&logoColor=white)
![Google BigQuery](https://img.shields.io/badge/Google_BigQuery-4285F4?style=for-the-badge&logo=google-bigquery&logoColor=white)
![Apache Airflow](https://img.shields.io/badge/Apache_Airflow-017CEE?style=for-the-badge&logo=apache-airflow&logoColor=white)

---

## 🏗️ Arquitetura e Metodologia

O projeto segue a **Medallion Architecture** para garantir a qualidade e linhagem dos dados:

*   **Bronze (Raw):** Dados brutos extraídos do Kaggle/API via Airflow e armazenados no Google Cloud Storage.
*   **Silver (Trusted):** Limpeza, padronização e tipagem de dados (Schema Enforcement) utilizando **Apache Spark (R/sparklyr)**[cite: 1].
*   **Gold (Curated):** Tabelas agregadas e prontas para negócio (métricas de RFM e LTV) modeladas no BigQuery[cite: 1].

---

## 📈 Status do Projeto

- [x] Configuração da Fundação (GCP, Databricks, Docker)[cite: 1].
- [x] Dockerfile e Automação de Build (CI/CD via GitHub Actions)[cite: 1].
- [ ] Ingestão de dados (Camada Bronze)[cite: 1].
- [ ] Processamento Tidyverse/Spark (Camada Silver)[cite: 1].
- [ ] Modelagem de Negócio e Analytics (Camada Gold)[cite: 1].
- [ ] Dashboard de BI (Looker Studio/Power BI)[cite: 1].

---

## 💻 Como Rodar o Ambiente

Este projeto utiliza **Docker** para garantir que o ambiente R/Tidyverse seja reprodutível[cite: 1].

```bash
# Construir a imagem do ambiente
docker build -t pipeline-olist .

# Executar o script de teste
docker run pipeline-olist

### Desenvolvido por Bruno Anderson Possamai
### Graduando em Estatística & Ciência de Dados - UFES
