include(vcpkg_common_functions)
vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO helgoboss/reaplus
    REF 8cf6e22319674824401d5d25bb3d5de8f28f5cff
    SHA512 0ec83b2ecd8fc0fb961c71daacc73b2aa770df1adbbaea552ff35bf1183b2cda7c94757fca84e72f11296d34a893e93d1dcfe186c5fa85fa8b7a2e562bbbd6e3
    HEAD_REF master
)
vcpkg_configure_cmake(
    SOURCE_PATH ${SOURCE_PATH}
    OPTIONS -DBUILD_TESTING=OFF
)
vcpkg_install_cmake()
vcpkg_fixup_cmake_targets(CONFIG_PATH lib/cmake/reaplus)
file(REMOVE_RECURSE ${CURRENT_PACKAGES_DIR}/debug/include)
file(INSTALL ${SOURCE_PATH}/LICENSE.md DESTINATION ${CURRENT_PACKAGES_DIR}/share/${PORT} RENAME copyright)