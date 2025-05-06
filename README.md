# AWS Resource Usage Report Script

> 📅 Date: 6 May 2025  
> 🧾 Version: v1.0  

This shell script automates the process of retrieving AWS resource usage data using the AWS CLI. It's designed to provide a quick overview of commonly used AWS services like **S3**, **EC2**, **Lambda**, and **IAM**.

---

## 📌 Features

- ✅ List all S3 buckets
- ✅ Display EC2 instance IDs, states, and types
- ✅ List all Lambda function names and runtimes
- ✅ List IAM users and their creation dates
- ✅ Clean, human-readable `table` output format

---

## ⚙️ Prerequisites

- AWS CLI installed and configured (`aws configure`)
- Proper IAM permissions to view EC2, S3, Lambda, and IAM users
- Bash shell (Linux/macOS or WSL/MobaXterm on Windows)

---

## 🚀 How to Run

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/yourusername/aws-resource-usage-report.git
   cd aws-resource-usage-report
