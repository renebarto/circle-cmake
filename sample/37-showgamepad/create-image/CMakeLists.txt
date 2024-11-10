project(${BAREMETAL_EXECUTABLE_TARGET}-image
    DESCRIPTION "Kernel image for ${BAREMETAL_EXECUTABLE_TARGET}")

message(STATUS "\n**********************************************************************************\n")
message(STATUS "\n## In directory: ${CMAKE_CURRENT_SOURCE_DIR}")

message("\n** Setting up ${PROJECT_NAME} **\n")

set(DEPENDENCY ${BAREMETAL_EXECUTABLE_TARGET})
set(IMAGE_NAME ${BAREMETAL_TARGET_KERNEL}.img)

create_image(${PROJECT_NAME} ${IMAGE_NAME} ${DEPENDENCY})
