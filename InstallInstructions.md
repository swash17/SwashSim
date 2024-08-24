<p align="left"><b><font size="5" color="0000FF">SwashSim Installation Instructions</font></b></p>

Place the installation files (SwashSimInstall.msi and setup.exe) in any folder on your computer and then run 'setup.exe'. These two files can be deleted once the installation is complete. The default installation folder is 'C:\Program Files\SwashWare\SwashSim' but can be changed during the installation process.

SwashSim only runs on the Windows operating system and 64-bit CPU architecture. You also need two Windows supporting files installed on your computer:

* .NET Framework 4.7.2 (or higher)  
* .NET Desktop Runtime 7.0.20 (or higher)

The installation process should give you a warning if you do not have the required versions of these files and give you an option to download and install them from Microsoft's website. But if you have any problem starting the program after installation, this should be the first thing to check. You can check which versions of these files you have installed in the Programs and Features section of the Control Panel. If needed, you can download these files from

* <a href="https://dotnet.microsoft.com/en-us/download/dotnet-framework/thank-you/net472-offline-installer">.NET Framework 4.7.2 download link</a>.

* <a href="https://dotnet.microsoft.com/en-us/download/dotnet/thank-you/runtime-desktop-7.0.20-windows-x64-installer">.NET Desktop Runtime 7.0.20 download link</a>. 

Unless you select a different folder for the downloads, the files will likely be placed in 'C:\Users\username\Downloads' ('username' is your Windows account name). The filenames will be as follows:

* NDP472-KB4054530-x86-x64-AllOS-ENU.exe  
* windowsdesktop-runtime-7.0.20-win-x64.exe

If you run SwashSim and start a new project and get an error message about the program not being able to read the ‘Buick Century 1998.xml’ vehicle file, your Windows user account has a permissions limitation for files in the ‘Program Files’ folder. In this case, try reinstalling in another, such as 'C:\SwashWare\SwashSim'.
