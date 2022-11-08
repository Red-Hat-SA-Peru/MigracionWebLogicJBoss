# Starting a new application
mkdir -p WEB_INF
rm -rf WEB_INF/*
cp jboss_template/* WEB-INF/

# Replancing template
sed -i 's/APP_NAME/'"$2"'/g' ./WEB-INF/web.xml

#Changing the jar file
jar -uf $1 WEB-INF/web.xml
jar -uf $1 WEB-INF/jboss-deployment-structure.xml
jar -uf $1 WEB-INF/context.xml