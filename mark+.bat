set da=%date:/=-%
set write=%da:~0,10% : 1
set file=record\%da:~0,7%.txt

for /f %%i in (%file%) do set lastline=%%i

if "%lastline%" neq "%write%" (
	echo %write% >> %file%
	git add record
	git commit -m "%da:~0,10%"
	git push
)
pause