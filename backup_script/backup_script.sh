cd
cd ~/VT350
git pull
rm ~/printer_data/config/printer-*.cfg

cp ~/printer_data/config/*.* .
cp ~/printer_data/config/audio/*.* ./audio
cp -r ~/printer_data/config/backups/*.* ./backups
cp -r ~/printer_data/config/configs/sensors/*.* ./configs/sensors
cp -r ~/printer_data/config/configs/lighting/*.* ./configs/lighting
cp -r ~/printer_data/config/configs/hardware/*.* ./configs/hardware
cp -r ~/printer_data/config/configs/general/*.* ./configs/general
cp -r ~/printer_data/config/configs/fans/*.* ./configs/fans
cp -r ~/printer_data/config/configs/calibration/*.* ./configs/calibration

rm ./printer-*.cfg
rm ./crowsnest.conf.*
rm ./printer_data/config/ShakeTune_results/vibrations/*.*
rm ./printer_data/config/ShakeTune_results/input_shaper/*.*
rm ./printer_data/config/ShakeTune_results/belts/*.*
rm ./printer_data/config/ShakeTune_results/axes_map/*.*

cp ~/printer_data/database/moonraker-sql.db ./database/moonraker-sql.db

rm -rf ShakeTune_results

git add .
git commit -m "printer config backup"
git push

cd


