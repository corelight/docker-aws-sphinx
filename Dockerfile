FROM corelight/alpine-aws
LABEL maintainer="Corelight AWS Team <aws@corelight.com>"
LABEL description="Builder/publisher for documentation with aws-cli and Sphinx"

RUN apk update && \
    apk add -v \
      build-base \
      chromium \
      freetype \
      harfbuzz \
      libstdc++ \
      libxml2-dev \
      libxslt-dev \
      make \
      nss \
      p7zip \
      python3 \
      python3-dev \
      py3-pip \
      ttf-freefont && \    
    pip3 install -U \
      alabaster==0.7.8 \
      Babel==2.3.4 \
      colorama==0.3.3 \
      daemonize==2.3.1 \
      docutils==0.12 \
      imagesize==0.7.1 \
      Jinja2==2.8 \
      jmespath==0.7.1 \
      lxml==4.6.2 \
      MarkupSafe==0.23 \
      passlib==1.6.5 \
      pyasn1==0.1.8 \
      Pygments==2.1.3 \
      pyslack==0.3.0 \
      python-dateutil==2.4.2 \
      python-gitlab==2.2.0 \
      pytz==2016.6.1 \
      pyyaml==3.12 \
      requests==2.10.0 \
      rsa==3.4.2 \
      six==1.10.0 \
      snowballstemmer==1.2.1 \
      sphinxemoji==0.1.4 \
      sphinx-better-theme==0.1.5 \
      sphinx-copybutton==0.2.8 \
      sphinx-material==0.0.32 \
      sphinx-panels==0.5.2 \
      sphinx-rtd-theme==0.1.9 \
      Sphinx==3.3.0 && \
    apk --purge -v del py3-pip && \
    rm /var/cache/apk/*
