on open location this_URL
    set file_uri to (item 2 of theSplit(this_URL, "://"))
    set splitty to theSplit(file_uri, ":")
    do shell script "/usr/local/bin/emacsclient --no-wait +" & (item 2 of splitty) & ":" & (item 3 of splitty) & " \"" & (item 1 of splitty) & "\""
end open location

-- Stolen from http://erikslab.com/2007/08/31/applescript-how-to-split-a-string/
on theSplit(theString, theDelimiter)
    -- save delimiters to restore old settings
    set oldDelimiters to AppleScript's text item delimiters
    -- set delimiters to delimiter to be used
    set AppleScript's text item delimiters to theDelimiter
    -- create the array
    set theArray to every text item of theString
    -- restore the old setting
    set AppleScript's text item delimiters to oldDelimiters
    -- return the result
    return theArray
end theSplit
