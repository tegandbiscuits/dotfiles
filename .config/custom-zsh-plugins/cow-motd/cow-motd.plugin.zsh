cows=(
  cheese
  cower
  default
  dragon
  dragon-and-cow
  elephant
  kitty
  milk
  moose
  sheep
  small
  stegosaurus
  surgery
  three-eyes
  turkey
  turtle
  vader
  www
)

cow_index=$((RANDOM % ${#cows[@]}))
cow=$cows[$cow_index]

fortune_file=zippy

fortune $fortune_file | cowsay -f $cow 
