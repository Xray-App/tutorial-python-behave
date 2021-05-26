export PYTHONPATH=`pwd`
#behave --format=cucumber_json:PrettyCucumberJSONFormatter -o cucumber.json  --format=json -o behave.json features/demo.feature
behave --format=cucumber_json126:PrettyCucumberJSONFormatter -o results/cucumber.json  --format=json -o results/behave.json features
