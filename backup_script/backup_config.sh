cd
cd ~/VT350
git pull
cp -r ~/printer_data/config/*.* .
rm ./printer-*.cfg
rm ./crowsnest.conf.*
rm ./printer_data/config/ShakeTune_results/vibrations/*.*
rm ./printer_data/config/ShakeTune_results/input_shaper/*.*
rm ./printer_data/config/ShakeTune_results/belts/*.*
rm ./printer_data/config/ShakeTune_results/axes_map/*.*
cp ~/printer_data/database/moonraker-sql.db ./database/moonraker-sql.db
git add .
git commit -m "printer config backup"
git push
cd


