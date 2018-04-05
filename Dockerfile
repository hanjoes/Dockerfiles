FROM ubuntu:16.04

# Install dependencies
RUN apt-get update
RUN apt-get install -y clang libicu-dev curl libpython2.7 libxml2 libcurl3 git default-jdk maven

# Download swift
RUN mkdir /usr/local/swift
RUN curl -o /tmp/swift.tar.gz -sf https://swift.org/builds/swift-3.1.1-release/ubuntu1604/swift-3.1.1-RELEASE/swift-3.1.1-RELEASE-ubuntu16.04.tar.gz
RUN tar xzf /tmp/swift.tar.gz -C /usr/local/swift/ 

# Set PATH environment variable
ENV PATH $PATH:/usr/local/swift/swift-3.1.1-RELEASE-ubuntu16.04/usr/bin/
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64/

CMD /bin/bash
