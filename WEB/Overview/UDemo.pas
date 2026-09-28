unit UDemo;

interface

uses
  System.SysUtils, System.Classes, WEBLib.Graphics, WEBLib.Forms, WEBLib.Dialogs,
  VCL.TMSFNCTypes, VCL.TMSFNCUtils, VCL.TMSFNCGraphics, VCL.TMSFNCGraphicsTypes,
  VCL.TMSFNCWidgetLCDLabel, Vcl.Controls, VCL.TMSFNCCustomControl,
  VCL.TMSFNCWidgetGauge, WEBLib.Controls, WEBLib.ExtCtrls,
  VCL.TMSFNCWidgetTrendIndicator, WEBLib.StdCtrls,
  VCL.TMSFNCWidgetDistributionIndicator, VCL.TMSFNCWidgetMultiProgress,
  VCL.TMSFNCWidgetProgress, VCL.TMSFNCWidgetMarqueeContinuousProgress,
  VCL.TMSFNCWidgetMarqueeProgress, VCL.TMSFNCWidgetSetPoint;

type
  TForm41 = class(TWebForm)
    TMSFNCWidgetGauge1: TTMSFNCWidgetGauge;
    TMSFNCWidgetLCDLabel1: TTMSFNCWidgetLCDLabel;
    WebTimer1: TWebTimer;
    TMSFNCWidgetLCDLabel2: TTMSFNCWidgetLCDLabel;
    TMSFNCWidgetTrendIndicator1: TTMSFNCWidgetTrendIndicator;
    TMSFNCWidgetDistributionIndicator1: TTMSFNCWidgetDistributionIndicator;
    TMSFNCWidgetMarqueeProgress1: TTMSFNCWidgetMarqueeProgress;
    TMSFNCWidgetMarqueeContinuousProgress1: TTMSFNCWidgetMarqueeContinuousProgress;
    TMSFNCWidgetProgress1: TTMSFNCWidgetProgress;
    TMSFNCWidgetMultiProgress1: TTMSFNCWidgetMultiProgress;
    TMSFNCWidgetSetPoint1: TTMSFNCWidgetSetPoint;
    procedure WebTimer1Timer(Sender: TObject);
  end;

var
  Form41: TForm41;

implementation

{$R *.dfm}

procedure TForm41.WebTimer1Timer(Sender: TObject);
var
  v: Double;
begin
  TMSFNCWidgetLCDLabel1.Caption.TimeValue := Now;
  TMSFNCWidgetLCDLabel2.Caption.TimeValue := Now;
  TMSFNCWidgetGauge1.Value := Random(150) - Random(50);
  v := TMSFNCWidgetGauge1.Value;
  TMSFNCWidgetTrendIndicator1.Values.Add.Value := v;
  TMSFNCWidgetTrendIndicator1.Value := v;
  if TMSFNCWidgetTrendIndicator1.Values.Count > 20 then
    TMSFNCWidgetTrendIndicator1.Values.Delete(0);

  if (v >= -50) and (v <= -5) then
  begin
    TMSFNCWidgetDistributionIndicator1.Values[0].Value := TMSFNCWidgetDistributionIndicator1.Values[0].Value + 1;
    TMSFNCWidgetMultiProgress1.CircleItems[0].Value := TMSFNCWidgetMultiProgress1.CircleItems[0].Value + 5;
    if TMSFNCWidgetMultiProgress1.CircleItems[0].Value >= 100 then
      TMSFNCWidgetMultiProgress1.CircleItems[0].Value := 0;
  end
  else if (v > -5) and (v <= 25) then
  begin
    TMSFNCWidgetDistributionIndicator1.Values[1].Value := TMSFNCWidgetDistributionIndicator1.Values[1].Value + 1;
    TMSFNCWidgetMultiProgress1.CircleItems[1].Value := TMSFNCWidgetMultiProgress1.CircleItems[1].Value + 5;
    if TMSFNCWidgetMultiProgress1.CircleItems[1].Value >= 100 then
      TMSFNCWidgetMultiProgress1.CircleItems[1].Value := 0;
  end
  else if (v > 25) and (v <= 40) then
  begin
    TMSFNCWidgetDistributionIndicator1.Values[2].Value := TMSFNCWidgetDistributionIndicator1.Values[2].Value + 1;
    TMSFNCWidgetMultiProgress1.CircleItems[2].Value := TMSFNCWidgetMultiProgress1.CircleItems[2].Value + 5;
    if TMSFNCWidgetMultiProgress1.CircleItems[2].Value >= 100 then
      TMSFNCWidgetMultiProgress1.CircleItems[2].Value := 0;
  end
  else if (v > 40) and (v <= 100) then
    TMSFNCWidgetDistributionIndicator1.Values[3].Value := TMSFNCWidgetDistributionIndicator1.Values[3].Value + 1;

  TMSFNCWidgetMarqueeProgress1.Value := TMSFNCWidgetMarqueeProgress1.Value + 5;
  TMSFNCWidgetProgress1.Value := TMSFNCWidgetProgress1.Value + 5;

  TMSFNCWidgetSetPoint1.Value := v;

  if TMSFNCWidgetProgress1.Value >= 100 then
    TMSFNCWidgetProgress1.Value := 0;

  if TMSFNCWidgetMarqueeProgress1.Value >= 100 then
    TMSFNCWidgetMarqueeProgress1.Value := 0;
end;

end.