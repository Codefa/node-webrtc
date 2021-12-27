cd $(dirname $0)
ARCH=$(arch)
if [ "$ARCH" == "arm64" ]
then
    ./clean.sh
    env /usr/bin/arch -x86_64 /bin/zsh --login -c "npm run build"
    ./clean.sh
    npm run build
else
    ./clean.sh
    TARGET_ARCH=arm64 npm run build
    ./clean.sh
    npm run build
fi
