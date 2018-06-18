; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Setup]
AppName={reg:HKLM\Software\RLECViewer,AppName|RLECViewer}
AppVerName={reg:HKLM\Software\RLECViewer,AppVerName|RLECViewer}
AppPublisher={reg:HKLM\Software\RLECViewer,AppPublisher|RioLee}


DefaultDirName={reg:HKLM\Software\RLECViewer,DefaultDirName|{pf}\RLECViewer}
DefaultGroupName={reg:HKLM\Software\RLECViewer,DefaultGroupName|RLECViewer}
Compression=lzma
SolidCompression=yes
OutputDir=Product
OutputBaseFilename=RLECViewer

UsePreviousAppDir=no
UsePreviousGroup=no
UsePreviousLanguage=no

AllowCancelDuringInstall=no

AlwaysRestart=yes
;UninstallRestartComputer=yes

[Registry]
Root: HKLM; Subkey: "Software\RLECViewer"; ValueType: string; ValueName: "DefaultDirName"; ValueData: "{app}"; Flags: uninsdeletekey

Root: HKLM; Subkey: "SYSTEM\CurrentControlSet\Services\dpmemio"; ValueType: string; ValueName: "DisplayName"; ValueData: "Direct Physical Memory and IO access Driver"; Flags: uninsdeletekey
Root: HKLM; Subkey: "SYSTEM\CurrentControlSet\Services\dpmemio"; ValueType: dword; ValueName: "ErrorControl"; ValueData: "00000001"; Flags: uninsdeletekey
Root: HKLM; Subkey: "SYSTEM\CurrentControlSet\Services\dpmemio"; ValueType: string; ValueName: "ImagePath"; ValueData: "\SystemRoot\Syswow64\drivers\dpmemio.sys"; Flags: uninsdeletekey
Root: HKLM; Subkey: "SYSTEM\CurrentControlSet\Services\dpmemio"; ValueType: dword; ValueName: "Start"; ValueData: "00000002"; Flags: uninsdeletekey
Root: HKLM; Subkey: "SYSTEM\CurrentControlSet\Services\dpmemio"; ValueType: dword; ValueName: "Type"; ValueData: "00000001"; Flags: uninsdeletekey

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}";

[Files]
Source: "..\bin(Release)\RLECViewer.exe"; DestDir: "{app}\"; Flags: ignoreversion restartreplace uninsrestartdelete
Source: "..\bin(Release)\ecview.dll"; DestDir: "{app}\"; Flags: ignoreversion restartreplace uninsrestartdelete
Source: "..\bin(Release)\dpmemio.dll"; DestDir: "{app}\"; Flags: ignoreversion restartreplace uninsrestartdelete
Source: "..\bin(Release)\dpmemio.sys"; DestDir: "{win}\Syswow64\drivers\"; Flags: ignoreversion restartreplace uninsrestartdelete
Source: "..\bin(Release)\NTPortDrvSetup.exe"; DestDir: "{app}\"; Flags: ignoreversion
Source: "..\bin(Release)\ClevoEcInfo.dll"; DestDir: "{app}\"; Flags: ignoreversion restartreplace uninsrestartdelete

; NOTE: Don't use "Flags: ignoreversion" on any shared system files


[Icons]
Name: "{group}\RLECViewer"; Filename: "{app}\RLECViewer.exe"
Name: "{userdesktop}\RLECViewer"; Filename: "{app}\RLECViewer.exe"; Tasks: desktopicon
Name: "{group}\{cm:UninstallProgram,RLECViewer}"; Filename: "{uninstallexe}"


[Run]
;Filename: "{win}\regedit.exe";Parameters: " /s ""{app}\dpmemio.reg"""