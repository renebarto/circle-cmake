message(STATUS "\n**********************************************************************************\n")
message(STATUS "\n## In directory: ${CMAKE_CURRENT_SOURCE_DIR}")

project(circle
    DESCRIPTION "Circle library"
    LANGUAGES CXX ASM)

set(PROJECT_TARGET_NAME ${PROJECT_NAME})

set(PROJECT_COMPILE_DEFINITIONS_CXX_PRIVATE ${COMPILE_DEFINITIONS_C})
set(PROJECT_COMPILE_DEFINITIONS_CXX_PUBLIC )
set(PROJECT_COMPILE_DEFINITIONS_ASM_PRIVATE ${COMPILE_DEFINITIONS_ASM})
set(PROJECT_COMPILE_OPTIONS_CXX_PRIVATE ${COMPILE_OPTIONS_CXX})
set(PROJECT_COMPILE_OPTIONS_CXX_PUBLIC )
set(PROJECT_COMPILE_OPTIONS_ASM_PRIVATE ${COMPILE_OPTIONS_ASM})
set(PROJECT_INCLUDE_DIRS_PRIVATE )
set(PROJECT_INCLUDE_DIRS_PUBLIC ${CMAKE_SOURCE_DIR}/include)

set(PROJECT_LINK_OPTIONS ${LINKER_OPTIONS})

set(PROJECT_DEPENDENCIES
    )

set(PROJECT_LIBS
    ${LINKER_LIBRARIES}
    ${PROJECT_DEPENDENCIES}
    )

set(PROJECT_SOURCES
    ${CMAKE_CURRENT_SOURCE_DIR}/2dgraphics.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/actled.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/alloc.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/assert.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/bcmframebuffer.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/bcmmailbox.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/bcmpropertytags.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/bcmwatchdog.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/chargenerator.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/chainboot.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/classallocator.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/cputhrottle.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/debug.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/delayloop.S
    ${CMAKE_CURRENT_SOURCE_DIR}/device.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/devicenameservice.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/dmachannel.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/heapallocator.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/koptions.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/logger.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/macaddress.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/machineinfo.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/multicore.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/netdevice.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/new.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/nulldevice.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/numberpool.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/pageallocator.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/ptrarray.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/ptrlist.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/ptrlistfiq.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/qemu.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/screen.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/serial.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/setjmp.S
    ${CMAKE_CURRENT_SOURCE_DIR}/spinlock.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/string.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/sysinit.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/time.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/timer.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/tracer.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/util.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/util_fast.S
    ${CMAKE_CURRENT_SOURCE_DIR}/virtualgpiopin.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/writebuffer.cpp
    )
if (AARCH EQUAL 32)
message(STATUS "Performing 32 bit build")
list(APPEND PROJECT_SOURCES
    ${CMAKE_CURRENT_SOURCE_DIR}/cache-v7.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/exceptionhandler.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/exceptionstub.S
    ${CMAKE_CURRENT_SOURCE_DIR}/memory.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/pagetable.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/startup.S
    ${CMAKE_CURRENT_SOURCE_DIR}/synchronize.cpp
    )
if (STDLIB_SUPPORT EQUAL 0)
list(APPEND PROJECT_SOURCES
    ${CMAKE_CURRENT_SOURCE_DIR}/libhelper.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/libstub.cpp
    )
endif()
elseif(AARCH EQUAL 64)
message(STATUS "Performing 64 bit build")
list(APPEND PROJECT_SOURCES
    ${CMAKE_CURRENT_SOURCE_DIR}/exceptionhandler64.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/exceptionstub64.S
    ${CMAKE_CURRENT_SOURCE_DIR}/memory64.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/startup64.S
    ${CMAKE_CURRENT_SOURCE_DIR}/synchronize64.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/translationtable64.cpp
    )
else()
message(FATAL_ERROR "Invalid architecture specified")
endif()
if (RASPPI EQUAL 3)
list(APPEND PROJECT_SOURCES
    ${CMAKE_CURRENT_SOURCE_DIR}/bcmrandom.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/interrupt.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/mphi.cpp
    )
else()
list(APPEND PROJECT_SOURCES
    ${CMAKE_CURRENT_SOURCE_DIR}/bcmpciehostbridge.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/bcmrandom200.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/interruptgic.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/dma4channel.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/devicetreeblob.cpp
    )
endif()

if (RASPPI EQUAL 4)
list(APPEND PROJECT_SOURCES
    ${CMAKE_CURRENT_SOURCE_DIR}/bcm54213.cpp
    )
endif()

if (NOT RASPPI EQUAL 5)
list(APPEND PROJECT_SOURCES
    ${CMAKE_CURRENT_SOURCE_DIR}/gpioclock.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/gpiomanager.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/gpiopin.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/gpiopinfiq.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/i2cmaster.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/i2cmasterirq.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/i2cslave.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/pwmoutput.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/smimaster.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/spimaster.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/spimasteraux.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/spimasterdma.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/usertimer.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/latencytester.cpp
    )
else()
list(APPEND PROJECT_SOURCES
    ${CMAKE_CURRENT_SOURCE_DIR}/southbridge.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/dmachannel-rp1.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/gpiomanager2712.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/gpiopin2712.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/gpioclock-rp1.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/pwmoutput-rp1.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/i2cmaster-rp1.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/spimaster-rp1.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/spimasterdma-rp1.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/macb.cpp
    )
endif()

if (NOT STDLIB_SUPPORT EQUAL 3)
list(APPEND PROJECT_SOURCES
    ${CMAKE_CURRENT_SOURCE_DIR}/purecall.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/cxa_guard.cpp
    )
endif()

set(PROJECT_INCLUDES_PUBLIC
    ${CMAKE_SOURCE_DIR}/include/assert.h
    ${CMAKE_SOURCE_DIR}/include/circle/2dgraphics.h
    ${CMAKE_SOURCE_DIR}/include/circle/actled.h
    ${CMAKE_SOURCE_DIR}/include/circle/alloc.h
    ${CMAKE_SOURCE_DIR}/include/circle/bcmframebuffer.h
    ${CMAKE_SOURCE_DIR}/include/circle/bcmmailbox.h
    ${CMAKE_SOURCE_DIR}/include/circle/bcmpropertytags.h
    ${CMAKE_SOURCE_DIR}/include/circle/bcmwatchdog.h
    ${CMAKE_SOURCE_DIR}/include/circle/chainboot.h
    ${CMAKE_SOURCE_DIR}/include/circle/chargenerator.h
    ${CMAKE_SOURCE_DIR}/include/circle/classallocator.h
    ${CMAKE_SOURCE_DIR}/include/circle/cputhrottle.h
    ${CMAKE_SOURCE_DIR}/include/circle/debug.h
    ${CMAKE_SOURCE_DIR}/include/circle/device.h
    ${CMAKE_SOURCE_DIR}/include/circle/devicenameservice.h
    ${CMAKE_SOURCE_DIR}/include/circle/dmachannel.h
    ${CMAKE_SOURCE_DIR}/include/circle/heapallocator.h
    ${CMAKE_SOURCE_DIR}/include/circle/koptions.h
    ${CMAKE_SOURCE_DIR}/include/circle/logger.h
    ${CMAKE_SOURCE_DIR}/include/circle/macaddress.h
    ${CMAKE_SOURCE_DIR}/include/circle/machineinfo.h
    ${CMAKE_SOURCE_DIR}/include/circle/multicore.h
    ${CMAKE_SOURCE_DIR}/include/circle/netdevice.h
    ${CMAKE_SOURCE_DIR}/include/circle/new.h
    ${CMAKE_SOURCE_DIR}/include/circle/nulldevice.h
    ${CMAKE_SOURCE_DIR}/include/circle/numberpool.h
    ${CMAKE_SOURCE_DIR}/include/circle/pageallocator.h
    ${CMAKE_SOURCE_DIR}/include/circle/ptrarray.h
    ${CMAKE_SOURCE_DIR}/include/circle/ptrlist.h
    ${CMAKE_SOURCE_DIR}/include/circle/ptrlistfiq.h
    ${CMAKE_SOURCE_DIR}/include/circle/qemu.h
    ${CMAKE_SOURCE_DIR}/include/circle/screen.h
    ${CMAKE_SOURCE_DIR}/include/circle/serial.h
    ${CMAKE_SOURCE_DIR}/include/circle/setjmp.h
    ${CMAKE_SOURCE_DIR}/include/circle/spinlock.h
    ${CMAKE_SOURCE_DIR}/include/circle/string.h
    ${CMAKE_SOURCE_DIR}/include/circle/time.h
    ${CMAKE_SOURCE_DIR}/include/circle/timer.h
    ${CMAKE_SOURCE_DIR}/include/circle/tracer.h
    ${CMAKE_SOURCE_DIR}/include/circle/util.h
    ${CMAKE_SOURCE_DIR}/include/circle/virtualgpiopin.h
    ${CMAKE_SOURCE_DIR}/include/circle/writebuffer.h
    )
set(PROJECT_INCLUDES_PRIVATE )

if (CMAKE_VERBOSE_MAKEFILE)
    display_list("Package                           : " ${PROJECT_NAME} )
    display_list("Package description               : " ${PROJECT_DESCRIPTION} )
    display_list("Defines C - public                : " ${PROJECT_COMPILE_DEFINITIONS_C_PUBLIC} )
    display_list("Defines C - private               : " ${PROJECT_COMPILE_DEFINITIONS_C_PRIVATE} )
    display_list("Defines C++ - public              : " ${PROJECT_COMPILE_DEFINITIONS_CXX_PUBLIC} )
    display_list("Defines C++ - private             : " ${PROJECT_COMPILE_DEFINITIONS_CXX_PRIVATE} )
    display_list("Defines ASM - private             : " ${PROJECT_COMPILE_DEFINITIONS_ASM_PRIVATE} )
    display_list("Compiler options C - public       : " ${PROJECT_COMPILE_OPTIONS_C_PUBLIC} )
    display_list("Compiler options C - private      : " ${PROJECT_COMPILE_OPTIONS_C_PRIVATE} )
    display_list("Compiler options C++ - public     : " ${PROJECT_COMPILE_OPTIONS_CXX_PUBLIC} )
    display_list("Compiler options C++ - private    : " ${PROJECT_COMPILE_OPTIONS_CXX_PRIVATE} )
    display_list("Compiler options ASM - private    : " ${PROJECT_COMPILE_OPTIONS_ASM_PRIVATE} )
    display_list("Include dirs - public             : " ${PROJECT_INCLUDE_DIRS_PUBLIC} )
    display_list("Include dirs - private            : " ${PROJECT_INCLUDE_DIRS_PRIVATE} )
    display_list("Linker options                    : " ${PROJECT_LINK_OPTIONS} )
    display_list("Dependencies                      : " ${PROJECT_DEPENDENCIES} )
    display_list("Link libs                         : " ${PROJECT_LIBS} )
    display_list("Source files                      : " ${PROJECT_SOURCES} )
    display_list("Include files - public            : " ${PROJECT_INCLUDES_PUBLIC} )
    display_list("Include files - private           : " ${PROJECT_INCLUDES_PRIVATE} )
endif()

add_library(${PROJECT_NAME} STATIC ${PROJECT_SOURCES} ${PROJECT_INCLUDES_PUBLIC} ${PROJECT_INCLUDES_PRIVATE})
target_link_libraries(${PROJECT_NAME} ${PROJECT_LIBS})
target_include_directories(${PROJECT_NAME} PRIVATE ${PROJECT_INCLUDE_DIRS_PRIVATE})
target_include_directories(${PROJECT_NAME} PUBLIC  ${PROJECT_INCLUDE_DIRS_PUBLIC})
target_compile_definitions(${PROJECT_NAME} PRIVATE
    $<$<COMPILE_LANGUAGE:C>:${PROJECT_COMPILE_DEFINITIONS_C_PRIVATE}>
    $<$<COMPILE_LANGUAGE:CXX>:${PROJECT_COMPILE_DEFINITIONS_CXX_PRIVATE}>
    $<$<COMPILE_LANGUAGE:ASM>:${PROJECT_COMPILE_DEFINITIONS_ASM_PRIVATE}>
    )
target_compile_definitions(${PROJECT_NAME} PUBLIC
    $<$<COMPILE_LANGUAGE:C>:${PROJECT_COMPILE_DEFINITIONS_C_PUBLIC}>
    $<$<COMPILE_LANGUAGE:CXX>:${PROJECT_COMPILE_DEFINITIONS_CXX_PUBLIC}>
    $<$<COMPILE_LANGUAGE:ASM>:${PROJECT_COMPILE_DEFINITIONS_ASM_PUBLIC}>
    )
target_compile_options(${PROJECT_NAME} PRIVATE
    $<$<COMPILE_LANGUAGE:C>:${PROJECT_COMPILE_OPTIONS_C_PRIVATE}>
    $<$<COMPILE_LANGUAGE:CXX>:${PROJECT_COMPILE_OPTIONS_CXX_PRIVATE}>
    $<$<COMPILE_LANGUAGE:ASM>:${PROJECT_COMPILE_OPTIONS_ASM_PRIVATE}>
    )
target_compile_options(${PROJECT_NAME} PUBLIC
    $<$<COMPILE_LANGUAGE:C>:${PROJECT_COMPILE_OPTIONS_C_PUBLIC}>
    $<$<COMPILE_LANGUAGE:CXX>:${PROJECT_COMPILE_OPTIONS_CXX_PUBLIC}>
    $<$<COMPILE_LANGUAGE:ASM>:${PROJECT_COMPILE_OPTIONS_ASM_PUBLIC}>
    )

set_property(TARGET ${PROJECT_NAME} PROPERTY CXX_STANDARD ${SUPPORTED_CPP_STANDARD})

list_to_string(PROJECT_LINK_OPTIONS PROJECT_LINK_OPTIONS_STRING)
if (NOT "${PROJECT_LINK_OPTIONS_STRING}" STREQUAL "")
    set_target_properties(${PROJECT_NAME} PROPERTIES LINK_FLAGS "${PROJECT_LINK_OPTIONS_STRING}")
endif()

link_directories(${LINK_DIRECTORIES})
set_target_properties(${PROJECT_NAME} PROPERTIES OUTPUT_NAME ${PROJECT_TARGET_NAME})
set_target_properties(${PROJECT_NAME} PROPERTIES ARCHIVE_OUTPUT_DIRECTORY ${OUTPUT_LIB_DIR})

show_target_properties(${PROJECT_NAME})

add_subdirectory(fs)
add_subdirectory(input)
add_subdirectory(net)
add_subdirectory(sched)
add_subdirectory(sound)
add_subdirectory(usb)
