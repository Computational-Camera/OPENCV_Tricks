#Flags
QMAKE_CXXFLAGS += -O3 -march=native  -std=c++11 -m64 -ffast-math -Waggressive-loop-optimizations -Wall -fpermissive

#include directory besides system default directory
INCLUDEPATH +=  /usr/local/include/eigen3/
INCLUDEPATH +=  /usr/local/include/opencv4/

#add library search path
LIBS += -L//usr/local/lib

#include library besides system default directory
#direct way or use -L/dir and add -lxx flag
LIBS += ./xxx/lib/libcaffe2.so
#in this case, you also need to 
#export LD_LIBRARY_PATH=/xxxx, when you run the binary
export LD_LIBRARY_PATH=./xxx/lib/:LD_LIBRARY_PATH

#example  cuda
LIBS += -lcudnn -lcuda -lcudart -lcublas -lcurand -lcusolver

#example  ceres
INCLUDEPATH +=  /usr/local/include/eigen3/
INCLUDEPATH +=  /usr/local/include/ceres/
LIBS += -lglog -lgflags -lceres -lcxsparse -lcholmod -lblas -llapack

#example  opengl
LIBS += -lGLU -lGL -lglut -lGLEW  -lglfw3 -lX11 -ldl -lpangolin 

#FFTW3
LIBS += -lfftw3

#example opencv
INCLUDEPATH +=  /usr/local/include/opencv4/
LIBS +=-lopencv_ccalib -lopencv_datasets -lopencv_freetype  -lopencv_calib3d -lopencv_features2d 
-lopencv_flann  -lopencv_videoio -lopencv_imgcodecs -lopencv_photo -lopencv_imgproc 
-lopencv_core -lopencv_dnn -lopencv_highgui -lopencv_cudaimgproc -lopencv_tracking

#example  realsence
INCLUDEPATH +=  /xxx/lib/librealsense/third-party/
LIBS += /xxx/lib/librealsense/build/librealsense2.so

#example halide
LIBS += -lpthread -ldl -lHalide

#others
LIBS +=-lpng -ljpeg -lpthread

#add defines
DEFINES += "__OPENCV_BUILD=1"

#compile large project which has multipile objective files
CONFIG    += object_parallel_to_source
