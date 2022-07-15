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
	
	fun

	begin {

		New-Variable -Name OpenSSHgit -Value "https://github.com/PowerShell/Win32-OpenSSH/releases/download/v8.9.0.0p1-Beta/OpenSSH-Win64.zip" -Scope Local -WarningAction SilentlyContinue -ErrorAction Break -PassThru

		New-Variable -Name 

	}


	process { # For some reason VS Code thinks I'm breakibng the sacred rules of the 'process' block

		# This needs to be SIGNIFICANTLY more complicated (conditions, , error checking, etc)
		Invoke-WebRequest -Uri "$OpenSSHgit" -OutFile "$HOME\Downloads\OpenSSH.zip" -Verbose -PassThru

	}


	end {

		Get-ChildItem -Path <## I only put Get-ChildItem here so VS Code wouldn't yell at me for leaving an empty end block or some bullshit #>

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