'''
Author: Hongkun Luo
Date: 2024-04-04 15:21:40
LastEditors: Hongkun Luo
Description: 

Hongkun Luo
'''
import os
import shutil

# 指定原始图片文件夹路径和目标图片文件夹路径
original_folder = "images"
target_folder = "renamed_images"

# 确保目标文件夹存在，如果不存在则创建
if not os.path.exists(target_folder):
    os.makedirs(target_folder)

# 遍历原始图片文件夹中的所有文件
for i, filename in enumerate(os.listdir(original_folder)):
    # 构造新的文件名
    new_filename = str(i + 1) + ".png"
    
    # 构造原始图片文件的完整路径和目标图片文件的完整路径
    original_path = os.path.join(original_folder, filename)
    target_path = os.path.join(target_folder, new_filename)
    
    # 将原始图片文件复制到目标图片文件夹，并重命名为新的文件名
    shutil.copyfile(original_path, target_path)