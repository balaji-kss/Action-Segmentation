dataset=50salads #50salads #gtea #breakfast
split=1
action=train #predict train
version=exp9d
arch=default
LOGFILE=loggers/${dataset}_${split}_${action}_${arch}_${version}.log

# train
CUDA_VISIBLE_DEVICES=6 python3 main.py --action=${action} --dataset=${dataset} --version=${version} --arch=${arch} --split=${split}  > "$LOGFILE" 2>&1 & 

# predict
# CUDA_VISIBLE_DEVICES=5 python3 main.py --action=${action} --dataset=${dataset}  --version=${version} --arch=${arch} --split=${split}

# eval
# CUDA_VISIBLE_DEVICES=3 python3 eval.py --dataset=${dataset} --version=${version} --split=${split} # > "$LOGFILE" 2>&1 &
