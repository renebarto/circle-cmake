message(STATUS "\n**********************************************************************************\n")
message(STATUS "\n## In directory: ${CMAKE_CURRENT_SOURCE_DIR}")

project(net
    DESCRIPTION "Circle net library"
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
    ${CMAKE_CURRENT_SOURCE_DIR}/netsubsystem.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/nettask.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/netsocket.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/socket.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/transportlayer.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/networklayer.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/linklayer.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/netdevlayer.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/phytask.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/arphandler.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/icmphandler.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/routecache.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/netconnection.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/udpconnection.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/tcpconnection.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/retransmissionqueue.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/retranstimeoutcalc.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/tcprejector.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/netconfig.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/ipaddress.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/netqueue.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/checksumcalculator.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/dnsclient.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/ntpclient.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/mqttclient.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/mqttsendpacket.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/mqttreceivepacket.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/dhcpclient.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/ntpdaemon.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/httpdaemon.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/httpclient.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/tftpdaemon.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/syslogdaemon.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/mdnspublisher.cpp
    )

set(PROJECT_INCLUDES_PUBLIC
    ${CMAKE_SOURCE_DIR}/include/circle/net/arphandler.h
    ${CMAKE_SOURCE_DIR}/include/circle/net/checksumcalculator.h
    ${CMAKE_SOURCE_DIR}/include/circle/net/dhcpclient.h
    ${CMAKE_SOURCE_DIR}/include/circle/net/dnsclient.h
    ${CMAKE_SOURCE_DIR}/include/circle/net/http.h
    ${CMAKE_SOURCE_DIR}/include/circle/net/httpclient.h
    ${CMAKE_SOURCE_DIR}/include/circle/net/httpdaemon.h
    ${CMAKE_SOURCE_DIR}/include/circle/net/icmphandler.h
    ${CMAKE_SOURCE_DIR}/include/circle/net/in.h
    ${CMAKE_SOURCE_DIR}/include/circle/net/ipaddress.h
    ${CMAKE_SOURCE_DIR}/include/circle/net/linklayer.h
    ${CMAKE_SOURCE_DIR}/include/circle/net/mdnspublisher.h
    ${CMAKE_SOURCE_DIR}/include/circle/net/mqtt.h
    ${CMAKE_SOURCE_DIR}/include/circle/net/mqttclient.h
    ${CMAKE_SOURCE_DIR}/include/circle/net/mqttreceivepacket.h
    ${CMAKE_SOURCE_DIR}/include/circle/net/mqttsendpacket.h
    ${CMAKE_SOURCE_DIR}/include/circle/net/netconfig.h
    ${CMAKE_SOURCE_DIR}/include/circle/net/netconnection.h
    ${CMAKE_SOURCE_DIR}/include/circle/net/netdevlayer.h
    ${CMAKE_SOURCE_DIR}/include/circle/net/netqueue.h
    ${CMAKE_SOURCE_DIR}/include/circle/net/netsubsystem.h
    ${CMAKE_SOURCE_DIR}/include/circle/net/netsocket.h
    ${CMAKE_SOURCE_DIR}/include/circle/net/nettask.h
    ${CMAKE_SOURCE_DIR}/include/circle/net/networklayer.h
    ${CMAKE_SOURCE_DIR}/include/circle/net/ntpclient.h
    ${CMAKE_SOURCE_DIR}/include/circle/net/ntpdaemon.h
    ${CMAKE_SOURCE_DIR}/include/circle/net/phytask.h
    ${CMAKE_SOURCE_DIR}/include/circle/net/retransmissionqueue.h
    ${CMAKE_SOURCE_DIR}/include/circle/net/retranstimeoutcalc.h
    ${CMAKE_SOURCE_DIR}/include/circle/net/routecache.h
    ${CMAKE_SOURCE_DIR}/include/circle/net/socket.h
    ${CMAKE_SOURCE_DIR}/include/circle/net/syslogdaemon.h
    ${CMAKE_SOURCE_DIR}/include/circle/net/tcpconnection.h
    ${CMAKE_SOURCE_DIR}/include/circle/net/tcprejector.h
    ${CMAKE_SOURCE_DIR}/include/circle/net/tftpdaemon.h
    ${CMAKE_SOURCE_DIR}/include/circle/net/transportlayer.h
    ${CMAKE_SOURCE_DIR}/include/circle/net/udpconnection.h
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
