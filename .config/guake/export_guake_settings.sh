#!/bin/bash

# export guake settings (guake -> external file) using dconf
# made based in this issue thread: https://github.com/Guake/guake/issues/292

dconf dump /apps/guake/ > ~/.config/guake/guake_settings
echo "settings exported to ~/.config/guake/guake_settings"
