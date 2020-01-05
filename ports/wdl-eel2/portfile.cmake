include(vcpkg_common_functions)
vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO helgoboss/WDL
    REF a04e9dfe4f1008351fad3bfa9018347eafd69e05
    SHA512 7c2ed8c6d35e25a683ca6a93c3d23ce4ab643312ed3432e7f12247a71acaecbfc7d9a261d4094d68e124d85547712f8f881c3794e5ece20114a4ebb94f07a86d
    HEAD_REF feature/partial-cmake-support
)
vcpkg_configure_cmake(
    SOURCE_PATH ${SOURCE_PATH}/WDL/eel2
)
vcpkg_install_cmake()
vcpkg_fixup_cmake_targets(CONFIG_PATH lib/cmake/wdl-eel2)
file(REMOVE_RECURSE ${CURRENT_PACKAGES_DIR}/debug/include)
file(INSTALL ${SOURCE_PATH}/LICENSE DESTINATION ${CURRENT_PACKAGES_DIR}/share/${PORT} RENAME copyright)