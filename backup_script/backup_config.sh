cd
cd ~/VT350
git pull
cp -r ~/printer_data/config/*.* .
rm ./printer-*.cfg
cp ~/printer_data/database/moonraker-sql.db ./database/moonraker-sql.db
git add .
git commit -m "printer config backup"
git push
cd


