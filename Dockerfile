# Container image that runs your code
FROM alpine:3.10.3

RUN sudo curl -o "/usr/local/bin/firebase" -L https://firebase.tools/bin/linux/latest && sudo chmod +rx "/usr/local/bin/firebase"

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
