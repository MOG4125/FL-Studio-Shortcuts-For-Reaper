-- @description Purge and Wipe FL Shortcuts
-- @version 1.0
-- @author YourName
-- @about
--   A panic switch tool to safely clear out imported hotkeys and restore default keybinds.

local confirm = reaper.ShowMessageBox("Are you sure you want to delete and reset all current keyboard shortcuts back to REAPER factory default?", "Purge Shortcuts?", 1)

if confirm == 1 then
    reaper.reaperDoSelActionShortcuts(0, -1, 0) 
    reaper.Main_OnCommand(40000, 0)
    reaper.ShowMessageBox("Shortcuts successfully purged! Restart REAPER to finalize default values.", "Success", 0)
else
    reaper.ShowMessageBox("Purge cancelled. Your FL Studio shortcuts are safe.", "Cancelled", 0)
end
