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

		New-Variable -Name OpenSSHgit -Value "https://github.com/PowerShell/Win32-OpenSSH/releases/download/v8.9.0.0p1-Beta/OpenSSH-Win64.zip" -Scope Local -WarningAction SilentlyContinue -ErrorAction Break -PassThru

		New-Variable -Name 

	}


	process {

		Invoke-WebRequest -Uri "$OpenSSHgit" -OutFile "$HOME\Downloads\OpenSSH.zip" -Verbose -PassThru 

	}
	
}





# [CmdletBinding(SupportShouldProcess)]
# https://github.com/PowerShell/Win32-OpenSSH/releases/download/v8.9.0.0p1-Beta/OpenSSH-Win64.zip