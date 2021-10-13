plug "andreyorst/langmap.kak" config %{
    set-option global langmap %opt{langmap_ru_jcuken}
} demand langmap %{
    map -docstring "toggle layout" global normal '<c-\>' ':      toggle-langmap<ret>'
    map -docstring "toggle layout" global insert '<c-\>' '<a-;>: toggle-langmap<ret>'
    map -docstring "toggle layout" global prompt '<c-\>' '<a-;>: toggle-langmap prompt<ret>'
}

