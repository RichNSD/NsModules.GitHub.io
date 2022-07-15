# Variable Cmdlet Snippets
New-Variable -Name 'variablw' -Value "value" -Scope 'Local' -ErrorAction 'Suspend' -Description "Variable Description." -WarningVariable +NsWarningVar -ErrorVariable +NsErrorVar -InformationVariable +NsInfoVar -PassThru


New-Variable -Name 'OpenSSHgit' -Value "https://github.com/PowerShell/Win32-OpenSSH/releases/download/v8.9.0.0p1-Beta/OpenSSH-Win64.zip" -Scope 'Local' -ErrorAction 'Suspend' -Description "The download URL for the OpenSSH client, hosted by GitHub." -WarningVariable +NsWarningVar -ErrorVariable +NsErrorVar -InformationVariable +NsInfoVar -PassThru

New-Variable -Name 'scriptStage' -Value "C:\$HOME\.stage" -Scope 'Local' -ErrorAction 'Suspend' -Description "This hidden, temporary folder is (as the name suggests) is meant to provide a space in which files and directories can be organized, modified, etc. As the script completes, the folder will be removed- so if you (if 'you' are the user) find it, just delete it." -WarningVariable +NsWarningVar -ErrorVariable +NsErrorVar -InformationVariable +NsInfoVar -PassThru
	# After this directory is created, a 'README.txt' document with the same content as the above description needs to be created with it in the event this (or any of our other scripts) winds up failing before the directory is removed.