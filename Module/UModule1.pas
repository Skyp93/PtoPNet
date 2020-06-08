unit UModule1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  usupport,
  /// <- Обрати внимание
  FMX.Controls.Presentation;

type
  TFrame1 = class(TFrame)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    FEvent: TProcMain;

    { Private declarations }
  public
    property StartEvent: TProcMain read FEvent write FEvent;

    { Public declarations }
  end;

implementation

{$R *.fmx}
{ TFrame1 }

procedure TFrame1.Button1Click(Sender: TObject);
begin
  if Assigned(FEvent) then
    FEvent;
end;

end.
