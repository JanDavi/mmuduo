# test AtomicIntegerT
add_executable(atomic_unittest Atomic_unittest.cc)
target_link_libraries(atomic_unittest muduo_base)
add_test(NAME atomic_unittest COMMAND atomic_unittest)

# test Timestamp
add_executable(timestamp_unittest Timestamp_unittest.cc)
target_link_libraries(timestamp_unittest muduo_base)
add_test(NAME timestamp_unittest COMMAND timestamp_unittest)

