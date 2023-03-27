# Tested by cross
# ...
# android: 8.0.0_r51   | ndk: r21d        | sdk: 26
# android: 8.1.0_r81   | ndk: r21d        | sdk: 27
# android: 9.0.0_r1    | ndk: r21d & r25b | sdk: 28
# android: 10.0.0_r47  | ndk: r25b        | sdk: 29
#
# How to choose a different android set: 
#
# > NOTE: host must be x86_64 Linux
#
# 1. select a row from the table below
# 2. Go to `tmp_docker/Dockerfile.<TARGET>`
# 	- Target can be the following:
#     - aarch64-linux-android
#     - armv7-linux-androideabi
#     - i686-linux-android
#     - x86_64-linux-android
# 3. Change the values at the top of the file with the values in the column
# 4. either run `make build` in the root, or `make build-<TARGET>` for a specific one

build: build-aarch64-linux-android build-armv7-linux-androideabi build-i686-linux-android build-x86_64-linux-android

build-aarch64-linux-android:
	cross build --release --target=aarch64-linux-android --package=indy-vdr

build-armv7-linux-androideabi:
	cross build --release --target=armv7-linux-androideabi --package=indy-vdr

build-i686-linux-android:
	cross build --release --target=i686-linux-android --package=indy-vdr

build-x86_64-linux-android:
	cross build --release --target=x86_64-linux-android --package=indy-vdr
