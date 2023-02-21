function(add_gtest LINK_LIBRARIES)
    ENABLE_TESTING()
    FIND_PACKAGE(GTest REQUIRED)

    SET(TARGET test)
    ADD_EXECUTABLE(${TARGET})
    FILE(GLOB_RECURSE  _srcs CONFIGURE_DEPENDS "${CMAKE_CURRENT_SOURCE_DIR}/*.c*")

    TARGET_SOURCES(${TARGET} PUBLIC ${_srcs})
    TARGET_LINK_LIBRARIES(${TARGET} PUBLIC ${PROJECT_NAME} gtest gmock)
    TARGET_INCLUDE_DIRECTORIES(${TARGET} PUBLIC ${CMAKE_SOURCE_DIR})
    TARGET_COMPILE_DEFINITIONS(${TARGET} PUBLIC _GTEST)

    include(GoogleTest)
    gtest_discover_tests(${TARGET})
endfunction()
