# Lazy Config

This directory is the responsable for adding plugins, my config uses
[lazy.nvim](https://github.com/folke/lazy.nvim) for the plugin manager.

## lazy-nvim.lua

This file is the one that configs/installs `lazy.nvim` and its plugins.

## plugin-list.lua

This file creates a global variable named 'Plugins', which is a table that contains all the plugins
that lazy will install, this file is required by `lazy.nvim.lua`.
