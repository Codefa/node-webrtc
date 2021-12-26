cd $(dirname $0)
./clean.sh
env /usr/bin/arch -x86_64 /bin/zsh --login -c "npm run build"
./clean.sh
npm run build
