FROM java:alpine

WORKDIR /opt
RUN apk update && apk add ca-certificates wget && update-ca-certificates
RUN wget -O /tmp/bagit-4.12.1.zip -SL https://github.com/LibraryOfCongress/bagit-java/releases/download/v4.12.1/bagit-4.12.1.zip  && unzip /tmp/bagit-4.12.1.zip && rm /tmp/bagit-4.12.1.zip
ENV PATH=/opt/bagit-4.12.1/bin:${PATH}
WORKDIR /bag
ENTRYPOINT ["/opt/bagit-4.12.1/bin/bagit"]
CMD ["--help"]


