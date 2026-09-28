unit UDemo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.Types, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VCL.TMSFNCTypes, VCL.TMSFNCUtils,
  VCL.TMSFNCGraphics, VCL.TMSFNCGraphicsTypes, VCL.TMSFNCCustomControl,
  Vcl.StdCtrls, VCL.TMSFNCWidgetProgress, Vcl.ExtCtrls,
  VCL.TMSFNCCustomComponent, VCL.TMSFNCBitmapContainer, VCL.TMSFNCWidgetGauge,
  Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    TMSFNCWidgetGauge1: TTMSFNCWidgetGauge;
    TrackBar1: TTrackBar;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
  private
    { Private declarations }
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
  TMSFNCWidgetGauge1.Value := 20;
  TMSFNCWidgetGauge1.MinimumValue := -40;
  TMSFNCWidgetGauge1.MaximumValue := 60;
  TMSFNCWidgetGauge1.OuterCircle.Color := gcDarkslategray;
  TMSFNCWidgetGauge1.InnerCircle.Color := gcLightgray;
  TMSFNCWidgetGauge1.OuterRim.Color := gcLightgray;
  TMSFNCWidgetGauge1.Arc.Color := gcMedGray;
  TMSFNCWidgetGauge1.Arc.Threshold.Color := gcDarkslategray;
  TMSFNCWidgetGauge1.Digit.BackGroundColor := gcWhite;
  TMSFNCWidgetGauge1.DialText := 'Temperature';
  TMSFNCWidgetGauge1.Font.Color := gcBlack;
  TMSFNCWidgetGauge1.Animation := false;

  TMSFNCWidgetGauge1.Sections.BeginUpdate;
  try
    aSection := TMSFNCWidgetGauge1.Sections.Add;
    aSection.StartValue := -40;
    aSection.EndValue := 10;
    aSection.Color := gcLime;
    aSection.SectionType := stBorder;
    aSection := TMSFNCWidgetGauge1.Sections.Add;
    aSection.StartValue := 10;
    aSection.EndValue := 40;
    aSection.Color := gcGold;
    aSection.SectionType := stBorder;
    aSection := TMSFNCWidgetGauge1.Sections.Add;
    aSection.StartValue := 40;
    aSection.EndValue := 60;
    aSection.Color := gcOrangeRed;
    aSection.SectionType := stBorder;
  finally
    TMSFNCWidgetGauge1.Sections.EndUpdate;
  end;

  aNeedle := TMSFNCWidgetGauge1.ExtraNeedles.Add;
  aNeedle.ShineColor := gcRed;
  aNeedle.ShineColorTo := gcOrangeRed;
  aNeedle.Value := 45;
end;

procedure TForm1.TrackBar1Change(Sender: TObject);
begin
  TMSFNCWidgetGauge1.Value := TrackBar1.Position;
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
  TMSFNCWidgetGauge1.Animation := CheckBox1.Checked;
end;


procedure TForm1.CheckBox2Click(Sender: TObject);
var
  i: Integer;
begin
  for i := 0 to TMSFNCWidgetGauge1.Sections.Count-1 do
  begin
    if not (Sender as TCheckBox).Checked then
      TMSFNCWidgetGauge1.Sections[i].SectionType := stBorder
    else
      TMSFNCWidgetGauge1.Sections[i].SectionType := stCustomMargin;
  end;
end;

end.

