@echo off
chcp 65001 >nul
set set "CFG=%USERPROFILE%\Documents\My Games\Terraria\tModLoader\config.json"
if exist "%CFG%" (
    attrib -r "%CFG%"
    powershell -NoProfile -Command "$c = Get-Content -LiteralPath '%CFG%' -Raw; $c = $c -replace '\"MultiplayerNPCSmoothness\":\s*\d+', '\"MultiplayerNPCSmoothness\": 0'; $c = $c -replace '\"MultiplayerNPCSmoothingRange\":\s*\d+', '\"MultiplayerNPCSmoothingRange\": 0'; $c | Set-Content -LiteralPath '%CFG%'"
    attrib +r "%CFG%"
)
exit /b