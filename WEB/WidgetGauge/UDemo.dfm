object Form1: TForm1
  Left = 0
  Top = 0
  Width = 551
  Height = 419
  Caption = 'TMS FNC Widget Gauge Demo'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  FormContainer = 'appcontent'
  OnCreate = FormCreate
  TabOrder = 1
  object Label1: TWebLabel
    Left = 32
    Top = 326
    Width = 122
    Height = 16
    Caption = 'Change Temperature'
  end
  object Panel1: TWebPanel
    Left = 0
    Top = 0
    Width = 537
    Height = 320
    BorderStyle = bsSingle
    object TMSFNCWidgetGauge1: TTMSFNCWidgetGauge
      Left = 0
      Top = 0
      Width = 537
      Height = 320
      Align = alClient
      ParentDoubleBuffered = False
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      TabOrder = 0
      Border.Kind = gskSolid
      Border.Color = 6908265
      MaximumValue = 100.000000000000000000
      OuterCircle.Width = 0.030000000000000000
      InnerCircle.Color = 15130800
      OuterRim.Color = 9470064
      OuterRim.Width = 2
      Arc.Width = 0.030000000000000000
      Arc.Threshold.Center = 25.000000000000000000
      Arc.Threshold.EndValue = 100.000000000000000000
      ValueFont.Charset = DEFAULT_CHARSET
      ValueFont.Color = 5197615
      ValueFont.Height = -16
      ValueFont.Name = 'Arial'
      ValueFont.Style = []
      ValueFormat = '000.00'
      Sections = <>
      ExtraNeedles = <>
    end
  end
  object CheckBox1: TWebCheckBox
    Left = 211
    Top = 344
    Width = 97
    Height = 17
    Caption = 'Animation'
    Checked = True
    OnClick = CheckBox1Click
    State = cbChecked
    TabOrder = 1
  end
  object CheckBox2: TWebCheckBox
    Left = 330
    Top = 344
    Width = 207
    Height = 17
    Caption = 'Sections with Custom Margin'
    OnClick = CheckBox2Click
    State = cbUnchecked
    TabOrder = 2
  end
  object TrackBar1: TTrackBar
    Left = 16
    Top = 344
    Width = 178
    Height = 45
    Max = 60
    Min = -40
    Position = 20
    TabOrder = 3
    TabStop = False
    OnChange = TrackBar1Change
  end
end
