unit UDemo;

interface

uses
  System.SysUtils, System.Classes, WebLib.Graphics, WebLib.Forms,
  VCL.TMSFNCTypes, VCL.TMSFNCUtils,
  VCL.TMSFNCCustomComponent, VCL.TMSFNCGraphics, VCL.TMSFNCGraphicsTypes,
  Vcl.StdCtrls, WebLib.StdCtrls, Vcl.Controls, 
  VCL.TMSFNCWidgetProgress, VCL.TMSFNCBitmapContainer, WebLib.ExtCtrls,
  VCL.TMSFNCCustomControl, Vcl.Imaging.pngimage;

type
  TForm1 = class(TWebForm)
    Panel1: TWebPanel;
    Button1: TWebButton;
    Label1: TWebLabel;
    TMSFNCBitmapContainer1: TTMSFNCBitmapContainer;
    Label2: TWebLabel;
    TMSFNCWidgetProgress1: TTMSFNCWidgetProgress;
    TMSFNCWidgetProgress2: TTMSFNCWidgetProgress;
    Label3: TWebLabel;
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

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  TMSFNCWidgetProgress2.BitmapContainer := TMSFNCBitmapContainer1;
  TMSFNCWidgetProgress2.ValueIndicator.BitmapName := 'BlueBall';
  TMSFNCWidgetProgress2.ValueIndicator.Kind := piBitmap;

  TMSFNCWidgetProgress1.Value := Random(12);
  TMSFNCWidgetProgress2.Value := Random(12);
  TMSFNCWidgetProgress1.CaptionOptions.Text := 'Server Dallas';
  TMSFNCWidgetProgress2.CaptionOptions.Text := 'Server Chicago';
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
begin
  if (TMSFNCWidgetProgress1.Value < 100) then
    TMSFNCWidgetProgress1.Value := UpdateProgress(TMSFNCWidgetProgress1.Value);
  if (TMSFNCWidgetProgress2.Value < 100) then
    TMSFNCWidgetProgress2.Value := UpdateProgress(TMSFNCWidgetProgress2.Value);
  if (TMSFNCWidgetProgress1.Value = 100)
     and (TMSFNCWidgetProgress2.Value = 100) then
    Label1.Caption := 'Server Backup Completed';
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  UpdateAll;
end;

end.
