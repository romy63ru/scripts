#powershell
choco install pswindowsupdate -y;
choco install powershell4 -y;
restart-computer;

choco install poshgit -y;
choco install powershellgac -y;
choco install svn -y;
choco install posh-hg -y;
choco install hg -y;
choco install posh-github -y;

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
choco install linqpad4 -y;
choco install dotpeek -y;
choco install webpi -y;
choco install ilspy -y;
choco install sysinternals -y;


#choco install logparser



