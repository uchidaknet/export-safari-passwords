tell application "System Events" to tell application process "Safari"
	set frontmost to true
	
	tell table 1 of scroll area 1 of group 1 of group 1 of window 1
		set tableData to every UI element
		set resultText to ""
		
		repeat with i from 1 to length of tableData
			set rowData to item i of tableData
			try
				set theSite to description of UI element 1 of rowData
				set theUser to name of UI element 2 of rowData
				set thePass to name of UI element 3 of rowData
				set resultText to resultText & theSite & tab & theUser & tab & thePass & return
			on error
				-- set resultText to resultText & "#" & i & ":Error" & return
			end try
		end repeat
		
		return resultText
	end tell
end tell