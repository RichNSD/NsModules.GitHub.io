function Get-NsOpenSSH {

	[CmdletBinding()]
	param (
		[Parameter()]
		[TypeName]
		$ParameterName
	)

	param (
		[Parameter(Mandatory=$false,
				   Position=0,
				   ParameterSetName="LiteralPath",
				   HelpMessage="Literal path to your selected Download directory. If none is specified, the script will defauklt to the User's 'Downloads' folder.")]
		[Alias("DLpath")]
		[ValidateNotNullOrEmpty()]
		[string[]]$DownloadDir
	)
	
	
	begin {

		# Prep

	}


	process { # For some reason VS Code thinks I'm breakibng the sacred rules of the 'process' block

		Invoke-WebRequest -Uri "$OpenSSHgit" -OutFile "$HOME\Downloads\OpenSSH.zip" -Verbose -PassThru

		Set-Item -ItemType Directory -Path "$scriptStage" -Force -WarningVariable +NsWarningVar -ErrorVariable +NsErrorVar -InformationVariable +NsInfoVar
		Expand-Archive -LiteralPath "$Home\Downloads\OpenSSH.zip" -DestinationPath "$sciptStage\OpenSSH-Stage" -WarningVariable +NsWarningVar -ErrorVariable +NsErrorVar -InformationVariable +NsInfoVar -PassThru


	}


	end {

		$WarningPreference="Continue"
			Write-Host "$WarningPreference"
		$ErrorView="ConciseView"
			Write-Host "$ErrorView"

	}



<#

.SYNOPSIS
	A short one-line action-based description, e.g. 'Tests if a function is valid'


.DESCRIPTION
	A longer description of the function, its purpose, common use cases, etc.


.NOTES
	Information or caveats about the function e.g. 'This function is not supported in Linux'


.LINK
	Specify a URI to a help page, this will show when Get-Help -Online is used.


.EXAMPLE
	Test-MyTestFunction -Verbose
	Explanation of the function or its result. You can include multiple examples with additional .EXAMPLE lines

#>










<#

===|  Temporary Code Space  |===

[CmdletBinding(SupportShouldProcess)]


Invoke-WebRequest -Uri "$OpenSSHgit" -OutFile "$HOME\Downloads\OpenSSH.zip" -Verbose -PassThru

The ⬆️ 'Invoke-WebRequest' ⬆️ above needs to be SIGNIFICANTLY more complicated (conditions, error checking, etc).


https://github.com/PowerShell/Win32-OpenSSH/releases/download/v8.9.0.0p1-Beta/OpenSSH-Win64.zip


#>
