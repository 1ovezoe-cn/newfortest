#!/bin/bash
answer=$((RANDOM % 100 + 1))
echo "===== 猜数字游戏（1-100）====="

while true; do
    read -p "请输入数字: " num
    if (( num < answer )); then
        echo "小了！"
    elif (( num > answer )); then
        echo "大了！"
    else
        echo "恭喜猜对！答案是 $answer"
        break
    fi
done
