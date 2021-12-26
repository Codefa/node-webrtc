// this script os windows only. needs to be updated for other platforms.

const os = require('os');
const path = require('path');
const fs = require('fs');
const mkdirp = require('mkdirp');
const findit = require('findit2');
const { once } = require('events');
const tar = require('tar');
const rimraf = require('rimraf');
const fetch = require('node-fetch')

const version = 'v' + require(path.join(__dirname, '../phase-1/package.json')).version;
const platform = os.platform();
const arch = os.arch();

const asset = `libwebrtc-${platform}-${arch}.tar.gz`;


const localAssetPath = path.join(__dirname, `../phase-1/build/stage/${version}/${asset}`);

if (false && fs.existsSync(localAssetPath)) {
    fs.copyFileSync(localAssetPath, asset)
}
else {
    const BASE_URL = 'https://github.com/koush/node-webrtc/releases/download';
    const url = `${BASE_URL}/${version}/${asset}`;

    fetch(url).then(response => {
        response.body.pipe(fs.createWriteStream(asset));

        response.body.on('end', () => {
            tar.x({
                file: asset,
            })
        })
    })

}

