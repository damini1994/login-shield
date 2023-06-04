# Specify a base image
FROM node:18.2.0

RUN mkdir /app
COPY app /app
WORKDIR /app
RUN apt-get update && \
    apt-get install -y \
        python3 \
        python3-pip \
        python3-setuptools \
        groff \
        less \
    && pip3 install --upgrade pip \
    && apt-get clean
RUN pip3 --no-cache-dir install --upgrade awscli
RUN npm i aws-amplify
RUN npm i react-google-recaptcha
RUN npm install
RUN npm run build
EXPOSE 3000
CMD node server
