unit UDemo;


interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Edit, FMX.Controls.Presentation, FMX.TMSFNCCustomComponent,
  FMX.TMSFNCBitmapContainer, FMX.TMSFNCTypes, FMX.TMSFNCUtils,
  FMX.TMSFNCGraphics, FMX.TMSFNCGraphicsTypes, FMX.TMSFNCCustomControl, 
  FMX.TMSFNCWidgetDistributionIndicator, FMX.ListBox;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    ComboBox1: TComboBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Label1: TLabel;
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

{$R *.fmx}

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
  RadioButton1.Text := 'Show Percentages';
  RadioButton2.Text := 'Show Absolute Values';
  RadioButton1.IsChecked := true;
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
  TMSFNCWidgetDistributionIndicator1.DistributionType :=
        TTMSFNCWidgetDistributionType(ComboBox1.ItemIndex);
end;

procedure TForm1.RadioButton1Click(Sender: TObject);
begin
  if RadioButton1.IsChecked then
    TMSFNCWidgetDistributionIndicator1.ValueType := vtPercentage
  else
    TMSFNCWidgetDistributionIndicator1.ValueType := vtAbsolute;
end;


end.
