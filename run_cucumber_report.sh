export PYTHONPATH=`pwd`
behave --format=cucumber_json126:PrettyCucumberJSONFormatter -o results/cucumber.json  --format=json -o results/behave.json features/demo.feature
