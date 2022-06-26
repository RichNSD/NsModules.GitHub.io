function Start-NsFullOpenSSL {
	
	[CmdletBinding(SupportsShouldProcess)]
	param ($Setup)
	
	
	begin {
		
		New-Variable -Name 'sshdSvc' -Scope Local
		New-Variable -Name 'sshAuthSvc' -Scope Local
		New-Variable -Name 'sshProcess' -Scope Local
		New-Variable -Name 'OpenSSLdir' -Scope Local
		
		
	}
	
	
}