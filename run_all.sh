#!/bin/bash
echo " Creating SaltDrio Database..."
mysql -u root < saltdrio_schema.sql
echo "Schema created!"

echo "Inserting data..."
mysql -u root < saltdrio_data.sql
echo "Data inserted!"

echo "Running analysis..."
mysql -u root < saltdrio_queries.sql
echo "Done!"
