unit UnitMain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Memo.Types, FMX.StdCtrls, FMX.Controls.Presentation, FMX.ScrollBox, FMX.Memo;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    ToolBar1: TToolBar;
    btnRefreshWidgets: TSpeedButton;
    procedure btnRefreshWidgetsClick(Sender: TObject);
  private
    procedure LogMsg(const msg: String);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

uses iOSapi.WidgetKitObjC;

procedure TForm1.btnRefreshWidgetsClick(Sender: TObject);
begin
  LogMsg('Refreshing');
  try
    TWidgetKitObjCWrapper.OCClass.reloadAllTimelines;
  except
    on E: Exception do
    begin
      LogMsg(E.Message);
    end;
  end;
end;

procedure TForm1.LogMsg(const msg: String);
begin
  Memo1.Lines.Add(msg);
end;

end.
