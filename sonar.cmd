@ECHO OFF 
:: This batch file runs sonarqube
TITLE SonarQube
ECHO Please wait... Runing sonarqube Commands.
ECHO ==========================
ECHO Sonar START
ECHO ============================
dotnet sonarscanner begin /k:"TaskManagementSystem" /d:sonar.host.url="http://localhost:9000" /d:sonar.login="sqp_960c579aae808336c2bddc087e5f946e9cdc0db0" /d:sonar.cs.opencover.reportsPaths=C:/repositorio/TaskManagementSystem/tests/UnitTests/coverage.opencover.xml
ECHO ============================
ECHO BUILD
ECHO ============================
dotnet build
ECHO ============================
ECHO TEST
ECHO ============================
dotnet test C:/repositorio/TaskManagementSystem/tests/UnitTests/UnitTests.csproj /p:CollectCoverage=true /p:CoverletOutputFormat=opencover 
ECHO ============================
ECHO END
ECHO ============================
dotnet sonarscanner end /d:sonar.login="sqp_960c579aae808336c2bddc087e5f946e9cdc0db0"
PAUSE