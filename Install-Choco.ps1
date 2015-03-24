#Install chocolaty to computer
set-executionpolicy unrestricted
iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))
mkdir c:\code\github
cd c:\code\github
git clone https://github.com/romy63ru/scripts.git
