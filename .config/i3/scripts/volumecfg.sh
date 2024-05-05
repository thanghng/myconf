#!/bin/sh

id=78642
timeout=2000

volume_status() {
  echo "`wpctl get-volume @DEFAULT_SINK@`"
}

case "$1" in
  mute)
    wpctl set-mute @DEFAULT_SINK@ toggle
    muted="`volume_status | awk '{print $3}'`"
    if [ $muted == "[MUTED]" ]; then
      dunstify "Volume muted" -t $timeout -r $id
    else
      dunstify "Volume unmuted" -t $timeout -r $id
    fi
  ;;
  micmute)
    wpctl set-mute @DEFAULT_SOURCE@ toggle
    muted="`wpctl get-volume @DEFAULT_SOURCE@ | awk '{print $3}'`"
    if [ $muted == "[MUTED]" ]; then
      dunstify "Mic muted" -t $timeout -r $id
    else
      dunstify "Mic unmuted" -t $timeout -r $id
    fi
  ;;
  *)
    wpctl set-volume @DEFAULT_AUDIO_SINK@ $1
    volume="`volume_status | awk '{print $2*100}'`"
    dunstify "Volume: $volume%" -h string:value:$volume -h int:value:$volume -t 2000 -r $id
  ;;
esac

