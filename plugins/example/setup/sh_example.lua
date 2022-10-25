-- Plugin Metadata
PLUGIN.Name = "Example Plugin"
PLUGIN.Desc = "This is the description."
PLUGIN.Version = "1.0.0"

-- Hooks
function PLUGIN:OnReloaded()
  print("The gamemode was reloaded! This was called from a Plugin.")
end
