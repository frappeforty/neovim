# Neovim

Dot files for my personal development env.

## How to set it up ?

* Install [neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim).
* Open *~/.config/* on your linux machine.
* Clone this repo using ```git clone https://github.com/frappeforty/neovim.git```.
* Open the config files in neovim and source them using ```:so```.
* Install plugins using ```:PackerSync```.
* Setup LSP + Autocompletion :
  * Install the language servers ( tsserver, pyright etc ) mentioned in [cmp.lua](https://github.com/frappeforty/neovim/blob/main/nvim/lua/frappeforty/plugins/cmp.lua#L71) using ```:MasonInstall <languageserver>```.
  * You can install any of these [_language servers_](https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md).
  * Make sure the installed language servers are mentioned in [cmp.lua](https://github.com/frappeforty/neovim/blob/main/nvim/lua/frappeforty/plugins/cmp.lua#L71)
* Setup formatters, linters etc :
  * Install the _builtins_ ( prettier, shfmt, autopep8 etc ) mentioned in [null-ls.lua](https://github.com/frappeforty/neovim/blob/main/nvim/lua/frappeforty/plugins/null-ls.lua#L11) using ```:MasonInstall <builtin>```.
  * You can install any of these [_builtins_](https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md).
  * Make sure the installed _builtins_ are mentioned in [null-ls.lua](https://github.com/frappeforty/neovim/blob/main/nvim/lua/frappeforty/plugins/null-ls.lua#L11)
