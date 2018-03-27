let install_script_url = "https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh"
if empty(glob(g:plugins_path."repos/"))
  execute "!curl " .install_script_url." -sSf | sh -s ".g:plugins_path
endif
