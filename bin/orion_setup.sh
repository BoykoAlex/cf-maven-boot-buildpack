echo "Setting up Orion from separate script"
appDir=$1
cacheDir=$2
orionDir=$appDir/orion
##############################################################################################
# Orion setup and launch
##############################################################################################
echo ===== Setting up Orion =====
if [! -d ${orionDir}]; then
    mkdir ${orionDir}
fi
cd ${orionDir}
npm install orion
cd ${orionDir}/node_modules/orion
npm start orion