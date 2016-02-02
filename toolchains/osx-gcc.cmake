include(CMakeForceCompiler)
# the name of the target operating system
SET(CMAKE_SYSTEM_NAME Darwin)

# The libgit2 CMakeFile.txt needs this to be set:
SET(CMAKE_SIZEOF_VOID_P 8)

#set(CMAKE_C_COMPILER_ID Clang)
#set(CMAKE_CXX_COMPILER_ID  Clang)

message(STATUS Compiler.. ${CMAKE_C_COMPILER_ID} ${CMAKE_CXX_COMPILER_ID})

# which compilers to use for C and C++
cmake_force_c_compiler(/home/vagrant/osxcross/target/bin/x86_64-apple-darwin15-gcc GNU)
cmake_force_cxx_compiler(/home/vagrant/osxcross/target/bin/x86_64-apple-darwin15-g++ GNU)
SET(CMAKE_AR /home/vagrant/osxcross/target/bin/x86_64-apple-darwin15-ar CACHE FILEPATH "Archiver")
SET(PKG_CONFIG_EXECUTABLE /home/vagrant/osxcross/target/bin/x86_64h-apple-darwin15-pkg-config)

SET(CMAKE_OSX_SYSROOT /home/vagrant/osxcross/target/SDK/MacOSX10.11.sdk)

# here is the target environment located
#SET(CMAKE_FIND_ROOT_PATH ${CMAKE_OSX_SYSROOT} ${CMAKE_OSX_SYSROOT}/usr/bin)
SET(CMAKE_FIND_ROOT_PATH /home/vagrant/osxcross/target/macports/pkgs/opt/local ${CMAKE_OSX_SYSROOT} ${CMAKE_OSX_SYSROOT}/usr/bin ${CMAKE_OSX_SYSROOT}/usr/lib ${CMAKE_OSX_SYSROOT}/usr)

# adjust the default behaviour of the FIND_XXX() commands:
# search headers and libraries in the target environment, search
# programs in the host environment
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

#set(CMAKE_LIBRARY_PATH ${CMAKE_LIBRARY_PATH} /home/vagrant/osxcross/target/SDK/MacOSX10.11.sdk/usr/lib)
SET(CMAKE_SHARED_LIBRARY_SUFFIX ".dylib")
