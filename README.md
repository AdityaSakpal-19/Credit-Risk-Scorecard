# Retail Credit Risk Portal & Analytical Decision Engine

---

## 📌 Project Overview

This system leverages **Snowflake (Snowpark)** and **Power BI** to evaluate applicant creditworthiness through multi-dimensional scoring logic, balancing traditional credit bureau data with financial affordability metrics and stability indicators.

### Core Objectives

- **Automated Underwriting**: Rule-based decisioning engine categorizing applications into `APPROVE`, `REJECT - FRAUD`, `REJECT - CREDIT`, or `REFER - MANUAL`
- **Multi-Pillar Risk Assessment**: Combines bureau scores, debt-to-income ratios (FOIR), and employment stability
- **Portfolio Intelligence**: Macro-level analytics to identify risk clusters across income segments and employment types
- **Fraud Prevention**: KYC verification layer with PAN-Aadhaar validation and geographic anomaly detection

---

## 🛠 Tech Stack

| Layer | Technology |
|-------|-----------|
| **Data Warehouse** | Snowflake |
| **Processing Engine** | Snowpark for Python |
| **Visualization** | Power BI |
| **Analytics** | Python (Pandas, NumPy), SQL |

---

## 🏗 Risk Scoring Methodology

The engine calculates a **Weighted Risk Score (0–100%)** using three primary pillars:

### 1. **Bureau Pillar (50% Weight)**
- Normalized CIBIL scores (300–900 range)
- Higher scores indicate lower credit risk

### 2. **Affordability Pillar (30% Weight)**
- **FOIR (Fixed Obligation to Income Ratio)**: Monthly debt obligations vs. net income
- Thresholds calibrated by income brackets for segment-specific affordability

### 3. **Stability Pillar (20% Weight)**
- Employment type (Salaried vs. Self-Employed)
- Job tenure and income consistency metrics

### Hard Gates: Fraud & KYC Layer
**Mandatory verification overrides** that bypass credit scoring:
- PAN-Aadhaar data mismatches
- Incomplete KYC documentation
- Geographic IP anomalies
- Application velocity flags

> **Note**: `REJECT - FRAUD` classifications primarily indicate **KYC incompleteness** (missing PAN-Aadhaar linkage, pending documents) rather than confirmed fraudulent activity.

---

## 📊 Portal Architecture

### 1️⃣ **Operational View** - Individual Application Assessment
Real-time credit evaluation interface for underwriting teams.

**Features:**
- Instant application lookup by ID
- Risk probability gauges (0-100%)
- Fraud detection alerts
- CIBIL score, FOIR, and employment risk indicators
- Automated decision recommendations
  
---

### 2️⃣ **Analytical View** - Portfolio Strategy Dashboard
Executive-level analytics for risk managers and leadership.

**Key Insights:**
- **Decision Distribution**: Breakdown of approval, rejection, and manual referral rates
- **Affordability Matrix**: Income bucket analysis vs. FOIR scores
- **Employment Risk Patterns**: Salaried vs. Self-Employed rejection trends
- **Portfolio KPIs**: 
  - 18% Approve Rate
  - 693.56 Average CIBIL Score
  - 25% Fraud Catch Rate

---

### Implementation Steps

1. **Data Ingestion**: Application data loaded into Snowflake staging tables
2. **Feature Engineering**: Snowpark Python scripts compute risk metrics, FOIR, velocity checks
3. **Risk Calculation**: Multi-pillar weighted scoring algorithm applied
4. **Decision Logic**: Rule-based engine assigns final status (Approve/Reject/Manual)
5. **Visualization**: Power BI connects to Snowflake for real-time reporting

---

## 📈 Key Metrics & Results

| Metric | Value | Insight |
|--------|-------|---------|
| **Approval Rate** | 18% | Selective, quality-focused decisioning |
| **Avg CIBIL Score** | 693.56 | Moderate credit quality applicant pool |
| **Fraud Detection Rate** | 25% | Primarily KYC-related flags |
| **Manual Review Rate** | 53% | Balanced human-AI decisioning |

---

## 🔍 Business Impact

- **Reduced Manual Effort**: Automated 47% of underwriting decisions
- **Risk Mitigation**: Flagged 25% of applications with KYC/fraud issues before disbursement
- **Data-Driven Insights**: Income-FOIR correlation analysis enabled targeted product offerings
- **Scalability**: Cloud-native architecture supports 10,000+ applications/month processing
