### Setup Variables ###
$CurrentDir=Split-Path -Path $MyInvocation.MyCommand.Path -Parent
$fileName = $CurrentDir+"\removeSF.txt"
$ping = new-object System.Net.NetworkInformation.Ping
$exist = Test-Path $fileName
$online, $noPing, $errorPing = @(), @(), @()

if ($exist) {
    ### Read List of User Names ###	
	$machineList = Get-Content $fileName 
	foreach ($line in $machineList) {
		$computerName = $line
        if ($computerName -eq $null) {$computerName = "$env:computername"} 
        ### Ping Machine ###
        Write-Host Ping $computerName
		try{
			$reply = $ping.send($computerName)
		}catch{
			$errorPing += $computerName
		}
        if($reply.status -eq 'Success'){
			#Write-Host ONLINE: $computerName -fore Green
			copy-item "$CurrentDir\UninstallStoreForward.cmd" "\\$computerName\C$\Windows\Temp\" -force
			$command = 'cmd /c "$CurrentDir\psexec.exe" \\'+$computerName+' C:\windows\temp\UninstallStoreForward.cmd' 
			Invoke-Expression -command $command
			$online += $computerName
		}else{
			$noPing += $computerName
        }
	}
}else{
	Write-Host "Error, $fileName does not exist in the same directory as this script"
}
if($online){
	Write-Host "Following Machines are ONLINE:"
	foreach($on in $online){
		Write-Host $on -fore green
	}
}

if($noPing){
	Write-host "Following Machines are OFFLINE:"
	foreach($no in $noPing){
		Write-Host $no -fore red
	}
}

if($errorPing){
	Write-Host "Following Machines encountered an error during Ping:"
	foreach($p in $errorPing){
		Write-host $p
	}
}