#!/bin/sh -e

echo "Configuring UI to use APP Server: $myhero_app_server"
sed -i -e 's#MYHERO_TROPO_SERVER#'"$myhero_tropo_server"'#g' $(pwd)/app/scripts/app.js
sed -i -e 's#MYHERO_SPARK_SERVER#'"$myhero_spark_server"'#g' $(pwd)/app/scripts/app.js
sed -i -e 's#MYHERO_APP_SERVER#'"$myhero_app_server"'#g' $(pwd)/app/scripts/app.js
sed -i -e 's/MYHERO_APP_KEY/'"$myhero_app_key"'/g' $(pwd)/app/scripts/app.js
