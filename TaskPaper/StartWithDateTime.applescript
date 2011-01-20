on getCurrentDate()
	set theDate to current date
	
	set {month:m, day:d, year:y, time:t} to theDate
	
	set theMonth to month of theDate as integer
	set theDay to day of theDate
	set theYear to year of theDate
	set t to time of theDate
	
	set theHour to round (t / (60 * 60)) rounding down
	set theMinute to round (t - (theHour * 60 * 60)) / 60 rounding down
	
	if theDay as integer < 10 then
		set theDay to "0" & theDay
	end if
	if theMinute as integer < 10 then
		set theMinute to "0" & theMinute
	end if
	
	set textDate to (theYear as string) & "-" & theMonth & "-" & theDay & " " & theHour & ":" & theMinute
	return textDate
end getCurrentDate

tell application "TaskPaper"
	tell front document
		tell selected entry
			if not (exists tag named "start") then
				make tag with properties {name:"start", value:my getCurrentDate()}
			end if
		end tell
	end tell
end tell