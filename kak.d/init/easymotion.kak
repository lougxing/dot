
plug "danr/kakoune-easymotion" config %{
    face global EasyMotionBackground rgb:000001
    face global EasyMotionForeground rgb:ee3a8c,rgb:000000+fg
    face global EasyMotionSelected yellow+b
}

map global normal <a-,> ': easy-motion-char<ret>'
map global normal <c-j> ': easy-motion-char<ret>'
