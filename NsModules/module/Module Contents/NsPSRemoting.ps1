


Enter-PSSession -ComputerName '192.168.1.40' -Credential ${c}


New-NetFirewallRule -Name "PSRemoting_Out" -DisplayName "PowerShell Remoting (Outbound)" -Owner "Richard Joubert" -Protocol 'TCP' -LocalPort "Port Number: 5985, 5986" -RemotePort "Port Number: 5985, 5986" -Direction Outbound -Description "Allows for outgoing PSSession connection requests to be made." -Enabled True



New-NetFirewallRule -Name "PowerShell Remoting" -Protocol 'TCP' -LocalPort "Port Number: 5985, 5986" -RemotePort "Port Number: 5985, 5986" -Direction Outbound -Description "Allows for outgoing PSSession connection requests to be made." -Enabled True

New-NetFirewallRule -Name "PowerShell Remoting" -Protocol 'TCP' -LocalPort "Port Number: 5985, 5986" -RemotePort "Port Number: 5985, 5986" -Direction Inbound -Description "Allows for outgoing PSSession connection requests to be made." -Enabled True

function NsPSRemoting {
	
	# SupportsShouldProcess
	[CmdletBinding()]
	param (
		[Parameter(Mandatory)]
		$aaa
	)
	
}