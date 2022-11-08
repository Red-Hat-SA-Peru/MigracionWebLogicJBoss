# Migración de Weblogic a JBoss

Automatización para realizar la migración de aplicaciones desde Weblogic hacia JBoss EAP y que dieron como resultado, usando MTA, un bajo costo de migración se recomienda ejecutar los siguientes pasos:

## 1. Limpiar la aplicación

Para realizar la limpieza de la aplicación ejecutar el siguiente comando:

```bash
./clean.sh <<APP_WAR_NAME>>
```

A continuación ejemplos de ejecuciones:

```bash
./clean.sh MySimpleApplication.war
./clean.sh /path/to/war/MySimpleApplication.war
```

Ejecutar solo una vez durante el proceso.

## 2. Instalar las configuraciones de JBoss EAP

```bash
Para realizar la instalación de configuraciones de JBoss EAP de la aplicación ejecutar el siguiente comando:
./install.sh <<APP_WAR_NAME>> <<APP_WAR_PATH>>
```

A continuación ejemplos de ejecuciones:

```bash
./install.sh MySimpleApplication.war MySimpleApplication
./install.sh /path/to/war/MySimpleApplication.war SimpleApplication
```

## Consideraciones

Para el desarrollo de este automatizador se tomó en cuenta los siguiente:

- Se considera un bajo costo siempre y cuando las observaciones mostradas en el MTA sean solo de configuración.
- En caso se requiera modificar las exclusiones o agregar exclusiones de dependencias modificar el archivo jboss_template/jboss-deployment-structure.xml
- En caso las aplicaciones requieran de la creación de Datasources estás deberán ser realizadas previamente.
