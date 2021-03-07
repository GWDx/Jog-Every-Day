git pull
set da=%date:/=-%
echo %da:~0,10% : 1 >> record\%da:~0,7%.txt
git add record
git commit -m "%da:~0,10%"
git push
pause