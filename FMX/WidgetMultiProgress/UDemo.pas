unit UDemo;

interface

uses 
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Edit, FMX.Controls.Presentation, FMX.TMSFNCCustomComponent,
  FMX.TMSFNCBitmapContainer, FMX.TMSFNCTypes, FMX.TMSFNCUtils,
  FMX.TMSFNCGraphics, FMX.TMSFNCGraphicsTypes, FMX.TMSFNCCustomControl,
  FMX.TMSFNCWidgetMultiProgress, FMX.TMSFNCWidgetProgress;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    TMSFNCWidgetMultiProgress1: TTMSFNCWidgetMultiProgress;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    function UpdateProgress(AProgress: Single): Single;
    procedure UpdateAll;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.FormCreate(Sender: TObject);
var
  AnItem: TTMSFNCCircleItem;
begin
  TMSFNCWidgetMultiProgress1.CaptionOptions.Text :=
     'Sales of Beverages (Coca-Cola)';
  TMSFNCWidgetMultiProgress1.Legend.Position := lpTopRight;
  TMSFNCWidgetMultiProgress1.CaptionOptions.Position := cpTop;
  TMSFNCWidgetMultiProgress1.CircleItems.Clear;
  AnItem := TMSFNCWidgetMultiProgress1.CircleItems.Add;
  AnItem.Caption := 'North';
  AnItem.Value := Random(12);
  AnItem := TMSFNCWidgetMultiProgress1.CircleItems.Add;
  AnItem.Caption := 'South';
  AnItem.Value := Random(12);
  AnItem := TMSFNCWidgetMultiProgress1.CircleItems.Add;
  AnItem.Caption := 'East';
  AnItem.Value := Random(12);
  AnItem := TMSFNCWidgetMultiProgress1.CircleItems.Add;
  AnItem.Caption := 'West';
  AnItem.Value := Random(12);
end;

function TForm1.UpdateProgress(AProgress: Single): Single;
var
  AIncr: Single;
begin
  result := AProgress;
  if AProgress >= 100 then
    exit;
  AIncr := 0;
  while AIncr = 0 do
    AIncr := Random(12);
  AProgress := AProgress + AIncr;
  if AProgress >= 100 then
    AProgress := 100;
  result := AProgress;
end;

procedure TForm1.UpdateAll;
var
  I: Integer;
begin
  for I := 0 to 3 do
    if (TMSFNCWidgetMultiProgress1.CircleItems.Items[I].Value < 100) then
      TMSFNCWidgetMultiProgress1.CircleItems.Items[I].Value := UpdateProgress(TMSFNCWidgetMultiProgress1.CircleItems.Items[I].Value);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  UpdateAll;
end;

end.
