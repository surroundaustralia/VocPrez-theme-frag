eval $(cat .env | tr -d '\r')

echo "Config"
echo "creating VocPrez config with $VP_THEME_HOME/config.py"
echo "Alter config.py to include variables"
sed 's#$SPARQL_ENDPOINT#'"$SPARQL_ENDPOINT"'#' $VP_THEME_HOME/config.py > $VP_THEME_HOME/config_updated.py
sed -i 's#$SPARQL_USERNAME#'"$SPARQL_USERNAME"'#' $VP_THEME_HOME/config_updated.py
sed -i 's#$SPARQL_PASSWORD#'"$SPARQL_PASSWORD"'#' $VP_THEME_HOME/config_updated.py
mv $VP_THEME_HOME/config_updated.py $VP_HOME/vocprez/_config/__init__.py

echo "customisation done"