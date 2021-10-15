goto start
--------------------------------------
ИНСТРУКЦИЯ

1. СОЗДАТЬ VPN ПОДКЛЮЧЕНИЕ НА ВИРТУАЛЬНОЙ МАШИНЕ ИЛИ СВОЕМ КОМПЬЮТЕРЕ
2. ИДЕМ ПО ПУТИ  %AppData%\Microsoft\Network\Connections\Pbk
3. ОТКРЫВАЕМ С ПОМОЩЬЮ ТЕКСТОВОГО РЕДАКТОРА ФАЙЛ RASPHONE.PBK
4. КОПИРУЕМ СОДЕРЖИМОЕ ФАЙЛА
5.ВСТАВЛЯЕМ В СКРИПТ ВМЕСТО [SCRIPT] СОДЕРЖИМОЕ, СОБЛЮДАЯ ОТСТУПЫ

ТЕПЕРЬ, МОЖНО СПОКОЙНО ДОБАВИТЬ СКРИПТ В AD ИЛИ ВЫСЫЛАТЬ ИНДИВИДУАЛЬНО ДЛЯ УДАЛЕННОЙ РАБОТЫ НА ВИРТУАЛЬНОЙ МАШИНЕ

Author: https://github.com/sogohimo/scripts/
--------------------------------------
:start

@echo off
Set txtfile=rasphone.pbk

cd %AppData%\Microsoft
IF EXIST "Network" (
  cd Network\Connections\Pbk
  (
  [SCRIPT]
  )>"%txtfile%"

) ELSE (
  md Network
  cd Network
  md Connections
  cd Connections
  md Pbk
  cd Pbk
  (
  [SCRIPT]  
  )>"%txtfile%"
)
