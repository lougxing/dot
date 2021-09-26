define-command -hidden \
-docstring "smart-select <w|a-w>: select <word> if current selection is only one character." \
smart-select -params 1 %{
    try %{
        execute-keys "<a-k>..<ret>"
    } catch %{
        execute-keys "<a-i><%arg{1}>"
    } catch nop
}
