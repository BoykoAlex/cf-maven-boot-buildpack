echo "Intalling Orion from separate script"
appDir=$1
cacheDir=$2
orionDir=$appDir/orion
##############################################################################################
# Orion setup and launch
##############################################################################################
echo ===== setting up Orion =====
cd $appDir
if [-d ${orionDir}]; then
    echo "Found Orion"
else
    mkdir ${orionDir}
    cd ${orionDir}
    npm install orion
fi

cd ${orionDir}/node_modules/orion
npm start orion