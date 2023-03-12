set(base_SRCS
   Timestamp.cc
  ) # 设置一个变量

add_library(muduo_base ${base_SRCS}) # 依赖base_SRCS生成muduo_base这个库
target_link_libraries(muduo_base pthread rt) # muduo_base这个库需要连接一些库：pthread、rt 

install(TARGETS muduo_base DESTINATION lib)

