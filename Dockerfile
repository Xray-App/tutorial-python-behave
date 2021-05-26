FROM python:3.8 AS build

# Create a default user
RUN groupadd --system automation && \
    useradd --system --create-home --gid automation  automation && \
    chown --recursive automation:automation /home/automation

WORKDIR /source

COPY features/ ./features/
COPY *.py .
COPY *.txt .

RUN chown -R automation.automation /source
USER automation


RUN pip3 install -r requirements.txt
ENV PATH $PATH:/home/automation/.local/bin
ENV PYTHONPATH .

ENTRYPOINT ["behave","--format=cucumber_json126:PrettyCucumberJSONFormatter","-o","results/cucumber.json","--format=json","-o","results/behave.json","features/demo.feature"]

