set theDatabaseId to 2 -- References database

tell application id "com.devon-technologies.thinkpro2"
	repeat with theDatabase in databases
		display dialog (name of theDatabase as string) & " " & id of theDatabase as string
	end repeat
end tell