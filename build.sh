cmake -H. -B_build -DBUILD_TESTS=ON\
|| \
rm -rf _build\
&& \
cmake --build _build \
&& \
cmake --build _build --target test -- ARGS=--verbose\

