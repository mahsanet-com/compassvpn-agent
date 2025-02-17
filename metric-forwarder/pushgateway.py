import os
from common import generate_config

def run_jobs():
    generate_config()
    os.system("cat config.yaml")
    print("running grafana-agent", flush=True)
    os.system("grafana-agent --config.file=config.yaml")
