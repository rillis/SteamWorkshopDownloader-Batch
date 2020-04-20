@ECHO OFF

:setup
echo Steam Workshop Downloader by Rillis.
echo if is it the first time running the steamcmd may update.
echo.
echo. 
set /p appid="Please enter the APP ID: "
cls
echo Steam Workshop Downloader by Rillis.
echo if is it the first time running the steamcmd may update.
echo.
echo. 
echo APP_ID: %appid%
echo.
set /p pid="Now, please enter the Product ID: "
cls
echo Steam Workshop Downloader by Rillis.
echo if is it the first time running the steamcmd may update.
echo.
echo. 
echo APP_ID: %appid%
echo PRODUCT_ID: %pid%
echo.
pause
goto download

:download
cls
echo Steam Workshop Downloader by Rillis.
echo.
echo.
echo Downloading...
echo.
steamcmd\steamcmd.exe +login anonymous +workshop_download_item %appid% %pid% +quit
cls
goto zip

:zip
echo Steam Workshop Downloader by Rillis.
echo.
echo.
echo Zipping...
echo.
7z\7za.exe a -tzip downloaded\item_%appid%_%pid%.zip .\steamcmd\steamapps\workshop\content\%appid%\%pid%\*
cls
goto delete

:delete
echo Steam Workshop Downloader by Rillis.
echo.
echo.
echo Deleting...
echo.
rmdir /s /q steamcmd\steamapps\workshop\content\%appid%\%pid%
cls
goto complete

:complete
echo Steam Workshop Downloader by Rillis.
echo.
echo.
echo File downloaded at "downloaded" folder.
echo.
echo Original project in https://github.com/rillis/SteamWorkshopDownloader
echo.
pause