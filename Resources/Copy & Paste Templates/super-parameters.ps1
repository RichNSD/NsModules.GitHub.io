function New-Template {

<# Specifies a path to one or more locations.

Unlike the 'Path' parameter, the value of the 'LiteralPath' parameter is used EXACTLY as it is typed. No characters are interpreted as wildcards. If the path includes escape characters, they must be enclosed single quotation ' marks (aka, apostr). Single quotation marks tell Windows PowerShell not to interpret any characters as escape sequences. #>
	param (
		[Parameter(Mandatory=$false,
				   Position=0,
				   ParameterSetName="SetName",
				   HelpMessage="Something informative")]
		[Alias("DLpath")]
		[ValidateNotNullOrEmpty()]
		[string[]]$LiteralPath
	)

	
# Specifies a path to one or more locations. Wildcards are permitted.
	param (
		[Parameter(Mandatory=$false,
				   Position=0,
				   ParameterSetName="Something",
				   ValueFromPipeline=$true,
				   ValueFromPipelineByPropertyName=$true,
				   HelpMessage="Say something nice :)")]
		[ValidateNotNullOrEmpty()]
		[SupportsWildcards()]
		[string[]]$WildcardPath
	)


	@{
		Name      = 'Pancales'
		Mandatory = $true
		Type      = [string]
	}

	






	
}