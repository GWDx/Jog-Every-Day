cd..
:: git pull
set da=%date:/=-%
echo %da:~0,10% : 1 >> everyDayRun\record\%da:~0,7%.txt
:: git push
:: pause