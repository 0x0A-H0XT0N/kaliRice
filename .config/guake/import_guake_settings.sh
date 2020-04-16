#!/bin/bash

# import guake settings (external file -> guake) using dconf
# will override the current settings
# made based in this issue thread: https://github.com/Guake/guake/issues/292

dconf reset -f /apps/guake/
dconf load /apps/guake/ < ~/.config/guake/guake_settings
echo "settings imported from ~/.config/guake/guake_settings"

