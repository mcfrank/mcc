#!/bin/bash

rocco -o docs experiment.js even-odd.html style.css

osascript <<'APPLESCRIPT'
tell application "Google Chrome"
  set i to 0
    repeat with t in (tabs of first window)
        set i to i + 1
        if ({"experiment.js","even-odd.html","style.css"} contains title of t ) then
            tell t
              execute javascript "window.location.reload()"
            end tell
        end if
    end repeat
end tell
APPLESCRIPT