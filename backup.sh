
TIMESTAMP=$(date +"%Y%m%d%H%M%S")
BACKUP_FILE="backup_$TIMESTAMP.sql"

# Crear el backup desde el contenedor
docker exec mysqlDB2 mysqldump -u root -p1234 mysqlD2 > $BACKUP_FILE

# Mostrar mensaje de éxito
echo "Backup guardado en: $BACKUP_FILE"
