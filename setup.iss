; �ű��� Inno Setup �ű��� ���ɣ�
; �йش��� Inno Setup �ű��ļ�����ϸ��������İ����ĵ���

#define MyAppName "tlb-to-chm"
#define MyAppVersion "1.2.0.6"
#define MyAppPublisher "Calf workgroup"
#define MyAppURL "http://calfworkgroup.blog.sohu.com/"
#define MyAppExeName "tlb-to-chm.exe"

[Setup]
; ע: AppId��ֵΪ������ʶ��Ӧ�ó���
; ��ҪΪ������װ����ʹ����ͬ��AppIdֵ��
; (�����µ�GUID����� ����|��IDE������GUID��)
AppId={{C841DEBE-1186-4367-8940-D24DADCE5EB1}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
VersionInfoVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\tlb-to-chm
DefaultGroupName={#MyAppName}
AllowNoIcons=yes
OutputBaseFilename=tlb-to-chm_{#MyAppVersion}_setup
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked; OnlyBelowVersion: 0,6.1
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "tlb-to-chm.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "output.hhp"; DestDir: "{app}"; Flags: ignoreversion
Source: "merge.hhp"; DestDir: "{app}"; Flags: ignoreversion
Source: "merge.hhk"; DestDir: "{app}"; Flags: ignoreversion
Source: "default.htm"; DestDir: "{app}"; Flags: ignoreversion
Source: "config\*"; DestDir: "{app}\config"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "support\PuppyChmCompiler2.dll"; DestDir: "{cf}"; Flags: regserver
Source: "support\hha.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "support\TlbInf32.chm"; DestDir: "{sys}"; Flags:
Source: "support\TLBINF32.DLL"; DestDir: "{sys}"; Flags: regserver
Source: "support\VB6Resizer2.ocx"; DestDir: "{cf}"; Flags: regserver
Source: "support\comdlg32.ocx"; DestDir: "{sys}"; Flags: regserver
; ע��: ��Ҫ���κι���ϵͳ�ļ���ʹ�á�Flags: ignoreversion��

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{cm:ProgramOnTheWeb,{#MyAppName}}"; Filename: "{#MyAppURL}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: quicklaunchicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, "&", "&&")}}"; Flags: nowait postinstall skipifsilent

