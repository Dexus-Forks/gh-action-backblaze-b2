FROM python:3.10-alpine

LABEL "com.github.actions.name"="Backblaze B2 Sync"
LABEL "com.github.actions.description"="Sync a directory to a Backblaze B2 cloud storage bucket"
LABEL "com.github.actions.icon"="refresh-cw"
LABEL "com.github.actions.color"="red"

LABEL version="0.2.0"
LABEL repository="https://github.com/Dexus-Forks/gh-action-backblaze-b2"
LABEL homepage="https://github.josef-froehle.de/"
LABEL maintainer="Josef Fröhle <github@josef-froehle.de>"

# https://github.com/Backblaze/B2_Command_Line_Tool/releases
ENV B2CLI_VERSION="3.2.0"

RUN pip install --quiet --no-cache-dir b2==${B2CLI_VERSION}

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
