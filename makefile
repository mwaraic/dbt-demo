.PHONY: start

start:
	python3 -m venv dbt-env	
	source dbt-env/bin/activate && pip install -r requirements.txt
	dbt debug
