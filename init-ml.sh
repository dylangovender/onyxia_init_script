#!/usr/bin/env bash

echo "Running inits for ML"

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

sudo apt-get update
sudo apt-get install -y htop python3 python3-pip

pip install --upgrade pip setuptools

pip3 install numpy pandas scikit-learn pandas_datareader tensorflow shap powerbiclient empiricaldist xbbg humanize hmmlearn tsmoothie pykalman path dash hvplot openpyxl xlutils xlsxwriter requests pandas numpy plotly scikit-learn graphviz dtreeviz pyspark

python3 - <<EOF
import os
import datetime
import time
import requests
import http.client as httplib
import ssl
from pdb import set_trace as bp
import pandas as pd
import numpy as np
import warnings
import plotly
import sklearn
import sys
import graphviz
import dtreeviz
import pyspark

print("All libraries are installed successfully.")
EOF

if python3 -c "import os, datetime, time, requests, http.client as httplib, ssl, pdb, pandas as pd, numpy as np, warnings, plotly, sklearn, sys, graphviz, dtreeviz, pyspark"; then
    echo "All libraries installed successfully."
else
    echo "Failed to install one or more libraries."
fi
