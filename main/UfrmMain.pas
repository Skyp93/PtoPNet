unit UfrmMain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  usupport
  /// Обратите внимание
    , Umodule1,
  /// Он о нём знает, он обо всем знает
  FMX.Controls.Presentation, FMX.StdCtrls;

type
  TLoadModule = (mAuth);

  TfrmMain = class(TForm)
    layModuleContainer: TLayout;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    FrmAuthModule: TFrame1;
    FEventStartLogin: TProcMain;
    { Private declarations }
    procedure LoadModules(Almodule: TLoadModule);
    procedure SetEvent;
    procedure ChangeLabel;
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.fmx}
{ TfrmMain }

procedure TfrmMain.ChangeLabel;
begin
  Label1.Text := 'Test';
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  SetEvent;
  LoadModules(TLoadModule.mAuth);
end;

procedure TfrmMain.LoadModules(Almodule: TLoadModule);
begin

  if not assigned(FrmAuthModule) and (Almodule = TLoadModule.mAuth) then
  begin
    FrmAuthModule := TFrame1.Create(layModuleContainer);
    FrmAuthModule.Parent := layModuleContainer;
    if not assigned(FrmAuthModule.StartEvent) then
      FrmAuthModule.StartEvent := FEventStartLogin;
  end;

end;

procedure TfrmMain.SetEvent;
begin
  FEventStartLogin := ChangeLabel;
end;

end.
