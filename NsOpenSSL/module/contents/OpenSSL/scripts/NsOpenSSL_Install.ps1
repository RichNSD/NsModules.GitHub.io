function Get-NsOpenSSH {

	[CmdletBinding()]
	param (
		[Parameter()]
		[TypeName]
		$ParameterName
	)

	# Specifies a path to one or more locations. Unlike the Path parameter, the value of the LiteralPath parameter is
	# used exactly as it is typed. No characters are interpreted as wildcards. If the path includes escape characters,
	# enclose it in single quotation marks. Single quotation marks tell Windows PowerShell not to interpret any
	# characters as escape sequences.
	param (
		[Parameter(Mandatory=$false,
				   Position=0,
				   ParameterSetName="LiteralPath",
				   HelpMessage="Literal path to your selected Download directory. If none is specified, the script will defauklt to the User's 'Downloads' folder.")]
		[Alias("DLpath")]
		[ValidateNotNullOrEmpty()]
		[string[]]$LiteralPath
	)

	param
	
}





# [CmdletBinding(SupportShouldProcess)]
# https://github.com/PowerShell/Win32-OpenSSH/releases/download/v8.9.0.0p1-Beta/OpenSSH-Win64.zip