FROM library/ubuntu
RUN apt-get update && \
    apt-get install software-properties-common && \
    apt-get-repository "deb https://cli-assets.heroku.com/branches/stable/apt ./" && \
    apt-get install curl && \
    curl -L https://cli-assets.heroku.com/apt/release.key | apt-key add - && \
    apt-get update && \
    apt-get install heroku && \
    heroku plugins:install salesforce-lightning-cli
