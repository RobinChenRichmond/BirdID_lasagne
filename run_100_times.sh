#!/bin/bash
for i in {1..100}
do
  yes | rm *.pyc
  sudo nohup python -u train_net_args.py -c sx3_ffc_b32 > ${i}.txt
  sudo cp ${i}.txt /data
done

#sudo shutdown -h now
