DOCKER_LATEST_TAG="latest"
DOCKER_TAG="0.0.2"

# could do this but does browser login, probably can do with service principal or something
# az acr login --name threemammals

# we do this so we can use on CI server
docker login $THREEMAMMALS_ACR_URL -u $THREEMAMMALS_ACR_USERNAME -p $THREEMAMMALS_ACR_PASSWORD

docker tag threemammals-com $THREEMAMMALS_ACR_URL/threemammals-com:$DOCKER_LATEST_TAG
docker tag threemammals-com $THREEMAMMALS_ACR_URL/threemammals-com:$DOCKER_TAG

docker push $THREEMAMMALS_ACR_URL/threemammals-com:$DOCKER_TAG
docker push $THREEMAMMALS_ACR_URL/threemammals-com:$DOCKER_LATEST_TAG