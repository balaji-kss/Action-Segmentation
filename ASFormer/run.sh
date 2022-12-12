dataset=breakfast #50salads #gtea #breakfast
split=1
action=predict #predict train
version=exp13
arch=default_ca_enc
LOGFILE=loggers/${dataset}_${split}_${action}_${arch}_${version}.log

# train
# CUDA_VISIBLE_DEVICES=4 python3 main.py --action=${action} --dataset=${dataset} --version=${version} --arch=${arch} --split=${split}  > "$LOGFILE" 2>&1 & 

# predict
CUDA_VISIBLE_DEVICES=4 python3 main.py --action=${action} --dataset=${dataset}  --version=${version} --arch=${arch} --split=${split} # > "$LOGFILE" 2>&1 &

# # eval
CUDA_VISIBLE_DEVICES=4 python3 eval.py --dataset=${dataset} --version=${version} --split=${split} > "$LOGFILE" 2>&1 &
