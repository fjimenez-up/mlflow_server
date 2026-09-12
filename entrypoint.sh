#!/bin/sh
set -e

pip install --no-cache-dir "mlflow==2.22.5" psycopg2-binary

exec mlflow server \
  --host 0.0.0.0 \
  --port 5000 \
  --backend-store-uri sqlite:///mlflow.db \
  --default-artifact-root mlflow-artifacts:/ \
  --artifacts-destination ./artifacts \
  --serve-artifacts
