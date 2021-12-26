# this script must be run on an M1.
cd $(dirname $0)
./clean.sh
env /usr/bin/arch -x86_64 /bin/zsh --login -c "npm run build && npm run node-pre-gyp-package"
./clean.sh
npm run build && npm run node-pre-gyp-package
