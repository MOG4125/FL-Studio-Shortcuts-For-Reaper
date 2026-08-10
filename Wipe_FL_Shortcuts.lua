-- @description Purge and Wipe FL Shortcuts with Help Menu
-- @version 1.1
-- @author MOG4125
-- @about Displays a guide of mapped FL Studio shortcuts and resets to default.

-- --- GUIDE SECTION ---
local shortcutGuide = [[
==================================================
        FL STUDIO TO REAPER SHORTCUT GUIDE
==================================================
 [ WINDOW MANAGEMENT ]
 • F5       -->  Open Playlist
 • F6       -->  Open Browser
 • F7       -->  Open Piano Roll
 • F8       -->  Open Plugin Picker
 • F10      -->  Open Routing Matrix
 • Tab      -->  Cycle Views

 [ EDITING & TRANSPORT ]
 • F2       -->  Item Properties
 • Ctrl + B -->  Toggle Snap
 • Ctrl + R -->  Record
==================================================

Do you want to delete these and reset to REAPER default?]]

-- --- ACTION SECTION ---
local confirm = reaper.ShowMessageBox(shortcutGuide, "FL Studio Shortcut Guide & Purge Tool", 4)

if confirm == 6 then -- Yes to wipe
    reaper.reaperDoSelActionShortcuts(0, -1, 0) 
    reaper.Main_OnCommand(40000, 0) 
    reaper.ShowMessageBox("Shortcuts purged! Restart REAPER to finalize.", "Success", 0)
else
    reaper.ShowMessageBox("Exited safely.", "Cancelled", 0)
end
