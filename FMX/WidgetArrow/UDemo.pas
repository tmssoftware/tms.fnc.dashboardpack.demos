unit UDemo;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Edit, FMX.Controls.Presentation, FMX.TMSFNCCustomComponent,
  FMX.TMSFNCBitmapContainer, FMX.TMSFNCTypes, FMX.TMSFNCUtils,
  FMX.TMSFNCGraphics, FMX.TMSFNCGraphicsTypes, FMX.TMSFNCCustomControl,  
  FMX.TMSFNCWidgetMarqueeProgress, FMX.TMSFNCWidgetArrow,
  FMX.TMSFNCWidgetProgress;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Label1: TLabel;
    TMSFNCWidgetArrow1: TTMSFNCWidgetArrow;
    TMSFNCWidgetProgress1: TTMSFNCWidgetProgress;
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

function GetArrowValue(APosition: Single): Single;
begin
  result := -90 + (APosition / 100.0) * 180;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  TMSFNCWidgetProgress1.Value := 0;
  TMSFNCWidgetProgress1.CaptionOptions.Text := 'Server Dallas';

  TMSFNCWidgetArrow1.ArrowOptions.Margin := 10;
  TMSFNCWidgetArrow1.ArrowOptions.Width := 30;
  TMSFNCWidgetArrow1.ArrowOptions.HeadWidth := 60;
  TMSFNCWidgetArrow1.ArrowOptions.HeadLength := 60;
  TMSFNCWidgetArrow1.CaptionOptions.Text := 'Overall Progress';
  TMSFNCWidgetArrow1.ValueText := '';
  TMSFNCWidgetArrow1.Value := Round(GetArrowValue(TMSFNCWidgetProgress1.Value));
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
  begin
    TMSFNCWidgetProgress1.Value := UpdateProgress(TMSFNCWidgetProgress1.Value);
    TMSFNCWidgetArrow1.Value := Round(GetArrowValue(TMSFNCWidgetProgress1.Value));
  end;

  if (TMSFNCWidgetProgress1.Value = 100) then
    Label1.Text := 'Server Backup Completed';
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  UpdateAll;
end;

end.
