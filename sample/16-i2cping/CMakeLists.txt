add_subdirectory(master)
if (NOT RASPPI EQUAL 5)
add_subdirectory(slave)
endif()
