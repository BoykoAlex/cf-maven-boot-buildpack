echo "Setting up Orion from separate script"
appDir=$1
cacheDir=$2
nodejsInstallDir=${appDir}/nodejs
npm=${nodejsInstallDir}/node-v4.5.0-linux-x64/bin/npm
orionDir=${appDir}/orion
##############################################################################################
# Orion setup and launch
##############################################################################################
echo ===== Setting up Orion =====
if [ ! -d ${orionDir} ]; then
    mkdir ${orionDir}
fi
cd ${orionDir}
${npm} install orion@0.0.37
cd ${orionDir}/node_modules/orion
${npm} start orion