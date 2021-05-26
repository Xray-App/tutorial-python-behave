# Tutorial with Behave test scenarios integrated with Xray

[![license](https://img.shields.io/badge/License-BSD%203--Clause-green.svg)](https://opensource.org/licenses/BSD-3-Clause)
[![Gitter chat](https://badges.gitter.im/gitterHQ/gitter.png)](https://gitter.im/Xray-App/community)

## Overview

Code that supports the tutorial [Testing using Behave in Python](https://docs.getxray.app/display/XRAYCLOUD/Testing+using+Behave+in+Python) showcasing the integration between [Xray Test Management](https://www.getxray.app/) on Jira and Behave.

The test automation code implements some basic and dummy tests (credits to the Behave team), just to briefly showcase Behave usage.

## Prerequisites

In order to run this tutorial, you need to have Python 3.x (e.g. 3.8).
Dependencies can be installed using:

```bash
pip3 install -r requirements
```

## Running

The straighforward approach to run everything in a single shot is to invoke the auxiliary script [run_all_cloud_standard_workflow.sh](run_all_cloud_standard_workflow.sh).
To be able to run the scenarios, we need to have the corresponding .feature files. The previous script assumes you are using Xray to manage the specification of the scenarios,
so you need to extract them from Jira (more on the possible workflows [here](https://docs.getxray.app/pages/viewpage.action?pageId=31622264).

When you have the .feature files, containing the Feature along with the Scenario properly tagged, you can finally run the tests using the `behave` tool.

```bash
behave --format=cucumber_json126:PrettyCucumberJSONFormatter -o results/cucumber.json  --format=json -o results/behave.json features
```

Tests can also run inside a Docker container; local directory should be mounted so that Behave results are stored locally.

```bash
docker build . -t behave_tests
docker run --rm -v $(pwd)/results:/source/results -t behave_tests
```


## Submitting results to Jira

Results can be submitted to Jira so that they can be shared with the team and their impacts be easily analysed.
This can be achieved using [Xray Test Management](https://www.getxray.app/) as shown in further detail in this [tutorial](https://docs.getxray.app/display/XRAYCLOUD/Testing+using+Behave+in+Python).
This repo contains an auxiliary script [import_results_cloud.sh](import_results_cloud.sh) that does that; it uses a configuration file to have Xray's client_id and client_secret, obtainable from Xray API Keys section.


## Contact

Any questions related with this code, please raise issues in this GitHub project. Feel free to contribute and submit PR's.
For Xray specific questions, please contact [Xray's support team](https://jira.xpand-it.com/servicedesk/customer/portal/2).

## References

- [Behave](https://behave.readthedocs.io/en/stable/)
- [Possible workflows for implementing Cucumber/Behave](https://docs.getxray.app/pages/viewpage.action?pageId=31622264)


## LICENSE

[BSD 3-Clause](LICENSE)
