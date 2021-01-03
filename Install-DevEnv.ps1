#powershell
choco install pswindowsupdate -y;
restart-computer;

choco install poshgit -y;
choco install powershellgac -y;
choco install svn -y;
choco install posh-hg -y;
choco install hg -y;
choco install posh-github -y;

Install-Module posh-git 
Install-Module oh-my-posh
Install-Module -Name PSReadLine -Force -SkipPublisherCheck

Import-Module posh-git
Import-Module oh-my-posh
Set-Theme Paradox

#get all updates
Get-WUInstall

#DevTools
choco install webpi -y;
choco install visualstudiocode -y;
choco install scriptcs -y;
choco install git.install -y;
choco install nodejs.install -y;
choco install conemu -y;
choco install far -y;
choco install fiddler4 -y;
choco install googlechrome -y;
choco install firefox -y;
choco install sysinternals -y;
choco install nuget.commandline -y;
choco install paint.net -y;
choco install wget -y;
choco install curl -y;
choco install winmerge -y;
choco install foxitreader -y;
choco install linqpad -y;
choco install dotpeek -y;
choco install webpi -y;
choco install ilspy -y;
choco install sysinternals -y;
choco install grep -y
choco install codetrack -y
choco install wireshark -y


#WinDbg 
start https://www.microsoft.com/en-us/p/windbg-preview/9pgjgd53tn86?activetab=pivot:overviewtab&WT.mc_id=-blog-scottha

#Nuget package explorer 
start https://www.microsoft.com/en-us/p/nuget-package-explorer/9wzdncrdmdm3?rtc=1&WT.mc_id=-blog-scottha&activetab=pivot:overviewtab

#Wireshark





