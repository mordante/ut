if (CMAKE_CXX_COMPILER_ID MATCHES "Clang" AND CMAKE_CXX_SIMULATE_ID MATCHES "MSVC")
    add_compile_options(
            /W4
            /WX
            )
elseif (CMAKE_CXX_COMPILER_ID MATCHES "GNU|Clang")
    add_compile_options(
            -Wall
            -Wextra
            -Wpedantic
            -Werror
            -Wshadow
            )

    if (CMAKE_CXX_COMPILER_ID STREQUAL "Clang" AND CMAKE_CXX_COMPILER_VERSION GREATER_EQUAL 10.0)
        add_compile_options(
                -Wdeprecated-copy-dtor
                -Wnewline-eof
                )
        endif ()
elseif (CMAKE_CXX_COMPILER_ID STREQUAL "MSVC")
    string(REGEX REPLACE " /W[0-4]" "" CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS}")
    add_compile_options(
            /W4
            /WX
            )
endif ()
