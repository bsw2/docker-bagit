# docker-bagit
docker images for running bagit 4.12.1

# building
docker build -t bsw2/bagit -f bagit.Dockerfile .
docker build -t bsw2/bagit:baginplace -f baginplace.Dockerfile .
docker build -t bsw2/bagit:verify -f verify.Dockerfile .


# running
docker run --rm -v /tmp/myfiles:/bag  bsw2/bagit:baginplace
docker run --rm -v /tmp/myfiles:/bag  bsw2/bagit:verify
docker run --rm -v /tmp/myfiles:/bag -it  bsw2/bagit
docker run --rm -v /tmp/20160730-nightrun:/bag:ro    bsw2/bagit verifyvalid .