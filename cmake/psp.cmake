# Default CMake Setup. Used for PSP builds.

set(lib_base /usr/local/pspdev)
set(sdl_root ${lib_base}/include/SDL)

include_directories("${sdl_root}")

link_libraries(cannonball 
    SDL
)

# Linking
link_directories(
    "${sdl_root}/lib"
)

add_definitions(-DPSP)
 
# Location for Cannonball to create save files
# Used to auto-generate setup.hpp with various file paths
set(xml_directory ./)
set(sdl_flags "SDL_SWSURFACE")
