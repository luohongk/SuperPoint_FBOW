###
 # @Author: Hongkun Luo
 # @Date: 2024-04-05 13:58:33
 # @LastEditors: Hongkun Luo
 # @Description: 
 # 
 # Hongkun Luo
### 
# 下载第三方库libtorch(已经编译过的)
cd superpoint
if [ ! -d "libtorch" ]; then
    echo "正在下载libtorch ..."
    wget https://download.pytorch.org/libtorch/cpu/libtorch-shared-with-deps-1.0.1.zip 
    if [ $? -eq 0 ]; then        echo "下载成功，正在重命名文件 ..."   
        mv libtorch-shared-with-deps-1.0.1.zip libtorch.zip
        echo "正在解压libtorch ..."
        unzip -q libtorch.zip -d .
        echo "正在删除压缩包文件 ..."
        rm libtorch.zip
        cd ../
    else echo "libtorch下载失败"
    fi
else
    echo "libtorch文件夹已存在，跳过下载和解压步骤。"
fi

cd  utils
if [ ! -d "libtorch" ]; then
    echo "正在下载libtorch ..."
    wget https://download.pytorch.org/libtorch/cpu/libtorch-shared-with-deps-1.0.1.zip 
    if [ $? -eq 0 ]; then        echo "下载成功，正在重命名文件 ..."   
        mv libtorch-shared-with-deps-1.0.1.zip libtorch.zip
        echo "正在解压libtorch ..."
        unzip -q libtorch.zip -d .
        echo "正在删除压缩包文件 ..."
        rm libtorch.zip
        cd ../
    else echo "libtorch下载失败"
    fi
else
    echo "libtorch文件夹已存在，跳过下载和解压步骤。"
fi








