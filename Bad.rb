Second Song
use_bpm 114
use_synth :piano

whosbad = "C:/Users/William_Murphy III/Desktop/whosbadnew.wav"
youknow = "C:/Users/William_Murphy III/Desktop/youknow.wav"
whoo = "C:/Users/William_Murphy III/Desktop/WHOO!.wav"
onceagain = "C:/Users/William_Murphy III/Desktop/onceagain.wav"



sample youknow
sleep 2.5

sleep 0.25
play :d5
play :a4
sleep 0.5

play :e5
play :b4
sleep 0.5

play :fs5
play :cs5
sleep 0.5

play :g5
play :d5
sleep 1.25


live_loop :notes do
  2.times do
    play :a1
    sleep 1
    play :c2
    sleep 1
    play :d2
    sleep 1
    play :ds2
    sleep 0.5
    play :e2
    sleep 0.5
    
    sleep 0.5
    play :a1
    sleep 0.5
    play :c2
    sleep 1
    play :d2
    sleep 1
    play :ds2
    sleep 0.5
    play :e2
    sleep 0.5
    
    play :a1
    sleep 1
    play :c2
    sleep 1
    play :d2
    sleep 1
    play :ds2
    sleep 0.5
    play :e2
    sleep 0.5
    
    sleep 0.5
    play :a1
    sleep 0.5
    play :c2
    sleep 1
    play :d2
    sleep 1
    play :ds2
    sleep 0.5
    play :e2
    sleep 0.5
  end
  stop
end


sleep 16

#fade in with 4.times do loop and a variable that gets bigger
d = 0.25
live_loop :drums do
  12.times do
    sample :drum_cymbal_closed, amp: d
    sleep 1
    d = d + 0.25
  end
  stop
  d = 0.25
end


#array with 4 different samples
snores = [7,2,2,4]
sounds = [onceagain, whosbad, whoo, youknow]
x = 0
4.times do
  sample sounds[x]
  sleep snores[x]
  x = x + 1
end

sample whosbad
