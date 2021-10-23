$choco_apps_base = @(
    "7zip"
    "chromium"
    "Firefox"
    "qv2ray"
    "v2ray"
)

$choco_apps_dev = @(
    # "docker-desktop"
    "git"
    "microsoft-windows-terminal"
    # "msys2"
    # "nmap"
    # "vcxsrc"
    # "virtualbox"
    # "visualstudio2019buildtools"
)

$choco_apps_game = @(
    # "battle.net"
    # "epicgameslauncher"
    "msiafterburner"
    "mumble"
    "steam"
)

$choco_apps_multimedia = @(
    "okular"
    "vlc"
)


$choco_apps_social = @(
    # "tencentmeeting"
    # "wecom"
    "wechat"
)

$choco_apps_other = @(
    "autohotkey"
    "keepassxc"
    "nextcloud-client"
)

Export-ModuleMember -Variable *
