unit UDemo;


interface

uses
  System.SysUtils, System.Classes, WebLib.Graphics, WebLib.Forms,
  VCL.TMSFNCTypes, VCL.TMSFNCUtils,
  VCL.TMSFNCCustomComponent, VCL.TMSFNCGraphics, VCL.TMSFNCGraphicsTypes,
  Vcl.StdCtrls, WebLib.StdCtrls, Vcl.Controls, 
  WebLib.ExtCtrls, VCL.TMSFNCCustomControl,  
  VCL.TMSFNCWidgetDistributionIndicator;

type
  TForm1 = class(TWebForm)
    Panel1: TWebPanel;
    ComboBox1: TWebComboBox;
    RadioButton1: TWebRadioButton;
    RadioButton2: TWebRadioButton;
    Label1: TWebLabel;
    TMSFNCWidgetDistributionIndicator1: TTMSFNCWidgetDistributionIndicator;
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  TMSFNCWidgetDistributionIndicator1.Header.Text := 'Sales by Countries';

  TMSFNCWidgetDistributionIndicator1.Values[0].Value := 31 * 100;
  TMSFNCWidgetDistributionIndicator1.Values[0].Text := 'USA';
  TMSFNCWidgetDistributionIndicator1.Values[1].Value := 20 * 100;
  TMSFNCWidgetDistributionIndicator1.Values[1].Text := 'UK';
  TMSFNCWidgetDistributionIndicator1.Values[2].Value :=  17 * 100;
  TMSFNCWidgetDistributionIndicator1.Values[2].Text := 'Belgium';
  TMSFNCWidgetDistributionIndicator1.Values[3].Value :=  16 * 100;
  TMSFNCWidgetDistributionIndicator1.Values[3].Text := 'Germany';
  TMSFNCWidgetDistributionIndicator1.Values[4].Value :=  10 * 100;
  TMSFNCWidgetDistributionIndicator1.Values[4].Text := 'Italy';
  TMSFNCWidgetDistributionIndicator1.Values[5].Value :=  6 * 100;
  TMSFNCWidgetDistributionIndicator1.Values[5].Text := 'Spain';

  ComboBox1.Items.Add('Donut');
  ComboBox1.Items.Add('Pie');
  ComboBox1.Items.Add('Funnel');
  ComboBox1.Items.Add('Horizontal Bar');
  ComboBox1.Items.Add('Vertical Var');
  ComboBox1.ItemIndex := Integer(TMSFNCWidgetDistributionIndicator1.DistributionType);
  RadioButton1.Caption := 'Show Percentages';
  RadioButton2.Caption := 'Show Absolute Values';
  RadioButton1.Checked := true;
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
  TMSFNCWidgetDistributionIndicator1.DistributionType :=
        TTMSFNCWidgetDistributionType(ComboBox1.ItemIndex);
end;

procedure TForm1.RadioButton1Click(Sender: TObject);
begin
  if RadioButton1.Checked then
    TMSFNCWidgetDistributionIndicator1.ValueType := vtPercentage
  else
    TMSFNCWidgetDistributionIndicator1.ValueType := vtAbsolute;
end;


end.
