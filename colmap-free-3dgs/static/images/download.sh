s=("ig" "francis" "museum" "family" "ballroom" "barn" "church" "horse")
m=("barf" "nerfmm" "ours" "scnerf") 
for n in ${s[@]}; 
do
    for p in ${m[@]};
    do
        wget https://nope-nerf.active.vision/imgs/${n}_${p}.png
    done
done