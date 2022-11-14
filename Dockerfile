FROM mcr.microsoft.com/windows/servercore:1809

RUN powershell "Set-Service -Name wuauserv -StartupType Manual; \
    Install-WindowsFeature -Name NET-Framework-Features -Verbose"
