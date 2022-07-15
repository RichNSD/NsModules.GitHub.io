function New-Template {


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






	
}