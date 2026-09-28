unit UDemo;

interface

uses
  System.SysUtils, System.Classes, WebLib.Graphics, WebLib.Forms,
  VCL.TMSFNCTypes, VCL.TMSFNCUtils,
  VCL.TMSFNCCustomComponent, VCL.TMSFNCGraphics, VCL.TMSFNCGraphicsTypes,
  Vcl.StdCtrls, WebLib.StdCtrls, Vcl.Controls, 
  WebLib.ExtCtrls, VCL.TMSFNCCustomControl,
  VCL.TMSFNCWidgetTrendIndicator;

type
  TForm1 = class(TWebForm)
    Button1: TWebButton;
    Panel1: TWebPanel;
    CheckBox1: TWebCheckBox;
    TMSFNCWidgetTrendIndicator1: TTMSFNCWidgetTrendIndicator;
    procedure FormCreate(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    procedure FillRandom;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FillRandom;
var
  I: Integer;
  v: TTMSFNCWidgetTrendValue;
  lastValue: Single;
begin
  TMSFNCWidgetTrendIndicator1.Values.BeginUpdate;
  try
    TMSFNCWidgetTrendIndicator1.Values.Clear;
    lastValue := 49;
    for I := 0 to 15 do
    begin
      v := TMSFNCWidgetTrendIndicator1.Values.Add;
      if Random(4) mod 2 = 0 then
        v.Value := lastValue + Random(5)
      else
        v.Value := lastValue - Random(5);
      lastValue := v.Value;
    end;
  finally
    TMSFNCWidgetTrendIndicator1.Values.EndUpdate;
  end;
end;


procedure TForm1.FormCreate(Sender: TObject);
begin
  TMSFNCWidgetTrendIndicator1.DescriptionText := 'Page Views, Product Catalog 1';
  TMSFNCWidgetTrendIndicator1.Value := 24358;
  CheckBox1.Checked := TMSFNCWidgetTrendIndicator1.GraphType = gtBar;
  FillRandom;
end;

var
  num: Integer = 1;

procedure TForm1.Button1Click(Sender: TObject);
begin
  FillRandom;
  Inc(num);
  TMSFNCWidgetTrendIndicator1.DescriptionText :=
     Format('Page Views, Product Catalog %d', [num]);
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked then
    TMSFNCWidgetTrendIndicator1.GraphType := gtBar
  else
    TMSFNCWidgetTrendIndicator1.GraphType := gtLine;
end;

end.
