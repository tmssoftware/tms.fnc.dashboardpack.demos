unit UDemo;

interface

uses
  System.SysUtils, System.Classes, WebLib.Graphics, WebLib.Forms,
  VCL.TMSFNCTypes, VCL.TMSFNCUtils,
  VCL.TMSFNCCustomComponent, VCL.TMSFNCGraphics, VCL.TMSFNCGraphicsTypes,
  Vcl.StdCtrls, WebLib.StdCtrls, Vcl.Controls, 
  WebLib.ExtCtrls, VCL.TMSFNCCustomControl, VCL.TMSFNCWidgetGauge,
  VCL.TMSFNCWidgetSetPoint, VCL.TMSFNCWidgetLCDLabel, Vcl.ComCtrls,
  VCL.TMSFNCWidgetProgress;

type
  TForm1 = class(TWebForm)
    Panel1: TWebPanel;
    TMSFNCWidgetGauge1: TTMSFNCWidgetGauge;
    TrackBar1: TTrackBar;
    Label1: TWebLabel;
    TMSFNCWidgetSetPoint1: TTMSFNCWidgetSetPoint;
    Edit1: TWebEdit;
    Button1: TWebButton;
    TMSFNCWidgetLCDLabel1: TTMSFNCWidgetLCDLabel;
    procedure FormCreate(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    procedure SetTemperature(ATemp: Single);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

Uses System.math;

procedure TForm1.FormCreate(Sender: TObject);
var
  aSection: TTMSFNCWidgetGaugeSection;
  aNeedle: TTMSFNCWidgetGaugeNeedleItem;
begin
  TMSFNCWidgetGauge1.Value := 0;
  TMSFNCWidgetGauge1.MinimumValue := 0;
  TMSFNCWidgetGauge1.MaximumValue := 100;
  TMSFNCWidgetGauge1.OuterCircle.Color := gcDarkslategray;
  TMSFNCWidgetGauge1.InnerCircle.Color := gcLightgray;
  TMSFNCWidgetGauge1.OuterRim.Color := gcLightgray;
  TMSFNCWidgetGauge1.Arc.Color := gcMedGray;
  TMSFNCWidgetGauge1.Arc.Threshold.Color := gcDarkslategray;
  TMSFNCWidgetGauge1.Digit.BackGroundColor := gcWhite;
  TMSFNCWidgetGauge1.DialText := 'Temperature';
  TMSFNCWidgetGauge1.Font.Color := gcBlack;

  TMSFNCWidgetGauge1.Sections.BeginUpdate;
  try
    aSection := TMSFNCWidgetGauge1.Sections.Add;
    aSection.StartValue := 20;
    aSection.EndValue := 30;
    aSection.Color := gcLime;
    aSection.SectionType := stBorder;
    aSection := TMSFNCWidgetGauge1.Sections.Add;
    aSection.StartValue := 30;
    aSection.EndValue := 100;
    aSection.Color := gcOrangeRed;
    aSection.SectionType := stBorder;
  finally
    TMSFNCWidgetGauge1.Sections.EndUpdate;
  end;

  aNeedle := TMSFNCWidgetGauge1.ExtraNeedles.Add;
  aNeedle.ShineColor := gcDarkGreen;
  aNeedle.ShineColorTo := gcLime;
  aNeedle.Value := 25;
  TMSFNCWidgetSetPoint1.SetPoint := 25;
  TMSFNCWidgetSetPoint1.CaptionOptions.Text := 'Thermostat';

  Edit1.Text := '25';

  TMSFNCWidgetLCDLabel1.Fill.Color := gcYellowgreen;
  TMSFNCWidgetLCDLabel1.Fill.ColorTo := gcPalegreen;
  TMSFNCWidgetLCDLabel1.Fill.Kind := gfkGradient;
  TMSFNCWidgetLCDLabel1.Caption.FillOff.Color := gcLightBlue;
  TMSFNCWidgetLCDLabel1.Caption.FillOff.Kind := gfkSolid;
  TMSFNCWidgetLCDLabel1.Caption.Value := -20.45;

  TrackBar1.Min := 10;
  TrackBar1.Max := 50;
  TrackBar1.Position := 45;
end;

procedure TForm1.SetTemperature(ATemp: Single);
begin
  TMSFNCWidgetSetPoint1.Value := ATemp;
  TMSFNCWidgetGauge1.Value := ATemp;
  TMSFNCWidgetLCDLabel1.Caption.Value := ATemp;

  if TMSFNCWidgetSetPoint1.SetPoint > ATemp then
    TMSFNCWidgetSetPoint1.Tickmarks.CenterText := 'Heating'
  else
  if TMSFNCWidgetSetPoint1.SetPoint < ATemp then
    TMSFNCWidgetSetPoint1.Tickmarks.CenterText := 'Cooling'
  else
    TMSFNCWidgetSetPoint1.Tickmarks.CenterText := 'OK';
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  TMSFNCWidgetSetPoint1.SetPoint := strtoint(Edit1.Text);
  TMSFNCWidgetGauge1.ExtraNeedles[0].Value := TMSFNCWidgetSetPoint1.SetPoint;
  SetTemperature(Trackbar1.Position);
end;

procedure TForm1.TrackBar1Change(Sender: TObject);
begin
  SetTemperature(TrackBar1.Position);
end;

end.

