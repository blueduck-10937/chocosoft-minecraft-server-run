@echo off
:menu
title 서버 구동.chocosoft
cls
echo.
echo __________________________________________________
echo 파일 이름을 변경하지 말아주세요!
echo __________________________________________________
echo 1  : 버킷 실행하기
echo 2  : 나가기
echo 3  : IP 확인
echo 4  : 버킷 제거
echo 5  : 자바 설치
echo ___________________________________________________

set /p menued=메뉴를 선택 하세요 : 

if %menued%==1 goto main
if %menued%==2 goto exits
if %menued%==3 goto ip
if %menued%==4 goto del
if %menued%==5 goto :sje

:del
@echo off
cls
echo -----------------------------------------
echo.
echo           제거 중. . .
echo 권한 요청이 필요할 수 있습니다.
echo 삭제에 실패하는 파일이 있을 수 있습니다.
echo.
echo ------------------------------------------
for %%f in (*) do (
    if not "%%f"=="kit" (
        if not "%%f"=="server - 26.3 - chocosoft.bat" (
            if not "%%f"=="eula.txt" (
                if not "%%f"=="Java" (
                    del "%%f"
                )
            )
        )
    )
goto :menu
pause

:main
title 서버 구동.chocosoft
cls
echo.
echo _____________
echo 1 : Paper
echo 2: Vanilla (bata)
echo 3: 돌아가기
echo _____________

set /p a=번호를 골라주세요! : 

if %a%==1 goto :paperver
if %a%==2 goto :Vanilla
if %a%==3 goto menu

:paperver
title 서버 구동.chocosoft
cls
echo.
echo _____________
echo 지원이 중지된 버전은 "-"표시가 붙고 사용이 불가합니다. Kit에는 여전히 남아 있습니다.
echo _____________
echo 1: Paper -1.20.4
echo 2: Paper -1.21
echo 3: Paper -1.21.1
echo 4: Paper -1.21.3
echo 5: Paper -1.21.4
echo 6: Paper 26.1.2
echo _____________



set /p a=번호를 골라주세요! : 

if %a%==1 goto :NO
if %a%==2 goto :NO
if %a%==3 goto :NO
if %a%==4 goto :NO
if %a%==5 goto :NO
if %a%==6 goto :paper26.1.2

:paper26.1.2
cls
echo.
echo ______________________
echo   사용 버킷 : Paper
echo.
echo      1 : 2GB
echo      2 : 4GB
echo      3 : 8GB
echo     4 : 12GB
echo     5 : 돌아가기
echo ________________________
echo.

set /p b=번호를 선택하세요 : 

if %b%==1 goto paper26.1.2-2gb
if %b%==2 goto paper26.1.2-4gb
if %b%==3 goto paper26.1.2-8gb
if %b%==4 goto paper26.1.2-12gb
if %b%==5 goto main
pause
goto main

:wanin
echo 설정 또는 파일을 찾을수 없습니다.
pause
goto 

:NO
echo 지원하지 않는 버전 또는 설정입니다.
pause
goto :paperver


:Vanilla
cls
echo.
echo ______________________
echo   사용 버킷 : Vanilla
echo.
echo      1 : 2GB
echo      2 : 4GB
echo      3 : 8GB
echo     4 : 12GB
echo     5 : 돌아가기
echo ________________________
echo.

set /p b=번호를 선택하세요 : 

if %b%==1 goto :Vanilla2gb
if %b%==2 goto :Vanilla4gb
if %b%==3 goto :Vanilla8gb
if %b%==4 goto :Vanilla12gb
if %b%==5 goto main
pause
goto main

:Vanilla2gb
cls
echo.
echo ----------------------
echo.
echo     사용 버킷 : Vanilla
echo     사용 메모리 : 2GB
echo   버킷이 자동으로 자바탐지해
echo        실행됩니다
echo.
java -Xms2G -Xmx2G -jar Kit\server.jar nogui
pause
goto main

:Vanilla4gb
cls
echo.
echo ----------------------
echo.
echo     사용 버킷 : Vanilla
echo     사용 메모리 : 4GB
echo   버킷이 자동으로 자바탐지해
echo        실행됩니다
echo.
java -Xms4G -Xmx4G -jar Kit\server.jar nogui
pause
goto main

:Vanilla8gb
cls
echo.
echo ----------------------
echo.
echo     사용 버킷 : Vanilla
echo     사용 메모리 : 8GB
echo   버킷이 자동으로 자바탐지해
echo        실행됩니다
echo.
java -Xms8G -Xmx8G -jar Kit\server.jar nogui
pause
goto main

:Vanilla12gb
cls
echo.
echo ----------------------
echo.
echo     사용 버킷 : Vanilla
echo     사용 메모리 : 12GB
echo   버킷이 자동으로 자바탐지해
echo        실행됩니다
echo.
java -Xms12G -Xmx12G -jar Kit\server.jar nogui
pause
goto main

:paper26.1.2-2gb
cls
echo.
echo ----------------------
echo.
echo     사용 버킷 : Paper
echo     사용 메모리 : 2GB
echo.
java -Xms1G -Xmx2G -jar kit\paper-26.1.2-66.jar nogui
pause
goto main

:paper26.1.2-4gb
cls
echo.
echo ----------------------
echo.
echo     사용 버킷 : Paper
echo     사용 메모리 : 4GB
echo   버킷이 자동으로 자바탐지해
echo        실행됩니다
echo.
java -Xms1G -Xmx4G -jar kit\paper-26.1.2-66.jar nogui
pause
goto main

:paper26.1.2-8gb
cls
echo.
echo ----------------------
echo.
echo     사용 버킷 : Paper
echo     사용 메모리 : 8GB
echo   버킷이 자동으로 자바탐지해
echo        실행됩니다
echo.
java -Xms1G -Xmx8G -jar kit\paper-26.1.2-66.jar nogui
pause
goto main

:paper26.1.2-12gb
cls
echo.
echo ----------------------
echo.
echo     사용 버킷 : Paper
echo     사용 메모리 : 12GB
echo   버킷이 자동으로 자바탐지해
echo        실행됩니다
echo   메모리를 많이 소모하기 때문에
echo  최소 메모리가 2GB 로 설정됩니다
echo.
java -Xms2G -Xmx12G -jar kit\paper-26.1.2-66.jar nogui
pause
goto menu


:sje
cls
echo ----[Chocosoft Java Installer V1.0]-------
echo 1 : Oracle Java Install
echo 2 : 돌아가기

set /p d=번호를 선택하세요 : 

if %d%==1 goto :JDK
if %d%==2 goto :menu

:JDK
cls
echo ----[Chocosoft Java Installer V1.0]-------
echo [Chocosoft Java Installer V1.0] : Java 26을 찾는 중입니다.
if exist "Java\jdk.exe" (
    echo [Chocosoft Java Installer V1.0] : Java 26을 찾았습니다.
    echo -----[Chocosoft Java Installer V1.0]-----
    echo 1 : 설치
    echo 2 : 돌아가기
echo --------------------------------------------   
set /p e=번호를 선택하세요 : 

if %d%==1 goto :javainsVX
if %d%==2 goto :menu

) else (
    echo [Chocosoft Java Installer V1.0] : Java 26이 없습니다! "Java\jdk.exe"가 있어야합니다!
pause
goto :sje
) 

:javainsVX
cls
echo ----[Chocosoft Java Installer V1.0]-------
echo [Chocosoft Java Installer V1.0] : C:\Program Files\Java\jdk-26.0.1를 찾고 있습니다.
if exist "C:\Program Files\Java\jdk-26.0.1" (
    echo [Chocosoft Java Installer V1.0] : C:\Program Files\Java\jdk-26.0.1를 찾았습니다.
pause
goto :menu


) else (
    echo [Chocosoft Java Installer V1.0] : Java 26이 없습니다! 설치하시겠습니까?
    echo -----[Chocosoft Java Installer V1.0]-----
    echo 1 : 설치
    echo 2 : 돌아가기
echo --------------------------------------------   
set /p e=번호를 선택하세요 : 

if %d%==1 goto :insjdk
if %d%==2 goto :menu
) 

:insjdk
"Java\jdk.exe"
pause
goto :sje

:ip
cls
echo.
ipconfig /all
pause
goto menu
s
:exits
cls

pause