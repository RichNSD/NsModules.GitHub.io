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
	
	func

	begin {

		$WarningPreference="SilentlyContinue"
		$ErrorView="CategoryView"


		# VARIABLES
			New-Variable -Name 'OpenSSHgit' -Value "https://github.com/PowerShell/Win32-OpenSSH/releases/download/v8.9.0.0p1-Beta/OpenSSH-Win64.zip" -Scope 'Local' -ErrorAction 'Suspend' -Description "The download URL for the OpenSSH client, hosted by GitHub." -WarningVariable +NsWarningVar -ErrorVariable +NsErrorVar -InformationVariable +NsInfoVar -PassThru

			New-Variable -Name 'scriptStage' -Value "C:\$HOME\.stage" -Scope 'Local' -ErrorAction 'Suspend' -Description "This hidden, temporary folder is (as the name suggests) is meant to provide a space in which files and directories can be organized, modified, etc. As the script completes, the folder will be removed- so if you (if 'you' are the user) find it, just delete it." -WarningVariable +NsWarningVar -ErrorVariable +NsErrorVar -InformationVariable +NsInfoVar -PassThru
				# After this directory is created, a 'README.txt' document with the same content as the above description needs to be created with it in the event this (or any of our other scripts) winds up failing before the directory is removed.
			
			New-Variable -Name 'OpenSshDir' -Value "$ProgramFiles\OpenSSH" -Scope 'Local' -ErrorAction 'Suspend' -Description "The primary working driectory for the OpenSSH client, located in 'Program Files'." -WarningVariable +NsWarningVar -ErrorVariable +NsErrorVar -InformationVariable +NsInfoVar -PassThru

			New-Variable -Name 'HostSshData' -Value "$HOME\.ssh" -Scope 'Local' -ErrorAction 'Suspend' -Description "Variable Description." -WarningVariable +NsWarningVar -ErrorVariable +NsErrorVar -InformationVariable +NsInfoVar -PassThru



	}


	process { # For some reason VS Code thinks I'm breakibng the sacred rules of the 'process' block

		# This needs to be SIGNIFICANTLY more complicated (conditions, , error checking, etc)
		Invoke-WebRequest -Uri "$OpenSSHgit" -OutFile "$HOME\Downloads\OpenSSH.zip" -Verbose -PassThru

		New-Item -ItemType Directory -Path "$scriptStage" -Force
		Expand-Archive -LiteralPath "$Home\Downloads\OpenSSH.zip" -DestinationPath ""

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

{0}

}





# [CmdletBinding(SupportShouldProcess)]
# https://github.com/PowerShell/Win32-OpenSSH/releases/download/v8.9.0.0p1-Beta/OpenSSH-Win64.zip