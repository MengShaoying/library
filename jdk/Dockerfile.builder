FROM {{.repo_base}}/jdk:{{.upstream}}

RUN curl -sSLo maven.tar.gz '{{.maven_download_url}}' && \
    mkdir -p /opt/maven && \
    tar -C /opt/maven --strip-components 1 -xf maven.tar.gz && \
    rm -f maven.tar.gz

ENV PATH "/opt/maven/bin:${PATH}"
