
Install-WindowsFeature –name NET-Framework-Core –Source E:\Sources\sxs

#domain install
$domainName = "test.com"
$safeModeAdminPassword = ConvertTo-SecureString 'Viol_19$weet' -asPlainText -force
Add-Windowsfeature AD-Domain-Services -IncludeManagementTools
Install-ADDSForest -DomainName $domainName -SafeModeAdministratorPassword $safeModeAdminPassword -Confirm:$false

#server roles
Add-WindowsFeature Application-Server, AS-HTTP-Activation, AS-Named-Pipes, AS-Net-Framework, AS-TCP-Activation, AS-TCP-Port-Sharing, AS-WAS-Support, AS-Web-Support, Net-Framework-Features, Server-Media-Foundation, WAS, WAS-Config-APIs, WAS-NET-Environment, WAS-Process-Model, Web-App-Dev, Web-Asp-Net, Web-Basic-Auth, Web-Common-Http, Web-Default-Doc, Web-Digest-Auth, Web-Dir-Browsing, Web-Dyn-Compression, Web-Filtering, Web-Health, Web-Http-Errors, Web-Http-Logging, Web-Http-Tracing, Web-ISAPI-Ext, Web-ISAPI-Filter, Web-Lgcy-Scripting, Web-Log-Libraries, Web-Metabase, Web-Mgmt-Compat, Web-Mgmt-Console, Web-Mgmt-Tools, Web-Net-Ext, Web-Performance, Web-Request-Monitor, Web-Security, Web-Server, Web-Stat-Compression, Web-Static-Content, Web-WebServer, Web-Windows-Auth, Windows-Identity-Foundation, Xps-Viewer 

#sql server
$sqlProcess = new-object System.Diagnostics.Process
$sqlProcess.StartInfo.Filename = "D:\setup.exe"
$sqlProcess.StartInfo.Arguments = "/QS /ACTION=install /IACCEPTSQLSERVERLICENSETERMS=1/FEATURES=SQL,Tools /INSTANCENAME=MSSQLSERVER /INSTANCEID=MSSQLSERVER/SQLSYSADMINACCOUNTS=contoso\Administrator /SECURITYMODE=SQL /SAPWD=$safeModeAdminPassword /INDICATEPROGRESS /AGTSVCSTARTUPTYPE=Automatic /TCPENABLED=1"
$sqlProcess.Start()
$sqlProcess.WaitForExit()