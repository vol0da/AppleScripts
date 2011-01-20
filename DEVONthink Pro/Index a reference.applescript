on hazelProcessFile(theFile)
	set theDatabaseId to 2 -- References database
	
	tell application id "com.devon-technologies.thinkpro2"
		set theDatabase to get database with id theDatabaseId
		set theInbox to incoming group of theDatabase
		indicate theFile to theInbox
	end tell
end hazelProcessFile