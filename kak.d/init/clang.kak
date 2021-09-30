hook global WinSetOption filetype=(c|cpp|cc|h|hpp|hh) % {
    clang-enable-autocomplete
    clang-enable-diagnostics
    set global clang_options "-std=c++11 -I./ -I../include"
}
