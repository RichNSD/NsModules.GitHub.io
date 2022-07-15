:: Declare Variables
@echo OFF
	set sshDir=C:\Program Files\OpenSSH
	set hostSsh=%ProgramData%\ssh
	set SshKeygen=C:\Program Files\OpenSSH\ssh-keygen.exe


cd %sshDir%

for %f in (

	%hostSsh%\ssh_host_*_key
	
	) do {
		
		ssh-keygen -l -f "%f"
		
	}


:: for %f in (%ProgramData%\ssh\ssh_host_*_key) do @%ProgramFiles%\OpenSSH\OpenSSH\ssh-keygen.exe -l -f "%f"

