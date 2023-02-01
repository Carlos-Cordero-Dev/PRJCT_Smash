@ECHO OFF
del *.obj *.pdb *.ilk *.ini

REM Build all imgui .cc files
cl -I ..\ -I ..\backends -I ..\..\sdl2\SDL2-2.24.2\include /c /EHsc ..\imgui*.cpp ..\backends\imgui_impl_sdl.cpp ..\backends\imgui_impl_sdlrenderer.cpp

REM Combe .obj files into lib file 
lib /out:..\lib\imgui_sdl.lib *.obj /NODEFAULTLIB 

REM Cleanup
del *.obj *.pdb *.ilk *.ini