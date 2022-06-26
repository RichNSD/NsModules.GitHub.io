function Start-NsFullOpenSSL {
	
	[CmdletBinding(SupportsShouldProcess)]
	param ($Setup)
	
	
	begin {
		
		New-Variable -Name 'OpenSSLsvc' -Scope Local
		New-Variable -Name 'OpenSSLdir' -Scope Local
		
		
	}
	
	
}