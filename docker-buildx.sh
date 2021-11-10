# docker buildx create --name mybuild
# docker buildx use mybuild
docker buildx build  --load --build-arg NODE_PRE_GYP_GITHUB_TOKEN=$GITHUB_TOKEN --platform linux/armhf -f Dockerfile --tag node-webrtc .
