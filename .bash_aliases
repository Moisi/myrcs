# Detect the platform (similar to $OSTYPE)
OS="`uname`"
case $OS in
  'Linux')
    OS='Linux'
    alias ls='ls --color=auto'
	alias ll='ls -alvF --group-directories-first'
    ;;
  'FreeBSD')
    OS='FreeBSD'
    alias ls='ls -G'
    ;;
  'WindowsNT')
    OS='Windows'
    ;;
  'Darwin')
    OS='Mac'
	alias ls='ls -G'
	alias ll='ls -alvF'
 ;;
  'SunOS')
    OS='Solaris'
    ;;
  'AIX') ;;
  *) ;;
esac


# some more ls aliases
# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'


alias tmux="TERM=screen-256color-bce tmux"
alias f='find . -name'
alias la='ls -A'
alias lr='ll -tr'
alias l='ls -CF'
alias o='xdg-open'
alias cd..='cd ..'
alias h='history'
alias hg='history | grep'

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'


alias ssh='ssh -C'

alias stop='echo Are you sure? Maybe try: && echo &&echo "   adb shell stop"'
alias reboot='echo Are you sure? Maybe try: && echo &&echo "   adb shell reboot'

# git alias
alias gitall='echo Branch: && git branch && echo && echo Remotes: && git remote -v && echo &&  echo Status: && git status'
alias gits='git status'
alias gitlo='git log --oneline'
alias gitl='git log'
alias gitsh='git show'
alias gitd='git diff'
alias ggd='gedit $(git rev-parse --show-toplevel)/$(git diff --name-only)'
alias ggs='gedit $(git rev-parse --show-toplevel)/$(git show --pretty="format:" --name-only)'

# general alias
alias cpwd="pwd | xsel -b"
alias diff='colordiff -u'

# adb alias:
alias arrs='adb wait-for-device; adb devices ; adb root&&adb wait-for-device && adb remount&&adb wait-for-device&&adb shell'
alias arr='adb wait-for-device; adb devices ; adb root && adb wait-for-device && adb remount && adb wait-for-device'
alias amenu='adb shell input keyevent 1'
alias ahome='adb shell input keyevent 3'
alias atop='adb shell busybox top'
alias aback='adb shell input keyevent 4'
alias ablank='adb shell input keyevent 26'
alias alog='adb wait-for-device; adb logcat'
alias aelog='adb logcat *:E'
alias aroot='adb root'
alias amount='adb root && adb remount'
alias areboot='adb wait-for-device && adb reboot'
alias abootloader='adb wait-for-device; adb reboot bootloader'
alias ashell='adb wait-for-device; adb shell'
alias ainstall='adb wait-for-device; adb install'
alias auninstall='adb wait-for-device; adb shell am start -a android.intent.action.DELETE -d package:'
alias atext='adb shell input text'
alias admesg='adb wait-for-device&&adb root&&adb wait-for-device&&adb shell dmesg'
alias await='adb wait-for-device'
alias amediarefresh='adb shell am broadcast -a android.intent.action.MEDIA_MOUNTED -d file:///sdcard'
echo 'amediarefresh'
alias acapture='adb shell am start -a android.media.action.IMAGE_CAPTURE'
alias avcapture='adb shell am start -a android.media.action.VIDEO_CAPTURE'
alias acfront='adb shell am start -a android.media.action.IMAGE_CAPTURE --ei android.intent.extras.CAMERA_FACING 0'
alias acback='adb shell am start -a android.media.action.IMAGE_CAPTURE --ei android.intent.extras.CAMERA_FACING 1'
alias agetfrontapp='adb wait-for-device && adb shell dumpsys window windows | grep -E 'mFocusedApp'| cut -d / -f 1 | cut -d " " -f 7'
alias aprintf='adb shell log -p v -t "OOO_DEBUG_LOG:" ""'
alias astop='adb shell stop'
alias astart='adb shell start'

# fastboot aliases:
alias freboot='fastboot reboot'

#network alias
alias myip='wget http://ipinfo.io/ip -qO -'
alias speedtest='wget -O /dev/null http://speedtest.wdc01.softlayer.com/downloads/test10.zip'



