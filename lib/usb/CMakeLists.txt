message(STATUS "\n**********************************************************************************\n")
message(STATUS "\n## In directory: ${CMAKE_CURRENT_SOURCE_DIR}")

project(usb
    DESCRIPTION "Circle USB library"
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
    fs
    input
    )

set(PROJECT_LIBS
    ${LINKER_LIBRARIES}
    ${PROJECT_DEPENDENCIES}
    )

set(PROJECT_SOURCES
    ${CMAKE_CURRENT_SOURCE_DIR}/lan7800.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/smsc951x.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/usbbluetooth.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/usbcdcethernet.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/usbconfigparser.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/usbdevice.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/usbdevicefactory.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/usbendpoint.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/usbfunction.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/usbgamepad.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/usbgamepadps3.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/usbgamepadps4.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/usbgamepadstandard.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/usbgamepadswitchpro.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/usbgamepadxbox360.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/usbgamepadxboxone.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/usbhiddevice.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/usbhostcontroller.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/usbkeyboard.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/usbmassdevice.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/usbmidi.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/usbmidihost.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/usbmouse.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/usbprinter.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/usbrequest.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/usbstandardhub.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/usbstring.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/usbserial.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/usbserialhost.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/usbserialch341.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/usbserialcp210x.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/usbserialpl2303.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/usbserialft231x.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/usbserialcdc.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/usbtouchscreen.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/dwhciregister.cpp
    )
if (RASPPI EQUAL 3)
list(APPEND PROJECT_SOURCES
    ${CMAKE_CURRENT_SOURCE_DIR}/dwhcidevice.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/dwhciframeschednper.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/dwhciframeschednsplit.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/dwhciframeschedper.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/dwhcirootport.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/dwhcixactqueue.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/dwhcicompletionqueue.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/dwhcixferstagedata.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/dwhciframeschediso.cpp
    )
else()
list(APPEND PROJECT_SOURCES
    ${CMAKE_CURRENT_SOURCE_DIR}/xhcicommandmanager.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/xhcidevice.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/xhciendpoint.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/xhcieventmanager.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/xhcimmiospace.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/xhciring.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/xhciroothub.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/xhcirootport.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/xhcisharedmemallocator.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/xhcislotmanager.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/xhciusbdevice.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/usbaudiocontrol.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/usbaudiostreaming.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/usbaudiofunctopology.cpp
    )
endif()

if (RASPPI EQUAL 5)
list(APPEND PROJECT_SOURCES
    ${CMAKE_CURRENT_SOURCE_DIR}/usbsubsystem.cpp
    )
endif()

set(PROJECT_INCLUDES_PUBLIC
    ${CMAKE_SOURCE_DIR}/include/circle/usb/dwhci.h
    ${CMAKE_SOURCE_DIR}/include/circle/usb/dwhciregister.h
    ${CMAKE_SOURCE_DIR}/include/circle/usb/lan7800.h
    ${CMAKE_SOURCE_DIR}/include/circle/usb/smsc951x.h
    ${CMAKE_SOURCE_DIR}/include/circle/usb/usbbluetooth.h
    ${CMAKE_SOURCE_DIR}/include/circle/usb/usbcdcethernet.h
    ${CMAKE_SOURCE_DIR}/include/circle/usb/usbendpoint.h
    ${CMAKE_SOURCE_DIR}/include/circle/usb/usbfunction.h
    ${CMAKE_SOURCE_DIR}/include/circle/usb/usbgamepad.h
    ${CMAKE_SOURCE_DIR}/include/circle/usb/usbgamepadps3.h
    ${CMAKE_SOURCE_DIR}/include/circle/usb/usbgamepadps4.h
    ${CMAKE_SOURCE_DIR}/include/circle/usb/usbgamepadstandard.h
    ${CMAKE_SOURCE_DIR}/include/circle/usb/usbgamepadswitchpro.h
    ${CMAKE_SOURCE_DIR}/include/circle/usb/usbgamepadxbox360.h
    ${CMAKE_SOURCE_DIR}/include/circle/usb/usbgamepadxboxone.h
    ${CMAKE_SOURCE_DIR}/include/circle/usb/usbhiddevice.h
    ${CMAKE_SOURCE_DIR}/include/circle/usb/usbhostcontroller.h
    ${CMAKE_SOURCE_DIR}/include/circle/usb/usbkeyboard.h
    ${CMAKE_SOURCE_DIR}/include/circle/usb/usbmassdevice.h
    ${CMAKE_SOURCE_DIR}/include/circle/usb/usbmidi.h
    ${CMAKE_SOURCE_DIR}/include/circle/usb/usbmidihost.h
    ${CMAKE_SOURCE_DIR}/include/circle/usb/usbmouse.h
    ${CMAKE_SOURCE_DIR}/include/circle/usb/usbprinter.h
    ${CMAKE_SOURCE_DIR}/include/circle/usb/usbrequest.h
    ${CMAKE_SOURCE_DIR}/include/circle/usb/usbserial.h
    ${CMAKE_SOURCE_DIR}/include/circle/usb/usbserialcdc.h
    ${CMAKE_SOURCE_DIR}/include/circle/usb/usbserialch341.h
    ${CMAKE_SOURCE_DIR}/include/circle/usb/usbserialcp210x.h
    ${CMAKE_SOURCE_DIR}/include/circle/usb/usbserialft231x.h
    ${CMAKE_SOURCE_DIR}/include/circle/usb/usbserialhost.h
    ${CMAKE_SOURCE_DIR}/include/circle/usb/usbserialpl2303.h
    ${CMAKE_SOURCE_DIR}/include/circle/usb/usbstandardhub.h
    ${CMAKE_SOURCE_DIR}/include/circle/usb/usbstring.h
    ${CMAKE_SOURCE_DIR}/include/circle/usb/usbtouchscreen.h
    )

if (RASPPI EQUAL 3)
list(APPEND PROJECT_INCLUDES_PUBLIC
    ${CMAKE_SOURCE_DIR}/include/circle/usb/dwhcidevice.h
    ${CMAKE_SOURCE_DIR}/include/circle/usb/dwhciframeschednper.h
    ${CMAKE_SOURCE_DIR}/include/circle/usb/dwhciframeschednsplit.h
    ${CMAKE_SOURCE_DIR}/include/circle/usb/dwhciframeschedper.h
    ${CMAKE_SOURCE_DIR}/include/circle/usb/dwhcirootport.h
    ${CMAKE_SOURCE_DIR}/include/circle/usb/dwhcixactqueue.h
    ${CMAKE_SOURCE_DIR}/include/circle/usb/dwhcicompletionqueue.h
    ${CMAKE_SOURCE_DIR}/include/circle/usb/dwhcixferstagedata.h
    ${CMAKE_SOURCE_DIR}/include/circle/usb/dwhciframeschediso.h
    )
else()
list(APPEND PROJECT_INCLUDES_PUBLIC
    ${CMAKE_SOURCE_DIR}/include/circle/usb/xhci.h
    ${CMAKE_SOURCE_DIR}/include/circle/usb/xhciconfig.h
    ${CMAKE_SOURCE_DIR}/include/circle/usb/xhcicommandmanager.h
    ${CMAKE_SOURCE_DIR}/include/circle/usb/xhcidevice.h
    ${CMAKE_SOURCE_DIR}/include/circle/usb/xhciendpoint.h
    ${CMAKE_SOURCE_DIR}/include/circle/usb/xhcieventmanager.h
    ${CMAKE_SOURCE_DIR}/include/circle/usb/xhcimmiospace.h
    ${CMAKE_SOURCE_DIR}/include/circle/usb/xhciring.h
    ${CMAKE_SOURCE_DIR}/include/circle/usb/xhciroothub.h
    ${CMAKE_SOURCE_DIR}/include/circle/usb/xhcirootport.h
    ${CMAKE_SOURCE_DIR}/include/circle/usb/xhcisharedmemallocator.h
    ${CMAKE_SOURCE_DIR}/include/circle/usb/xhcislotmanager.h
    ${CMAKE_SOURCE_DIR}/include/circle/usb/xhciusbdevice.h
    ${CMAKE_SOURCE_DIR}/include/circle/usb/usb.h
    ${CMAKE_SOURCE_DIR}/include/circle/usb/usbaudio.h
    ${CMAKE_SOURCE_DIR}/include/circle/usb/usbaudiocontrol.h
    ${CMAKE_SOURCE_DIR}/include/circle/usb/usbaudiostreaming.h
    ${CMAKE_SOURCE_DIR}/include/circle/usb/usbaudiofunctopology.h
    ${CMAKE_SOURCE_DIR}/include/circle/usb/usbconfigparser.h
    ${CMAKE_SOURCE_DIR}/include/circle/usb/usbcontroller.h
    ${CMAKE_SOURCE_DIR}/include/circle/usb/usbdevice.h
    ${CMAKE_SOURCE_DIR}/include/circle/usb/usbdevicefactory.h
    ${CMAKE_SOURCE_DIR}/include/circle/usb/usbhcidevice.h
    ${CMAKE_SOURCE_DIR}/include/circle/usb/usbhid.h
    ${CMAKE_SOURCE_DIR}/include/circle/usb/usbhub.h
        )
endif()

if (RASPPI EQUAL 5)
list(APPEND PROJECT_INCLUDES_PUBLIC
    ${CMAKE_SOURCE_DIR}/include/circle/usb/usbsubsystem.h
    )
endif()

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

if (NOT RASPPI EQUAL 5) # RPI 5 not supported (yet)
add_subdirectory(gadget)
endif()