#!/bin/bash

wallpaper_dir="$HOME/Pictures/wallpaper" # 将此路径替换为你的壁纸目录路径

# 函数：杀死之前的swaybg进程
function kill_previous_swaybg() {
	pkill -x swaybg
}

# 函数：随机选择一个壁纸
function set_random_wallpaper() {
	local files=()
	# 遍历目录并将壁纸文件放入数组
	while IFS= read -r -d '' file; do
		files+=("$file")
	done < <(find "$wallpaper_dir" -type f \( -iname "*.jpg" -o -iname "*.png" \) -print0)

	# 数组长度
	local num_files=${#files[@]}

	if [ "$num_files" -eq 0 ]; then
		echo "没有找到壁纸文件。"
		exit 1
	fi

	# 生成随机数，选取一个壁纸
	local random_index=$((RANDOM % num_files))
	local random_wallpaper="${files[$random_index]}"

	# 使用swaybg设置为桌面壁纸
	swaybg --output "*" --mode fill --image "$random_wallpaper"
	echo "设置壁纸：$random_wallpaper"
}

kill_previous_swaybg

set_random_wallpaper
