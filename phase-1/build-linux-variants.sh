cd $(dirname $0)
./clean.sh
npm run build
./clean.sh
TARGET_ARCH=arm npm run build
./clean.sh
TARGET_ARCH=arm64 npm run build

