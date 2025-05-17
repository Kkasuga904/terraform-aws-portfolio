> 📌 Looking for AWS Infrastructure Support?  
> 👉 [Coconala: Custom Terraform-based AWS Infrastructure Setup](https://coconala.com/services/3709841)

# 🌍 Terraform × AWS Infrastructure Portfolio

こんにちは、クラウドエンジニア志望の **室木 海里（Kairi Muroki）** です。  
このリポジトリは、Terraform を用いた AWS インフラ構成のポートフォリオです。

---

## 🚀 構築目的

- AWS × Terraform の実践力を証明
- モジュール分離・依存管理・state制御を含む構成力のアピール
- GitHubを通じて構成と考え方を公開・発信

---

## 🛠 使用技術・ツール

| カテゴリ | 内容 |
|----------|------|
| **IaC** | Terraform v1.7（`lifecycle`, `depends_on`, `import` 等） |
| **クラウド** | AWS（VPC / EC2 / S3 / RDS / CloudWatch） |
| **OS** | Linux（Ubuntu） |
| **言語** | HCL / Bash / Python（基本） |
| **資格** | AWS SAP / 基本情報 / LPIC-1 |

---

## 📁 ディレクトリ構成（例）

├── main.tf
├── variables.tf
├── outputs.tf
├── modules/
│ ├── ec2/
│ ├── s3/
│ └── iam/
├── userdata.sh
├── tf_graph.dot / .png
├── terraform.tfvars
└── README.md
# 📊 Architecture Diagram
Below is a visual representation of the infrastructure structure managed via Terraform:
![Architecture](./architecture.png)
## 🛒 ココナラ出品ページ（副業）

Terraform構成をベースにしたAWS構築代行も対応しています。  
レビュー獲得のため、初回は無料相談可能です。

🔗 [ココナラ出品ページはこちら](https://coconala.com/services/3709841)
## 🧭 構築手順（ローカル）

```bash
# 1. 初期化（プロバイダなどダウンロード）
terraform init

# 2. 構成内容の確認
terraform plan

# 3. 本番構築（AWSへ反映）
terraform apply

# 4. 構成図出力（任意）
terraform graph > tf_graph.dot
dot -Tpng tf_graph.dot -o tf_graph.png

## 💡 学び・工夫・今後の展望

- `.terraform` や `.exe` ファイルがGitHubに上がってしまい、LFSの制限でアップロードに苦戦。`.gitignore`設定と再構築で対応。
- `depends_on` を用いた依存関係管理、リソース作成順の明示に挑戦。
- `lifecycle` を用いて再作成を抑制するなど、本番想定のIaC設計を意識。
- 今後はALB・AutoScaling・CloudFrontの導入も視野に構成を拡張予定。

## 📦 モジュール構成と役割

| モジュール | 内容 |
|------------|------|
| `ec2` | Webサーバ（Ubuntu）を起動。`user_data`で自動初期化。 |
| `rds` | RDS (MySQL) のパブリック接続を無効化し、セキュアに構成。 |
| `s3` | 静的Webホスティング用。lifecycleルールで自動削除。 |
| `iam` | 各サービスのIAMロールを個別に定義し、最小権限を意識。 |


## ✍️ 解説記事（Qiita）

この構成の詳細な背景や工夫点については、以下の記事にまとめています。

📖 [Terraform × AWS インフラ構成のポートフォリオ構築記録 - Qiita](https://qiita.com/over9131120/items/e405e0d4e39baadc42ce)

---

## 🌍 English Summary (for global visitors)

This project provisions AWS infrastructure using Terraform, including EC2, S3, RDS, and CloudWatch.
This is a portfolio of AWS infrastructure built entirely with Terraform (v1.7+).  
It showcases:

- Modular architecture (EC2, RDS, S3, IAM, CloudWatch)
- State and lifecycle management
- Security-aware IAM policies
- Monitoring integration via CloudWatch
- GitHub-hosted and reproducible setup

💡 Feel free to reach out for freelance opportunities or infrastructure support.


## 📫 Contact

For job offers, freelance inquiries, or questions:  
Please reach out via [Coconala](https://coconala.com/services/3709841) or LinkedIn.



