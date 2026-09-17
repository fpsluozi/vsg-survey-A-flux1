#!/usr/bin/env bash
# VSG Human Survey A (flux1) -> http://localhost:8501
set -e
cd "$(dirname "$0")"
exec streamlit run app.py --server.port "${PORT:-8501}" --server.address localhost \
     --browser.gatherUsageStats false
