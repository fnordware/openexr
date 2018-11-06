if exist ..\..\..\..\IlmImf\b44ExpLogTable.h goto dwaLut

@cl /nologo /GR /EHsc /I..\..\..\..\..\IlmBase\Half ..\..\..\..\IlmImf\b44ExpLogTable.cpp /MDd /Feb44ExpLogTable.exe /link ..\..\..\..\..\IlmBase\vc\vc12\IlmBase\Win32\Debug\Half.lib
.\b44ExpLogTable.exe > ..\..\..\..\IlmImf\b44ExpLogTable.h
del .\b44ExpLogTable.obj .\b44ExpLogTable.exe

:dwaLut

if exist ..\..\..\..\IlmImf\dwaLookups.h goto theEnd

@cl /nologo /GR /EHsc /I..\..\..\..\IlmImf /I..\..\..\..\config.windows /I..\..\..\..\..\IlmBase\Half /I..\..\..\..\..\IlmBase\Imath /I..\..\..\..\..\IlmBase\Iex /I..\..\..\..\..\IlmBase\IlmThread /I..\..\..\..\..\IlmBase\config.windows ..\..\..\..\IlmImf\dwaLookups.cpp /MDd /FedwaLookups.exe /link ..\..\..\..\..\IlmBase\vc\vc12\IlmBase\Win32\Debug\Half.lib /link ..\..\..\..\..\IlmBase\vc\vc12\IlmBase\Win32\Debug\IlmThread.lib /link ..\..\..\..\..\IlmBase\vc\vc12\IlmBase\Win32\Debug\Iex.lib
echo "Building DWA LUTs...this could take a while..."
.\dwaLookups.exe > ..\..\..\..\IlmImf\dwaLookups.h
del .\dwaLookups.obj .\dwaLookups.exe

:theEnd
