; Please be aware that this installation script for Inno Setup Compiler uses paths that may not match where you have your repository stored.
; Please adjust the URI:  C:\repo\RTK3-AFP\RyTek3-Application-Framework-Patch\   with where you have the files stored.

#define MyAppName "RyTek3 (Application Framework Patch)"
#define MyAppVersion "1.0.1 (200702)"
#define MyAppPublisher "RWE Softworks, Ryan Walpole Enterprises"
#define MyAppURL "https://github.com/RyanWalpoleEnterprises/RyTek3-AFP"
#define MyAppExeName "afp.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{D2E8847B-8955-493C-9098-C88C5037A2AC}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName=C:\Program Files (x86)\RWE\RyTek\AFP
DisableDirPage=yes
DefaultGroupName=RyTek3
AllowNoIcons=yes
LicenseFile=C:\repo\RTK3-AFP\RyTek3-Application-Framework-Patch\license.rtf
; Uncomment the following line to run in non administrative install mode (install for current user only.)
;PrivilegesRequired=lowest
PrivilegesRequiredOverridesAllowed=commandline
OutputDir=C:\repo\RTK3-AFP\RyTek3-Application-Framework-Patch\INSTALLERS\
OutputBaseFilename=setup
SetupIconFile=C:\repo\RTK3-AFP\RyTek3-Application-Framework-Patch\resx\application.ico
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "C:\repo\RTK3-AFP\RyTek3-Application-Framework-Patch\afp.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\repo\RTK3-AFP\RyTek3-Application-Framework-Patch\RyTek AFP.exe.config"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\repo\RTK3-AFP\RyTek3-Application-Framework-Patch\init.rtk"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\repo\RTK3-AFP\RyTek3-Application-Framework-Patch\patchdata.zip"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\repo\RTK3-AFP\RyTek3-Application-Framework-Patch\lib\RWE.Softworks.ApplicationFrameworkPatch.lxlib"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\repo\RTK3-AFP\RyTek3-Application-Framework-Patch\lib\RWE.Softworks.Windows10EditFrameworkData.lxlib"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\repo\RTK3-AFP\RyTek3-Application-Framework-Patch\resx\afp.ico"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\repo\RTK3-AFP\RyTek3-Application-Framework-Patch\resx\afp.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\repo\RTK3-AFP\RyTek3-Application-Framework-Patch\resx\application.ico"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\repo\RTK3-AFP\RyTek3-Application-Framework-Patch\resx\application.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\repo\RTK3-AFP\RyTek3-Application-Framework-Patch\application.bat";  DestDir: "{app}"; Flags: ignoreversion
Source: "C:\repo\RTK3-AFP\RyTek3-Application-Framework-Patch\testapplication\demo.exe";  DestDir: "{app}\test-application\"; Flags: ignoreversion
Source: "C:\repo\RTK3-AFP\RyTek3-Application-Framework-Patch\testapplication\lib\Microsoft.Windows32.RyTekCore.lxlib";  DestDir: "{app}\test-application\lib"; Flags: ignoreversion
Source: "C:\repo\RTK3-AFP\RyTek3-Application-Framework-Patch\testapplication\lib\Microsoft.Windows64.RyTekCore.lxlib";  DestDir: "{app}\test-application\lib"; Flags: ignoreversion
Source: "C:\repo\RTK3-AFP\RyTek3-Application-Framework-Patch\testapplication\resx\application.ico";  DestDir: "{app}\test-application\resx"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

