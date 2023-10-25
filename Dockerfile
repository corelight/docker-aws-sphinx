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
      alabaster==0.7.12 \
      Babel==2.12.1 \
      colorama==0.3.3 \
      daemonize==2.3.1 \
      docutils==0.19 \
      imagesize==1.4.1 \
      Jinja2==3.1.2 \
      jmespath==0.7.1 \
      MarkupSafe==2.1.2 \
      passlib==1.6.5 \
      pyasn1==0.1.8 \
      Pygments==2.15.0 \
      pyslack==0.3.0 \
      python-dateutil==2.4.2 \
      python-gitlab==2.2.0 \
      pytz==2019.3 \
      pyyaml==3.12 \
      requests==2.28.2 \
      rsa==3.4.2 \
      six==1.13.0 \
      snowballstemmer==2.0.0 \
      sphinxemoji==0.1.4 \
      sphinx-better-theme==0.1.5 \
      sphinx-copybutton==0.5.0 \
      sphinx_design==0.5.0 \
      sphinx-design-elements==0.2.1 \
      sphinx-material==0.0.35 \
      sphinx-rtd-theme==0.1.9 \
      Sphinx==7.1.2 && \
    apk --purge -v del py3-pip && \
    rm /var/cache/apk/*
