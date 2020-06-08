program P2PNet;

uses
  System.StartUpCopy,
  FMX.Forms,
  USupport in 'Units\USupport.pas',
  UfrmMain in 'main\UfrmMain.pas' {frmMain} ,
  UModule1 in 'Module\UModule1.pas' {Frame1: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;

end.
