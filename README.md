# docker-bagit
docker images for running bagit 4.12.1

# building
docker build -t bagit -f bagit.Dockerfile .
docker build -t bagit:baginplace -f baginplace.Dockerfile .
docker build -t bagit:verify -f verify.Dockerfile .


# running
docker run --rm -v /tmp/myfiles:/bag  bagit:baginplace
docker run --rm -v /tmp/myfiles:/bag  bagit:verify
docker run --rm -v /tmp/myfiles:/bag -it  bagit
