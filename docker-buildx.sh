# docker buildx create --name mybuild
# docker buildx use mybuild
docker buildx build  --load --build-arg NODE_PRE_GYP_GITHUB_TOKEN=$GITHUB_TOKEN --platform linux/amd64 -f Dockerfile.base --tag node-webrtc .
