@echo off

cd boost_1_54_0

call bootstrap.bat

REM Visual Studio 2012
b2 --toolset=msvc-11.0 --build-type=minimal --stagedir=stage\x86\ stage

b2 --toolset=msvc-11.0 --build-type=minimal address-model=64 --stagedir=stage\x64\ stage

cd ..
