#Install chocolaty to computer
set-executionpolicy unrestricted
iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))
