cd /sdcard/autorclone/

wget https://raw.githubusercontent.com/arlessweschler/gclone_fclone_install/master/script.py && python script.py && rm script.py

cd $HOME

rm -rf rename.sh

echo "Correos renombrados correctamente"
