FROM jenkins/jenkins:lts-jdk17
USER root
RUN curl -o- "https://dl-cli.pstmn.io/install/linux64.sh" | sh
RUN curl -fsSL https://deb.nodesource.com/setup_18.x | sh
RUN apt-get install -y nodejs
RUN npm install -g newman newman-reporter-htmlextra
# Drop back to the regular Jenkins user
USER jenkins