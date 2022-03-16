FROM postgres:latest
RUN sed -i -e 's/# es_ES.UTF-8 UTF-8/es_ES.UTF-8 UTF-8/' /etc/locale.gen && \
    locale-gen

RUN ln -snf /usr/share/zoneinfo/Europe/Madrid /etc/localtime && \
    echo "Europe/Madrid" > /etc/timezone

ENV LANGUAGE es_ES:es
ENV LANG es_ES.UTF-8
ENV LC_ALL es_ES.UTF-8
ENV TZ Europe/Madrid
