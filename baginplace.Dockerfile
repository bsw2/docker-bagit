FROM bagit

WORKDIR /bag
ENTRYPOINT ["/opt/bagit-4.12.1/bin/bagit","baginplace","/bag"]

