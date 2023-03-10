function(set_compiler_warnings_strict)
    set(STRICT_WARNGINS
        -Wfatal-errors
        -Wall
        -Wextra
        -Wnon-virtual-dtor # warn the user if a class with virtual functions 
                           # has a non-virtual destructor.
        -Wshadow # warn the user if a variable declaration shadows one from a parent context
        -pedantic
        -Wdouble-promotion # warn if float is implicit promoted to double
        -Wconversion # warn on type conversions that may lose data
        -Wsign-conversion # warn on sign conversions
        -Wnull-dereference # warn if a null dereference is detected
        -Wcast-qual # warn on dropping const or volatile qualifiers
        -Wunused # warn on anything being unused
        -Wcast-align # warn for potential performance problem casts
        -Wold-style-cast # warn for c-style casts
        )
    add_compile_options(${STRICT_WARNGINS})
endfunction()

function(set_compiler_warnings_relax)
    set(RELAX_WARNGINS
        -Wfatal-errors
        -Wall
        )
    add_compile_options(${RELAX_WARNGINS})
endfunction()
