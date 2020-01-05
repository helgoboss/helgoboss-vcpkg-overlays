include(vcpkg_common_functions)
vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO helgoboss/helgoboss-learn
    REF 2f0b024664ab33f549ad027a4b49a5bed8522b1f
    SHA512 3be66aa10ee7e2cbc2890d6712996cd3b72124c63443bdfe8a371f8205e02b12be2a5c732bd3eba182da57dbb5126aa5c721309fbd8afddb4be8a5ea32f22c01
    HEAD_REF master
)
vcpkg_configure_cmake(
    SOURCE_PATH ${SOURCE_PATH}
    OPTIONS -DBUILD_TESTING=OFF
)
vcpkg_install_cmake()
vcpkg_fixup_cmake_targets(CONFIG_PATH lib/cmake/helgoboss-learn)
file(REMOVE_RECURSE ${CURRENT_PACKAGES_DIR}/debug/include)
file(INSTALL ${SOURCE_PATH}/LICENSE.md DESTINATION ${CURRENT_PACKAGES_DIR}/share/${PORT} RENAME copyright)