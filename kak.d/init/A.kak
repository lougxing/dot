colorscheme solarized-dark

# Tabstop and indentwidth
set-option global tabstop 4
set-option global indentwidth 4

# line number
add-highlighter global/ number-lines

# control mouse copy/paste
set-option global ui_options terminal_enable_mouse=false

# bootstrap the plugin manager
evaluate-commands %sh{
    domain="https://github.com/andreyorst/plug.kak.git"
    plugins="${kak_config:?}/plugins"
    mkdir -p "$plugins"
    [ ! -e "$plugins/plug.kak" ] && \
        git clone -q ${domain} "$plugins/plug.kak"
    printf "%s\n" "source '$plugins/plug.kak/rc/plug.kak'"
}

#plugin manager
plug "andreyorst/plug.kak" noload config %{
    set-option global plug_always_ensure true
    set-option global plug_profile true
    hook global WinSetOption filetype=plug %{
    remove-highlighter buffer/numbers
        remove-highlighter buffer/matching
        remove-highlighter buffer/wrap
        remove-highlighter buffer/show-whitespaces
    }
}
