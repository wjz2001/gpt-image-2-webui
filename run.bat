@echo off
echo ========================================
echo   Starting Next.js Dev Server...
echo   Waiting for port 3000 to be ready...
echo ========================================

start /b powershell -NoProfile -Command "$client = New-Object System.Net.Sockets.TCPClient; while($true){ try { $client.Connect('127.0.0.1', 3000); if($client.Connected){ $client.Close(); Start-Process 'http://127.0.0.1:3000'; break; } } catch { Start-Sleep -Milliseconds 500 } }"

npm run dev