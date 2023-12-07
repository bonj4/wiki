 1. install g++: `sudo apt install build-essential`
 2. install pybind : `pip install pybind11`
 3. install numpy : `pip install numpy`
 4. install Opengl: `pip install PyOpenGL PyOpenGL_accelerate` (extra_url:https://pyopengl.sourceforge.net/)
 5. install Glew: `sudo apt-get install libglew-dev`
 6. install cmake : `sudo apt-get install cmake`
 7. install FFMPEG: `sudo apt-get install ffmpeg libavcodec-dev libavutil-dev libavformat-dev libswscale-dev && sudo apt-get install libdc1394-22-dev libraw1394-dev && sudo apt-get install libjpeg-dev libpng12-dev libtiff5-dev libopenexr-dev`
 8. install eigen : `sudo apt install libeigen3-dev`
 9. clone repo : `git clone ``https://github.com/uoip/pangolin.git`
10. `cd pangolin`
11. `mkdir build`
12. `cd build`
13. cmake:  `cmake -DBUILD_PANGOLIN_FFMPEG=OFF -DPYBIND11_PYTHON_VERSION=3.8 ..`
14. `make -j8`
15. `cd ..`
16. `python setup.py install`
17. Troubleshoot:

    `def run(self):`\
    ` install_dir = get_python_lib()`\
    \
    ` lib_file = glob.glob(__library_file__)`\
    ` # assert len(lib_file) == 1 and len(install_dirs) >= 1`\
    ` assert len(lib_file) == 1 and len(install_dir) >= 1`\
    \
    \
    ` # print('copying {} -> {}'.format(lib_file[0], install_dirs[0]))`\
    ` print('copying {} -> {}'.format(lib_file[0], install_dir[0]))`\
    \
     `shutil.copy(lib_file[0], install_dir)`