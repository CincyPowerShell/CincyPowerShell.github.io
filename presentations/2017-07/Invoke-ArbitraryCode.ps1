function Invoke-ArbitraryCode {
	[CmdletBinding(SupportsShouldProcess = $true, 
		PositionalBinding = $false,
		ConfirmImpact = 'Medium')]
	[Alias()]
	[OutputType([PSCustomObject])]
	Param
	(
		# Computer Name
		[Parameter(Mandatory = $true, 
			ValueFromPipeline = $true,
			ValueFromPipelineByPropertyName = $true,
			HelpMessage = 'ComputerName is Required')]       
		[Alias('cn', 'name')]
		[String[]]$ComputerName,

		# Arbitrary Code we should run
		[Parameter(Mandatory = $true)]
		[ValidateNotNullOrEmpty()]
		[scriptblock]$Arbitrary,

		# Enable Logging to %Temp%
		[Parameter(Mandatory = $false,
			HelpMessage = 'Logs to %TEMP%\ArbitraryCode.log')]
		[Switch]$Logging
	)

	Begin { 
		$logFile = "$env:TEMP\ArbitraryCode.log"
	}
	Process {            
		$info = [PSCustomObject] @{  
			'ComputerName' = ''
			'Online'       = ''
			'Results'      = '' 
		}
		foreach ($computer in $ComputerName) {
			$info.ComputerName = $computer
			if (Test-WSMan -ComputerName $computer -ErrorAction SilentlyContinue) {
				$info.Online = $true
				if ($pscmdlet.ShouldProcess("Target", "Operation")) {
					$info.Results = Invoke-Command -ComputerName $computer -ScriptBlock $Arbitrary
					Add-Content -Value "Running Arbitrary Code [$Arbitrary] on [$computer]. Muhahaha" -Path $logFile
					Write-Information -MessageData "Running Arbitrary Code [$Arbitrary] on [$computer]. Muhahaha"
				}
			}
			else {
				$info.Online = $false
				Add-Content -Value "Unable to run Arbitrary Code on [$computer] because we could not connect via WSMAN." -Path $logFile
				Write-Information -MessageData "Unable to run Arbitrary Code on [$computer] because we could not connect via WSMAN."
			}
			$info
		}
	}
	End { }
}

Invoke-ArbitraryCode -ComputerName 'TestPC1' -Arbitrary { "Hello World [$env:ComputerName]" }

'TestPC1' | Invoke-ArbitraryCode -Arbitrary { "Hello World [$env:ComputerName]" }

Get-ADComputer -Filter { Name -like '*test*' } | Invoke-ArbitraryCode -Arbitrary { "Hello World [$env:ComputerName]" }

Invoke-ArbitraryCode -ComputerName 'TestPC1', 'TestPC2' -Arbitrary { "Hello World [$env:ComputerName]" } -WhatIf

Invoke-ArbitraryCode -ComputerName 'TestPC1', 'TestPC2' -Arbitrary { "Hello World [$env:ComputerName]" } -Logging -OutVariable myInfo -InformationVariable myInfoVar