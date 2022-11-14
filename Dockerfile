FROM mcr.microsoft.com/windows/servercore:ltsc2022

RUN powershell "Set-Service -Name wuauserv -StartupType Manual; \
    Install-WindowsFeature -Name NET-Framework-Features -Verbose"
