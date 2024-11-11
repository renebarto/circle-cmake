message(STATUS "\n**********************************************************************************\n")
message(STATUS "\n## In directory: ${CMAKE_CURRENT_SOURCE_DIR}")

if (PLATFORM_HOST_WINDOWS)
set(CONVERTTOOL_PATH ${OUTPUT_BASE_DIR}/${CONFIG_DIR}/bin/converttool.exe CACHE FILEPATH "Converttool" FORCE)
set(CFLASHY_PATH ${OUTPUT_BASE_DIR}/${CONFIG_DIR}/bin/cflashy.exe CACHE FILEPATH "Cflashy" FORCE)
else()
set(CONVERTTOOL_PATH ${OUTPUT_BASE_DIR}/${CONFIG_DIR}/bin/converttool CACHE FILEPATH "Converttool" FORCE)
set(CFLASHY_PATH ${OUTPUT_BASE_DIR}/${CONFIG_DIR}/bin/cflashy CACHE FILEPATH "Cflashy" FORCE)
endif()
add_custom_command(
    OUTPUT ${CONVERTTOOL_PATH}
    COMMAND ${HOST_GCC} -o ${CONVERTTOOL_PATH} ${CMAKE_CURRENT_SOURCE_DIR}/converttool.c
    WORKING_DIRECTORY ${MinGW_DIR}
)

add_custom_target(converttool ALL DEPENDS
    ${CONVERTTOOL_PATH}
    )

add_custom_command(
    OUTPUT ${CFLASHY_PATH}
    COMMAND ${HOST_GCC} -o ${CFLASHY_PATH} ${CMAKE_CURRENT_SOURCE_DIR}/cflashy.c
    WORKING_DIRECTORY ${MinGW_DIR}
)

add_custom_target(cflashy ALL DEPENDS
    ${CFLASHY_PATH}
    )

