include(vcpkg_common_functions)
vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO helgoboss/helgoboss-midi
    REF 14a4b02e521fcba0510e3a21dbbad49355b76691
    SHA512 4c68470fd42dee06a360a78b132d6ce9871d1196390432af8ef27f6b134a9dc6bf031c4642deb5892bfd8daadd922d5c1c86482fb1db213f8090e33f7be07e31
    HEAD_REF master
)
vcpkg_configure_cmake(
    SOURCE_PATH ${SOURCE_PATH}
)
vcpkg_install_cmake()
vcpkg_fixup_cmake_targets(CONFIG_PATH lib/cmake/helgoboss-midi)
file(REMOVE_RECURSE ${CURRENT_PACKAGES_DIR}/debug/include)
file(INSTALL ${SOURCE_PATH}/LICENSE.md DESTINATION ${CURRENT_PACKAGES_DIR}/share/${PORT} RENAME copyright)