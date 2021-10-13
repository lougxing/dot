plug "delapouite/kakoune-text-objects"

plug "occivink/kakoune-vertical-selection"
plug "occivink/kakoune-find" config %{
    define-command -docstring "grep-apply-changes: apply changes specified in current *grep* buffer to their respective files" \
    grep-apply-changes %{ find-apply-changes -force }
}
