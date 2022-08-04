psql -d medicare -U postgres -c "\copy enrollment_reports from /home/website/csv/2022_06.csv delimiter ',' csv header;"
