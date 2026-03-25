# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi


# Put your fun stuff here.

# Ranger options
alias ranger="ranger --cmd='set show_hidden true' --cmd='set vcs_aware true' --cmd='set vcs_backend_git enabled' --cmd='set preview_images_method w3m' --cmd='set preview_images true'"

# Slack
alias slack="(cd /opt/slack && ./slack &)"

# java override while >11 is unsupported
#alias java="/opt/openjdk-bin-17/bin/java"

# ThinkOrSwim
alias thinkorswim="(cd ~/thinkorswim && /opt/openjdk-bin-11/bin/java -jar launcher.jar -Dsun.java2d.opengl=true)"

# RuneLite
alias osrs="(cd ~/ && /opt/openjdk-bin-17/bin/java -jar RuneLite.jar)"
alias bot="(cd ~/ && /opt/openjdk-bin-17/bin/java -jar RuneMate.jar & /opt/openjdk-bin-11/bin/java -jar  -Duser.home='~/' -Djava.class.path='jagexappletviewer.jar' -Dcom.jagex.config='http://oldschool.runescape.com/jav_config.ws' ~/runescape/oldschool/jagexappletviewer.jar oldschool &)"

# FireFox Sandbox
#alias firefox="/usr/local/bin/firefox"

# alias for suspend to ram
alias slp="echo mem | sudo tee /sys/power/state > /dev/null"
alias wipe="sudo grub-reboot \"Memtest86+\" && sudo reboot"

alias tws="~/Jts/tws"

alias aws="ssh -i ~/lilium/Lilium.pem ubuntu@lilium.bio"
alias mc="ssh -i ~/lilium/Lilium.pem ubuntu@34.226.134.29"
alias vh="ssh -i ~/lilium/Lilium.pem ubuntu@54.159.196.208"

alias screenshot="gnome-screenshot --area -f ~/screenshots/\$(date +%s).png"

# font substitution is broken in poppler
fixpdf() { gs -o "fixed_$1" -dPDFSETTINGS=/prepress -sDEVICE=pdfwrite "$1"; }

. ~/.openai.key # set OpenAI API Key for codex
