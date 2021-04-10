set valid=%date:~-10%
set da=%valid:/=-%
set write=%da:~0,10% : 1
set file=record\%da:~0,7%.txt

echo %write%
pause

for /f %%i in (%file%) do set lastline=%%i

if "%lastline%" neq "%write%" (
	echo %write% >> %file%
	git add %file%
	git commit -m "%da:~0,10%"
)
pause