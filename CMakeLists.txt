cmake_minimum_required(VERSION 2.8)
project( HogTraining )

set( EXECUTABLE_OUTPUT_PATH ${PROJECT_BINARY_DIR}/../bin )

find_package( OpenCV REQUIRED )

add_executable( visual_hog src/visual_hog.cpp )
target_link_libraries( visual_hog ${OpenCV_LIBS} )

add_executable( train_HOG src/train_HOG.cpp )
target_link_libraries( train_HOG ${OpenCV_LIBS} )

add_executable( crop_image src/crop_image.cpp )
target_link_libraries( crop_image ${OpenCV_LIBS} )
