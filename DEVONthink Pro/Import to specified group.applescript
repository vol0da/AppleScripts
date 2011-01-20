on hazelProcessFile(theFile)
	set databaseId to 2
	set recordId to 10600
	
	tell application id "com.devon-technologies.thinkpro2"
		tell database id databaseId
			set theGroup to record id recordId
		end tell
		
		import theFile to theGroup
	end tell
end hazelProcessFile