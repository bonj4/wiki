pip install virtualenv

 python3 -m virtualenv pango_env
. pango_env/bin/activate

sudo apt install build-essential
pip install pybind11
pip install numpy
pip install PyOpenGL PyOpenGL_accelerate
sudo apt-get install libglew-dev
sudo apt-get install cmake
sudo apt-get install ffmpeg libavcodec-dev libavutil-dev libavformat-dev libswscale-dev && sudo apt-get install libdc1394-22-dev libraw1394-dev && sudo apt-get install libjpeg-dev libpng12-dev libtiff5-dev libopenexr-dev
sudo apt install libeigen3-dev

git clone https://github.com/uoip/pangolin.git
cd pangolin
mkdir build
cd build
cmake -DBUILD_PANGOLIN_FFMPEG=OFF -DPYBIND11_PYTHON_VERSION=3.8 ..
make -j8
cd ..

sed -i 's/assert len(lib_file) == 1 and len(install_dirs) >= 1/assert len(lib_file) == 1 and len(install_dir) >= 1/' setup.py
sed -i 's|print('\''copying {} -> {}'\''\.format(lib_file[0], install_dirs[0]))|print('\''copying {} -> {}'\''\.format(lib_file[0], install_dir[0]))|' setup.py

python setup.py install

cd python/examples
python HelloPangolin.py

cd ../../../