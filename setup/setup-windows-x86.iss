#define MyAppName "Wexflow"
#define MyAppVersion "5.8"
#define MyAppPublisher "Akram El Assas"
#define MyAppPublisherURL "https://wexflow.github.io/"
#define MyAppExeName "Wexflow.Clients.Manager.exe"

[Setup]
;SignTool=signtool
PrivilegesRequired=admin
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{36E7859C-FD7F-47E1-91C6-41B5F522E2F7}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppPublisherURL}
DefaultDirName={pf}\{#MyAppName}
DisableProgramGroupPage=yes
OutputDir=.
OutputBaseFilename=wexflow-{#MyAppVersion}-windows-x86
SetupIconFile="..\src\net\Wexflow.Clients.Manager\Wexflow.ico"
Compression=lzma
SolidCompression=yes
LicenseFile="..\LICENSE.txt"

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
;Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked; OnlyBelowVersion: 0,6.1

[Types]
Name: "full"; Description: "Full installation"
Name: "custom"; Description: "Custom installation"; Flags: iscustom

[Components]
Name: "program"; Description: "Program Files"; Types: full custom; Flags: fixed
Name: "samples"; Description: "Workflow samples"; Types: full

[Files]
; Wexflow server
Source: "..\src\net\Wexflow.Server\bin\Release\Wexflow.Server.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Server\bin\Release\Wexflow.Server.exe.config"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Server\bin\Release\*.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Server\bin\Release\swagger-ui\*"; DestDir: "{app}\swagger-ui"; Flags: ignoreversion recursesubdirs
Source: "..\src\net\Wexflow.Core.Db.SQLite\bin\x86\Release\x86\SQLite.Interop.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Server\bin\Release\x86\7z.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Server\bin\Release\x86\MediaInfo.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\libs\chromedriver.exe"; DestDir: "{app}"; Flags: ignoreversion

; Wexflow Manager
Source: "..\src\net\Wexflow.Clients.Manager\bin\Release\Wexflow.Clients.Manager.exe"; DestDir: "{app}\Manager"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Clients.Manager\bin\Release\Wexflow.Clients.Manager.exe.config"; DestDir: "{app}\Manager"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Clients.Manager\bin\Release\Wexflow.Core.Service.Client.dll"; DestDir: "{app}\Manager"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Clients.Manager\bin\Release\Newtonsoft.Json.dll"; DestDir: "{app}\Manager"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Clients.Manager\bin\Release\Wexflow.Core.Service.Contracts.dll"; DestDir: "{app}\Manager"; Flags: ignoreversion

; Wexflow.Clients.CommandLine
Source: "..\src\net\Wexflow.Clients.CommandLine\bin\x86\Release\Wexflow.Clients.CommandLine.exe"; DestDir: "{app}\Wexflow.Clients.CommandLine"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Clients.CommandLine\bin\x86\Release\Wexflow.Clients.CommandLine.exe.config"; DestDir: "{app}\Wexflow.Clients.CommandLine"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Clients.CommandLine\bin\x86\Release\*.dll"; DestDir: "{app}\Wexflow.Clients.CommandLine"; Flags: ignoreversion

; Wexflow Backend
Source: "..\src\backend\Wexflow.Backend\index.html"; DestDir: "{app}\Backend"; Flags: ignoreversion
Source: "..\src\backend\Wexflow.Backend\forgot-password.html"; DestDir: "{app}\Backend"; Flags: ignoreversion
Source: "..\src\backend\Wexflow.Backend\dashboard.html"; DestDir: "{app}\Backend"; Flags: ignoreversion
Source: "..\src\backend\Wexflow.Backend\records.html"; DestDir: "{app}\Backend"; Flags: ignoreversion
Source: "..\src\backend\Wexflow.Backend\manager.html"; DestDir: "{app}\Backend"; Flags: ignoreversion
Source: "..\src\backend\Wexflow.Backend\approval.html"; DestDir: "{app}\Backend"; Flags: ignoreversion
Source: "..\src\backend\Wexflow.Backend\designer.html"; DestDir: "{app}\Backend"; Flags: ignoreversion
Source: "..\src\backend\Wexflow.Backend\history.html"; DestDir: "{app}\Backend"; Flags: ignoreversion
Source: "..\src\backend\Wexflow.Backend\users.html"; DestDir: "{app}\Backend"; Flags: ignoreversion
Source: "..\src\backend\Wexflow.Backend\profiles.html"; DestDir: "{app}\Backend"; Flags: ignoreversion
Source: "..\src\backend\Wexflow.Backend\notifications.html"; DestDir: "{app}\Backend"; Flags: ignoreversion

Source: "..\src\backend\Wexflow.Backend\images\*"; DestDir: "{app}\Backend\images"; Flags: ignoreversion
Source: "..\src\backend\Wexflow.Backend\assets\*"; DestDir: "{app}\Backend\assets"; Flags: ignoreversion

Source: "..\src\backend\Wexflow.Backend\css\images\*"; DestDir: "{app}\Backend\css\images"; Flags: ignoreversion
Source: "..\src\backend\Wexflow.Backend\css\login.min.css"; DestDir: "{app}\Backend\css"; Flags: ignoreversion
Source: "..\src\backend\Wexflow.Backend\css\forgot-password.min.css"; DestDir: "{app}\Backend\css"; Flags: ignoreversion
Source: "..\src\backend\Wexflow.Backend\css\dashboard.min.css"; DestDir: "{app}\Backend\css"; Flags: ignoreversion
Source: "..\src\backend\Wexflow.Backend\css\records.min.css"; DestDir: "{app}\Backend\css"; Flags: ignoreversion
Source: "..\src\backend\Wexflow.Backend\css\manager.min.css"; DestDir: "{app}\Backend\css"; Flags: ignoreversion
Source: "..\src\backend\Wexflow.Backend\css\approval.min.css"; DestDir: "{app}\Backend\css"; Flags: ignoreversion
Source: "..\src\backend\Wexflow.Backend\css\designer.min.css"; DestDir: "{app}\Backend\css"; Flags: ignoreversion
Source: "..\src\backend\Wexflow.Backend\css\history.min.css"; DestDir: "{app}\Backend\css"; Flags: ignoreversion
Source: "..\src\backend\Wexflow.Backend\css\users.min.css"; DestDir: "{app}\Backend\css"; Flags: ignoreversion
Source: "..\src\backend\Wexflow.Backend\css\profiles.min.css"; DestDir: "{app}\Backend\css"; Flags: ignoreversion
Source: "..\src\backend\Wexflow.Backend\css\notifications.min.css"; DestDir: "{app}\Backend\css"; Flags: ignoreversion

Source: "..\src\backend\Wexflow.Backend\js\settings.js"; DestDir: "{app}\Backend\js"; Flags: ignoreversion
Source: "..\src\backend\Wexflow.Backend\js\language.js"; DestDir: "{app}\Backend\js"; Flags: ignoreversion
Source: "..\src\backend\Wexflow.Backend\js\login.min.js"; DestDir: "{app}\Backend\js"; Flags: ignoreversion
Source: "..\src\backend\Wexflow.Backend\js\forgot-password.min.js"; DestDir: "{app}\Backend\js"; Flags: ignoreversion
Source: "..\src\backend\Wexflow.Backend\js\dashboard.min.js"; DestDir: "{app}\Backend\js"; Flags: ignoreversion
Source: "..\src\backend\Wexflow.Backend\js\records.min.js"; DestDir: "{app}\Backend\js"; Flags: ignoreversion
Source: "..\src\backend\Wexflow.Backend\js\manager.min.js"; DestDir: "{app}\Backend\js"; Flags: ignoreversion
Source: "..\src\backend\Wexflow.Backend\js\approval.min.js"; DestDir: "{app}\Backend\js"; Flags: ignoreversion

Source: "..\src\backend\Wexflow.Backend\js\ace.js"; DestDir: "{app}\Backend\js"; Flags: ignoreversion
Source: "..\src\backend\Wexflow.Backend\js\worker-xml.js"; DestDir: "{app}\Backend\js"; Flags: ignoreversion
Source: "..\src\backend\Wexflow.Backend\js\mode-xml.js"; DestDir: "{app}\Backend\js"; Flags: ignoreversion
Source: "..\src\backend\Wexflow.Backend\js\worker-json.js"; DestDir: "{app}\Backend\js"; Flags: ignoreversion
Source: "..\src\backend\Wexflow.Backend\js\mode-json.js"; DestDir: "{app}\Backend\js"; Flags: ignoreversion
Source: "..\src\backend\Wexflow.Backend\js\ext-searchbox.js"; DestDir: "{app}\Backend\js"; Flags: ignoreversion
Source: "..\src\backend\Wexflow.Backend\js\ext-prompt.js"; DestDir: "{app}\Backend\js"; Flags: ignoreversion
Source: "..\src\backend\Wexflow.Backend\js\ext-keybinding_menu.js"; DestDir: "{app}\Backend\js"; Flags: ignoreversion
Source: "..\src\backend\Wexflow.Backend\js\ext-settings_menu.js"; DestDir: "{app}\Backend\js"; Flags: ignoreversion
Source: "..\src\backend\Wexflow.Backend\js\theme-*.js"; DestDir: "{app}\Backend\js"; Flags: ignoreversion

Source: "..\src\backend\Wexflow.Backend\js\blockly_compressed.js"; DestDir: "{app}\Backend\js"; Flags: ignoreversion
Source: "..\src\backend\Wexflow.Backend\js\blocks_compressed.js"; DestDir: "{app}\Backend\js"; Flags: ignoreversion
Source: "..\src\backend\Wexflow.Backend\js\en.js"; DestDir: "{app}\Backend\js"; Flags: ignoreversion

Source: "..\src\backend\Wexflow.Backend\js\designer.min.js"; DestDir: "{app}\Backend\js"; Flags: ignoreversion

Source: "..\src\backend\Wexflow.Backend\js\history.min.js"; DestDir: "{app}\Backend\js"; Flags: ignoreversion
Source: "..\src\backend\Wexflow.Backend\js\users.min.js"; DestDir: "{app}\Backend\js"; Flags: ignoreversion
Source: "..\src\backend\Wexflow.Backend\js\profiles.min.js"; DestDir: "{app}\Backend\js"; Flags: ignoreversion
Source: "..\src\backend\Wexflow.Backend\js\notifications.min.js"; DestDir: "{app}\Backend\js"; Flags: ignoreversion

; Wexflow's Documentation
Source: "..\src\net\Wexflow.Core\Workflow.xml"; DestDir: "{app}\Documentation\"; DestName: "_Workflow.xml"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.CsvToXml\CsvToXml.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.FileExists\FileExists.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.FilesConcat\FilesConcat.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.FilesCopier\FilesCopier.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.FilesExist\FilesExist.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.FilesInfo\FilesInfo.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.FilesLoader\FilesLoader.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.FilesMover\FilesMover.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.FilesRemover\FilesRemover.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.FilesRenamer\FilesRenamer.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.Ftp\Ftp.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.Http\Http.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.ImagesTransformer\ImagesTransformer.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.ListEntities\ListEntities.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.ListFiles\ListFiles.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.MailsReceiver\MailsReceiver.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.MailsSender\MailsSender.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.Md5\Md5.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.MediaInfo\MediaInfo.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.Mkdir\Mkdir.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.Movedir\Movedir.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.ProcessLauncher\ProcessLauncher.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.Rmdir\Rmdir.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.Sha1\Sha1.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.Sha256\Sha256.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.Sha512\Sha512.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.Sql\Sql.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.Tar\Tar.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.Template\Template.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.Tgz\Tgz.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.Touch\Touch.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.Twitter\Twitter.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.Wait\Wait.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.Wmi\Wmi.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.XmlToCsv\XmlToCsv.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.Xslt\Xslt.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.Zip\Zip.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.Now\Now.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.Workflow\Workflow.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.FilesSplitter\FilesSplitter.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.ProcessKiller\ProcessKiller.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.Unzip\Unzip.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.Untar\Untar.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.Untgz\Untgz.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.ProcessInfo\ProcessInfo.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.TextToPdf\TextToPdf.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.HtmlToPdf\HtmlToPdf.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.SqlToXml\SqlToXml.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.SqlToCsv\SqlToCsv.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.Guid\Guid.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.FilesEqual\FilesEqual.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.FilesDiff\FilesDiff.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.Torrent\Torrent.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.ImagesResizer\ImagesResizer.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.ImagesCropper\ImagesCropper.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.CsvToSql\CsvToSql.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.ImagesConcat\ImagesConcat.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.ImagesOverlay\ImagesOverlay.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.Unrar\Unrar.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.UnSevenZip\UnSevenZip.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.FilesEncryptor\FilesEncryptor.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.FilesDecryptor\FilesDecryptor.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.TextsEncryptor\TextsEncryptor.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.TextsDecryptor\TextsDecryptor.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.IsoCreator\IsoCreator.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.IsoExtractor\IsoExtractor.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.SevenZip\SevenZip.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.TextToSpeech\TextToSpeech.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.SpeechToText\SpeechToText.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.FileMatch\FileMatch.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.Ping\Ping.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.WebToScreenshot\WebToScreenshot.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.WebToHtml\WebToHtml.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.ExecCs\ExecCs.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.ExecVb\ExecVb.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.HttpPost\HttpPost.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.HttpPut\HttpPut.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.HttpPatch\HttpPatch.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.HttpDelete\HttpDelete.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.UglifyJs\UglifyJs.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.UglifyCss\UglifyCss.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.UglifyHtml\UglifyHtml.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.HtmlToText\HtmlToText.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.HttpGet\HttpGet.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.ScssToCss\ScssToCss.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.YamlToJson\YamlToJson.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.JsonToYaml\JsonToYaml.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.CsvToJson\CsvToJson.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.CsvToYaml\CsvToYaml.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.EnvironmentVariable\EnvironmentVariable.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.MessageCorrect\MessageCorrect.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.InstagramUploadImage\InstagramUploadImage.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.InstagramUploadVideo\InstagramUploadVideo.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.FolderExists\FolderExists.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.FileContentMatch\FileContentMatch.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.Approval\Approval.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.VimeoListUploads\VimeoListUploads.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.Vimeo\Vimeo.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.Slack\Slack.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.FilesLoaderEx\FilesLoaderEx.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.FilesJoiner\FilesJoiner.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.Twilio\Twilio.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.SshCmd\SshCmd.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.FileSystemWatcher\FileSystemWatcher.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.SubWorkflow\SubWorkflow.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.ApproveRecord\ApproveRecord.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.ApprovalRecordsCreator\ApprovalRecordsCreator.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Tasks.ApprovalWorkflowsCreator\ApprovalWorkflowsCreator.xml"; DestDir: "{app}\Documentation"; Flags: ignoreversion

Source: "..\LICENSE.txt"; DestDir: "{app}\"; Flags: ignoreversion

; Wexflow's configuration
Source: "..\samples\net\Wexflow\Database\*"; DestDir: "C:\Wexflow\Database"; Components: samples; Flags: ignoreversion recursesubdirs uninsneveruninstall
Source: "..\samples\net\Wexflow\Workflows\*"; DestDir: "C:\Wexflow\Workflows"; Components: samples; Flags: ignoreversion recursesubdirs uninsneveruninstall
Source: "..\samples\net\Wexflow\Records\*"; DestDir: "C:\Wexflow\Records"; Components: samples; Flags: ignoreversion recursesubdirs uninsneveruninstall
Source: "..\samples\net\Wexflow\Xslt\*"; DestDir: "C:\Wexflow\Xslt"; Components: samples; Flags: ignoreversion recursesubdirs uninsneveruninstall

Source: "..\samples\net\Wexflow\Approval\*"; DestDir: "C:\Wexflow\Approval"; Flags: ignoreversion recursesubdirs uninsneveruninstall
Source: "..\samples\net\Wexflow\TasksNames.json"; DestDir: "C:\Wexflow\"; Flags: ignoreversion recursesubdirs uninsneveruninstall
Source: "..\samples\net\Wexflow\TasksSettings.json"; DestDir: "C:\Wexflow\"; Flags: ignoreversion recursesubdirs uninsneveruninstall
Source: "..\src\net\Wexflow.Core\Wexflow.xml"; DestDir: "C:\Wexflow\"; Flags: ignoreversion recursesubdirs uninsneveruninstall
Source: "..\src\net\Wexflow.Core\Workflow.xsd"; DestDir: "C:\Wexflow\"; Flags: ignoreversion recursesubdirs uninsneveruninstall
Source: "..\src\net\Wexflow.Core\GlobalVariables.xml"; DestDir: "C:\Wexflow\"; Flags: ignoreversion recursesubdirs uninsneveruninstall

Source: "..\samples\WexflowTesting\*"; DestDir: "C:\WexflowTesting\"; Components: samples; Flags: ignoreversion recursesubdirs uninsneveruninstall

; Wexflow.Scripts.MongoDB
Source: "..\src\net\Wexflow.Scripts.MongoDB\bin\x86\Release\Wexflow.Scripts.MongoDB.exe"; DestDir: "{app}\Wexflow.Scripts.MongoDB"; Flags: ignoreversion recursesubdirs
Source: ".\net\Wexflow.Scripts.MongoDB\Wexflow.Scripts.MongoDB.exe.config"; DestDir: "{app}\Wexflow.Scripts.MongoDB"; Flags: ignoreversion recursesubdirs
Source: "..\src\net\Wexflow.Scripts.MongoDB\bin\x86\Release\*.dll"; DestDir: "{app}\Wexflow.Scripts.MongoDB"; Flags: ignoreversion recursesubdirs
Source: "..\samples\net\Wexflow\Workflows\*.xml"; DestDir: "{app}\Wexflow.Scripts.MongoDB\Workflows"; Flags: ignoreversion recursesubdirs
Source: "..\src\net\Wexflow.Server\bin\Release\System.Net.Http.dll"; DestDir: "{app}\Wexflow.Scripts.MongoDB"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Server\bin\Release\System.Buffers.dll"; DestDir: "{app}\Wexflow.Scripts.MongoDB"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Server\bin\Release\System.Runtime.InteropServices.RuntimeInformation.dll"; DestDir: "{app}\Wexflow.Scripts.MongoDB"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Server\bin\Release\System.Runtime.CompilerServices.Unsafe.dll"; DestDir: "{app}\Wexflow.Scripts.MongoDB"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Server\bin\Release\System.Threading.Tasks.Extensions.dll"; DestDir: "{app}\Wexflow.Scripts.MongoDB"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Server\bin\Release\System.Numerics.Vectors.dll"; DestDir: "{app}\Wexflow.Scripts.MongoDB"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Server\bin\x64\Release\System.Memory.dll"; DestDir: "{app}\Wexflow.Scripts.MongoDB"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Server\bin\x64\Release\Microsoft.Bcl.AsyncInterfaces.dll"; DestDir: "{app}\Wexflow.Scripts.MongoDB"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Server\bin\x64\Release\System.Net.Sockets.dll"; DestDir: "{app}\Wexflow.Scripts.MongoDB"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Server\bin\x64\Release\System.Text.Encodings.Web.dll"; DestDir: "{app}\Wexflow.Scripts.MongoDB"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Server\bin\x64\Release\System.Text.Json.dll"; DestDir: "{app}\Wexflow.Scripts.MongoDB"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Server\bin\x64\Release\System.ValueTuple.dll"; DestDir: "{app}\Wexflow.Scripts.MongoDB"; Flags: ignoreversion

; Wexflow.Scripts.RavenDB
Source: "..\src\net\Wexflow.Scripts.RavenDB\bin\x86\Release\Wexflow.Scripts.RavenDB.exe"; DestDir: "{app}\Wexflow.Scripts.RavenDB"; Flags: ignoreversion recursesubdirs
Source: ".\net\Wexflow.Scripts.RavenDB\Wexflow.Scripts.RavenDB.exe.config"; DestDir: "{app}\Wexflow.Scripts.RavenDB"; Flags: ignoreversion recursesubdirs
Source: "..\src\net\Wexflow.Scripts.RavenDB\bin\x86\Release\*.dll"; DestDir: "{app}\Wexflow.Scripts.RavenDB"; Flags: ignoreversion recursesubdirs
Source: "..\src\net\Wexflow.Server\bin\Release\System.Net.Http.dll"; DestDir: "{app}\Wexflow.Scripts.RavenDB"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Server\bin\Release\System.Buffers.dll"; DestDir: "{app}\Wexflow.Scripts.RavenDB"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Server\bin\Release\System.Runtime.InteropServices.RuntimeInformation.dll"; DestDir: "{app}\Wexflow.Scripts.RavenDB"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Server\bin\Release\System.Runtime.CompilerServices.Unsafe.dll"; DestDir: "{app}\Wexflow.Scripts.RavenDB"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Server\bin\Release\System.Threading.Tasks.Extensions.dll"; DestDir: "{app}\Wexflow.Scripts.RavenDB"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Server\bin\Release\System.Numerics.Vectors.dll"; DestDir: "{app}\Wexflow.Scripts.RavenDB"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Server\bin\x64\Release\System.Memory.dll"; DestDir: "{app}\Wexflow.Scripts.RavenDB"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Server\bin\x64\Release\Microsoft.Bcl.AsyncInterfaces.dll"; DestDir: "{app}\Wexflow.Scripts.RavenDB"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Server\bin\x64\Release\System.Net.Sockets.dll"; DestDir: "{app}\Wexflow.Scripts.RavenDB"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Server\bin\x64\Release\System.Text.Encodings.Web.dll"; DestDir: "{app}\Wexflow.Scripts.RavenDB"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Server\bin\x64\Release\System.Text.Json.dll"; DestDir: "{app}\Wexflow.Scripts.RavenDB"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Server\bin\x64\Release\System.ValueTuple.dll"; DestDir: "{app}\Wexflow.Scripts.RavenDB"; Flags: ignoreversion

; Wexflow.Scripts.PostgreSQL
Source: "..\src\net\Wexflow.Scripts.PostgreSQL\bin\x86\Release\Wexflow.Scripts.PostgreSQL.exe"; DestDir: "{app}\Wexflow.Scripts.PostgreSQL"; Flags: ignoreversion recursesubdirs
Source: ".\net\Wexflow.Scripts.PostgreSQL\Wexflow.Scripts.PostgreSQL.exe.config"; DestDir: "{app}\Wexflow.Scripts.PostgreSQL"; Flags: ignoreversion recursesubdirs
Source: "..\src\net\Wexflow.Scripts.PostgreSQL\bin\x86\Release\*.dll"; DestDir: "{app}\Wexflow.Scripts.PostgreSQL"; Flags: ignoreversion recursesubdirs
Source: "..\src\net\Wexflow.Server\bin\Release\System.Net.Http.dll"; DestDir: "{app}\Wexflow.Scripts.PostgreSQL"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Server\bin\Release\System.Buffers.dll"; DestDir: "{app}\Wexflow.Scripts.PostgreSQL"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Server\bin\Release\System.Runtime.InteropServices.RuntimeInformation.dll"; DestDir: "{app}\Wexflow.Scripts.PostgreSQL"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Server\bin\Release\System.Runtime.CompilerServices.Unsafe.dll"; DestDir: "{app}\Wexflow.Scripts.PostgreSQL"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Server\bin\Release\System.Threading.Tasks.Extensions.dll"; DestDir: "{app}\Wexflow.Scripts.PostgreSQL"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Server\bin\Release\System.Numerics.Vectors.dll"; DestDir: "{app}\Wexflow.Scripts.PostgreSQL"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Server\bin\x64\Release\System.Memory.dll"; DestDir: "{app}\Wexflow.Scripts.PostgreSQL"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Server\bin\x64\Release\Microsoft.Bcl.AsyncInterfaces.dll"; DestDir: "{app}\Wexflow.Scripts.PostgreSQL"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Server\bin\x64\Release\System.Net.Sockets.dll"; DestDir: "{app}\Wexflow.Scripts.PostgreSQL"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Server\bin\x64\Release\System.Text.Encodings.Web.dll"; DestDir: "{app}\Wexflow.Scripts.PostgreSQL"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Server\bin\x64\Release\System.Text.Json.dll"; DestDir: "{app}\Wexflow.Scripts.PostgreSQL"; Flags: ignoreversion
Source: "..\src\net\Wexflow.Server\bin\x64\Release\System.ValueTuple.dll"; DestDir: "{app}\Wexflow.Scripts.PostgreSQL"; Flags: ignoreversion

; Wexflow.Scripts.SQLServer
Source: "..\src\net\Wexflow.Scripts.SQLServer\bin\x86\Release\Wexflow.Scripts.SQLServer.exe"; DestDir: "{app}\Wexflow.Scripts.SQLServer"; Flags: ignoreversion recursesubdirs
Source: ".\net\Wexflow.Scripts.SQLServer\Wexflow.Scripts.SQLServer.exe.config"; DestDir: "{app}\Wexflow.Scripts.SQLServer"; Flags: ignoreversion recursesubdirs
Source: "..\src\net\Wexflow.Scripts.SQLServer\bin\x86\Release\*.dll"; DestDir: "{app}\Wexflow.Scripts.SQLServer"; Flags: ignoreversion recursesubdirs

; Wexflow.Scripts.MySQL
Source: "..\src\net\Wexflow.Scripts.MySQL\bin\x86\Release\Wexflow.Scripts.MySQL.exe"; DestDir: "{app}\Wexflow.Scripts.MySQL"; Flags: ignoreversion recursesubdirs
Source: ".\net\Wexflow.Scripts.MySQL\Wexflow.Scripts.MySQL.exe.config"; DestDir: "{app}\Wexflow.Scripts.MySQL"; Flags: ignoreversion recursesubdirs
Source: "..\src\net\Wexflow.Scripts.MySQL\bin\x86\Release\*.dll"; DestDir: "{app}\Wexflow.Scripts.MySQL"; Flags: ignoreversion recursesubdirs

; Wexflow.Scripts.SQLite
Source: "..\src\net\Wexflow.Scripts.SQLite\bin\x86\Release\Wexflow.Scripts.SQLite.exe"; DestDir: "{app}\Wexflow.Scripts.SQLite"; Flags: ignoreversion recursesubdirs
Source: ".\net\Wexflow.Scripts.SQLite\Wexflow.Scripts.SQLite.exe.config"; DestDir: "{app}\Wexflow.Scripts.SQLite"; Flags: ignoreversion recursesubdirs
Source: "..\src\net\Wexflow.Scripts.SQLite\bin\x86\Release\*.dll"; DestDir: "{app}\Wexflow.Scripts.SQLite"; Flags: ignoreversion recursesubdirs
Source: "..\src\net\Wexflow.Scripts.SQLite\bin\x86\Release\x86\SQLite.Interop.dll"; DestDir: "{app}\Wexflow.Scripts.SQLite"; Flags: ignoreversion recursesubdirs

; Wexflow.Scripts.Firebird
Source: "..\src\net\Wexflow.Scripts.Firebird\bin\x86\Release\Wexflow.Scripts.Firebird.exe"; DestDir: "{app}\Wexflow.Scripts.Firebird"; Flags: ignoreversion recursesubdirs
Source: ".\net\Wexflow.Scripts.Firebird\Wexflow.Scripts.Firebird.exe.config"; DestDir: "{app}\Wexflow.Scripts.Firebird"; Flags: ignoreversion recursesubdirs
Source: "..\src\net\Wexflow.Scripts.Firebird\bin\x86\Release\*.dll"; DestDir: "{app}\Wexflow.Scripts.Firebird"; Flags: ignoreversion recursesubdirs

; Wexflow.Scripts.Oracle
Source: "..\src\net\Wexflow.Scripts.Oracle\bin\x86\Release\Wexflow.Scripts.Oracle.exe"; DestDir: "{app}\Wexflow.Scripts.Oracle"; Flags: ignoreversion recursesubdirs
Source: ".\net\Wexflow.Scripts.Oracle\Wexflow.Scripts.Oracle.exe.config"; DestDir: "{app}\Wexflow.Scripts.Oracle"; Flags: ignoreversion recursesubdirs
Source: "..\src\net\Wexflow.Scripts.Oracle\bin\x86\Release\*.dll"; DestDir: "{app}\Wexflow.Scripts.Oracle"; Flags: ignoreversion recursesubdirs

; Wexflow.Scripts.MariaDB
Source: "..\src\net\Wexflow.Scripts.MariaDB\bin\x86\Release\Wexflow.Scripts.MariaDB.exe"; DestDir: "{app}\Wexflow.Scripts.MariaDB"; Flags: ignoreversion recursesubdirs
Source: ".\net\Wexflow.Scripts.MariaDB\Wexflow.Scripts.MariaDB.exe.config"; DestDir: "{app}\Wexflow.Scripts.MariaDB"; Flags: ignoreversion recursesubdirs
Source: "..\src\net\Wexflow.Scripts.MariaDB\bin\x86\Release\*.dll"; DestDir: "{app}\Wexflow.Scripts.MariaDB"; Flags: ignoreversion recursesubdirs
Source: "..\src\net\Wexflow.Core.Db.MariaDB\bin\x86\Release\System.Buffers.dll"; DestDir: "{app}\Wexflow.Scripts.MariaDB"; Flags: ignoreversion recursesubdirs
Source: "..\src\net\Wexflow.Core.Db.MariaDB\bin\x86\Release\System.Memory.dll"; DestDir: "{app}\Wexflow.Scripts.MariaDB"; Flags: ignoreversion recursesubdirs
Source: "..\src\net\Wexflow.Core.Db.MariaDB\bin\x86\Release\System.Numerics.Vectors.dll"; DestDir: "{app}\Wexflow.Scripts.MariaDB"; Flags: ignoreversion recursesubdirs
Source: "..\src\net\Wexflow.Core.Db.MariaDB\bin\x86\Release\System.Runtime.CompilerServices.Unsafe.dll"; DestDir: "{app}\Wexflow.Scripts.MariaDB"; Flags: ignoreversion recursesubdirs
Source: "..\src\net\Wexflow.Core.Db.MariaDB\bin\x86\Release\System.Threading.Tasks.Extensions.dll"; DestDir: "{app}\Wexflow.Scripts.MariaDB"; Flags: ignoreversion recursesubdirs

; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{commonprograms}\{#MyAppName}\Manager"; Filename: "{app}\Manager\{#MyAppExeName}";
Name: "{commonprograms}\{#MyAppName}\Backend"; Filename: "{app}\Backend\index.html";
Name: "{commonprograms}\{#MyAppName}\Swagger"; Filename: "http://localhost:8000";
;Name: "{commonprograms}\{#MyAppName}\Start Wexflow Windows Service"; Filename: {sys}\sc.exe; Parameters: "start Wexflow" ; IconFilename: "{app}\Wexflow.ico";
;Name: "{commonprograms}\{#MyAppName}\Stop Wexflow Windows Service"; Filename: {sys}\sc.exe; Parameters: "stop Wexflow" ; IconFilename: "{app}\Wexflow.ico";
Name: "{commonprograms}\{#MyAppName}\Configuration"; Filename: "C:\Wexflow\";
Name: "{commonprograms}\{#MyAppName}\Documentation"; Filename: "{app}\Documentation";
Name: "{commonprograms}\{#MyAppName}\Logs"; Filename: "{app}\Wexflow.log";
Name: "{commonprograms}\{#MyAppName}\Install MongoDB samples"; Filename: "{app}\Wexflow.Scripts.MongoDB\Wexflow.Scripts.MongoDB.exe";
Name: "{commonprograms}\{#MyAppName}\Install RavenDB samples"; Filename: "{app}\Wexflow.Scripts.RavenDB\Wexflow.Scripts.RavenDB.exe";
Name: "{commonprograms}\{#MyAppName}\Install PostgreSQL samples"; Filename: "{app}\Wexflow.Scripts.PostgreSQL\Wexflow.Scripts.PostgreSQL.exe";
Name: "{commonprograms}\{#MyAppName}\Install SQL Server samples"; Filename: "{app}\Wexflow.Scripts.SQLServer\Wexflow.Scripts.SQLServer.exe";
Name: "{commonprograms}\{#MyAppName}\Install MySQL samples"; Filename: "{app}\Wexflow.Scripts.MySQL\Wexflow.Scripts.MySQL.exe";
Name: "{commonprograms}\{#MyAppName}\Install SQLite samples"; Filename: "{app}\Wexflow.Scripts.SQLite\Wexflow.Scripts.SQLite.exe";
Name: "{commonprograms}\{#MyAppName}\Install Firebird samples"; Filename: "{app}\Wexflow.Scripts.Firebird\Wexflow.Scripts.Firebird.exe";
Name: "{commonprograms}\{#MyAppName}\Install Oracle samples"; Filename: "{app}\Wexflow.Scripts.Oracle\Wexflow.Scripts.Oracle.exe";
Name: "{commonprograms}\{#MyAppName}\Install MariaDB samples"; Filename: "{app}\Wexflow.Scripts.MariaDB\Wexflow.Scripts.MariaDB.exe";
Name: "{commonprograms}\{#MyAppName}\Uninstall"; Filename: "{uninstallexe}";

Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\Manager\{#MyAppExeName}"; Tasks: desktopicon
;Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppName}"; Filename: "{app}\Manager\{#MyAppExeName}"; Tasks: quicklaunchicon

[Run]
;Filename: "{app}\Manager\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent
Filename: "{sys}\sc.exe"; Parameters: "create Wexflow start= auto binPath= ""{app}\Wexflow.Server.exe""" ; Flags: runhidden  waituntilterminated
Filename: "{sys}\sc.exe"; Parameters: "description Wexflow ""Wexflow workflow engine."""; Flags: runhidden  waituntilterminated
Filename: "{sys}\sc.exe"; Parameters: "start Wexflow"; Flags: runhidden  waituntilterminated

[UninstallRun]
Filename: "taskkill"; Parameters: "/im ""{#MyAppExeName}"" /t /f"; Flags: runhidden waituntilterminated
Filename: "{sys}\sc.exe"; Parameters: "stop Wexflow"; Flags: runhidden waituntilterminated
Filename: "taskkill"; Parameters: "/im ""Wexflow.Server.exe"" /t /f"; Flags: runhidden waituntilterminated
Filename: "taskkill"; Parameters: "/im ""chromedriver.exe"" /t /f"; Flags: runhidden waituntilterminated
Filename: "{sys}\sc.exe"; Parameters: "delete Wexflow"; Flags: runhidden waituntilterminated

[UninstallDelete]
Type: files; Name: "{app}\chromedriver.exe"

[InstallDelete]
Type: files; Name: "C:\Wexflow\Database\Wexflow.db"

[Code]
procedure InitializeWizard();
begin
  ForceDirectories('C:\Wexflow');
  ForceDirectories('C:\Wexflow\Database');
  ForceDirectories('C:\Wexflow\Workflows');
  ForceDirectories('C:\Wexflow\Records');
  ForceDirectories('C:\Wexflow\Tasks');
  ForceDirectories('C:\Wexflow\Temp');
  ForceDirectories('C:\Wexflow\Approval');
end;