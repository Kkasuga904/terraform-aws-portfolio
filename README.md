# 🌍 Terraform × AWS Infrastructure Portfolio (プロ仕様テンプレ)

📌 Looking for AWS Infrastructure Support?  
👉 [Coconala: Custom Terraform-based AWS Infrastructure Setup](https://coconala.com/services/3709841)

---

## 🚀 このテンプレートでできること

- AWS上に、**本番運用を意識したフル構成**を自動構築
- モジュール分離・依存制御・出力設定まで対応済み
- 最短5分で「Webアクセス可能な動作環境」が完成

---

## 🛠 使用技術・対応構成

| カテゴリ | 内容 |
|----------|------|
| **IaC** | Terraform v1.7（lifecycle, depends_on, import対応） |
| **クラウド** | AWS（VPC / EC2 / ALB / RDS / S3 / IAM / CloudWatch） |
| **OS** | Linux（Ubuntu） |
| **言語** | HCL / Bash / Python（軽微） |
| **資格実績** | AWS SAP / 基本情報 / LPIC-1（開発者） |

---

## 📁 ディレクトリ構成（概要）

├── main.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars.sample
├── modules/
│ ├── ec2/
│ ├── alb/
│ ├── rds/
│ ├── s3/
│ ├── iam/
│ ├── cloudwatch/
│ └── network/
├── architecture.png
├── userdata.sh
└── README.md


---

## 📊 構成図

![Architecture](./architecture.png)

---

## 🧭 使用方法（ローカル環境）

```bash
# 1. 初期化
terraform init

# 2. 内容確認
terraform plan

# 3. 構築
terraform apply

# 4. （任意）構成図の出力
terraform graph > tf_graph.dot
dot -Tpng tf_graph.dot -o tf_graph.png
