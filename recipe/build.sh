tar Jxf ${PKG_NAME}-${PKG_VERSION}.txz
cd ${PKG_NAME}-${PKG_VERSION}
mkdir build && cd build
cmake .. -DCMAKE_INSTALL_PREFIX=${PREFIX} -DCMAKE_INSTALL_LIBDIR=${PREFIX}/lib -DCMAKE_BUILD_TYPE=Release -DKIM_API_SYSTEM_MODEL_DRIVERS_DIR=${PREFIX}/lib/openkim-models/model-drivers -DKIM_API_SYSTEM_PORTABLE_MODELS_DIR=${PREFIX}/lib/openkim-models/portable-models -DKIM_API_SYSTEM_SIMULATOR_MODELS_DIR=${PREFIX}/lib/openkim-models/simulator-models
make
make install
