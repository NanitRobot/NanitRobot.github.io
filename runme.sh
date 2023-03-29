# Оновлюємо субмодулі
git submodule update --init --recursive
# Копіюю пін варіант
cp MegaCore/avr/variants/100-pin-arduino-mega/pins_arduino.h Nanit/variants/Nanit/pins_arduino.h 
# копіюю ядро    
cp -ruf MegaCore/avr/cores/MCUdude_corefiles/* Nanit/cores/MegaCore/  
# все пакуємо до архіву
zip -qq -r Nanit_Boards.zip Nanit
git add Nanit_Boards.zip
