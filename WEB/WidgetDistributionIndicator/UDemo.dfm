object Form1: TForm1
  Left = 0
  Top = 0
  Width = 538
  Height = 453
  Caption = 'TMS FNC Widget Distribution Indicator Demo'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  FormContainer = 'appcontent'
  OnCreate = FormCreate
  TabOrder = 1
  object Label1: TWebLabel
    Left = 24
    Top = 377
    Width = 101
    Height = 16
    Caption = 'Distribution Type:'
  end
  object Panel1: TWebPanel
    Left = 0
    Top = 0
    Width = 530
    Height = 352
    BorderStyle = bsSingle
    object TMSFNCWidgetDistributionIndicator1: TTMSFNCWidgetDistributionIndicator
      Left = 0
      Top = 0
      Width = 530
      Height = 352
      Align = alClient
      ParentDoubleBuffered = False
      DoubleBuffered = True
      TabOrder = 0
      Border.Kind = gskSolid
      Border.Color = 6908265
      DonutThickness = 0.250000000000000000
      BarWidth = 0.300000011920929000
      BarLength = 0.899999976158142100
      ValueFont.Charset = DEFAULT_CHARSET
      ValueFont.Color = 5197615
      ValueFont.Height = -16
      ValueFont.Name = 'Arial'
      ValueFont.Style = []
      ValueType = vtPercentage
      ValueFormatPercentage = '%.0n%%'
      ValueFormatAbsolute = '%.0n'
      Values = <
        item
          Value = 22.000000000000000000
          Text = 'UK'
          Fill.Kind = gfkSolid
          Fill.Orientation = gfoVertical
          Fill.Color = 13749760
          Fill.ColorTo = clGray
          Fill.ColorMirror = -1
          Fill.ColorMirrorTo = -1
          Fill.TextureMode = gtmStretch
          Stroke.Kind = gskSolid
          Stroke.Color = 6908265
        end
        item
          Value = 10.000000000000000000
          Text = 'Italy'
          Fill.Kind = gfkSolid
          Fill.Orientation = gfoVertical
          Fill.Color = 42495
          Fill.ColorTo = clGray
          Fill.ColorMirror = -1
          Fill.ColorMirrorTo = -1
          Fill.TextureMode = gtmStretch
          Stroke.Kind = gskSolid
          Stroke.Color = 6908265
        end
        item
          Value = 21.000000000000000000
          Text = 'Belgium'
          Fill.Kind = gfkSolid
          Fill.Orientation = gfoVertical
          Fill.Color = 3329330
          Fill.ColorTo = clGray
          Fill.ColorMirror = -1
          Fill.ColorMirrorTo = -1
          Fill.TextureMode = gtmStretch
          Stroke.Kind = gskSolid
          Stroke.Color = 6908265
        end
        item
          Value = 25.000000000000000000
          Text = 'USA'
          Fill.Kind = gfkSolid
          Fill.Orientation = gfoVertical
          Fill.Color = 15631086
          Fill.ColorTo = clGray
          Fill.ColorMirror = -1
          Fill.ColorMirrorTo = -1
          Fill.TextureMode = gtmStretch
          Stroke.Kind = gskSolid
          Stroke.Color = 6908265
        end
        item
          Value = 16.000000000000000000
          Text = 'Germany'
          Fill.Kind = gfkSolid
          Fill.Orientation = gfoVertical
          Fill.Color = clYellow
          Fill.ColorTo = clGray
          Fill.ColorMirror = -1
          Fill.ColorMirrorTo = -1
          Fill.TextureMode = gtmStretch
          Stroke.Kind = gskSolid
          Stroke.Color = 6908265
        end
        item
          Value = 6.000000000000000000
          Text = 'Spain'
          Fill.Kind = gfkSolid
          Fill.Orientation = gfoVertical
          Fill.Color = 17919
          Fill.ColorTo = clGray
          Fill.ColorMirror = -1
          Fill.ColorMirrorTo = -1
          Fill.TextureMode = gtmStretch
          Stroke.Kind = gskSolid
          Stroke.Color = 6908265
        end>
      Header.Text = 'Sales by Countries'
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clGray
      Header.Font.Height = -19
      Header.Font.Name = 'Arial'
      Header.Font.Style = []
      Footer.Font.Charset = DEFAULT_CHARSET
      Footer.Font.Color = clGray
      Footer.Font.Height = -19
      Footer.Font.Name = 'Arial'
      Footer.Font.Style = []
      Legend.Font.Charset = DEFAULT_CHARSET
      Legend.Font.Color = clGray
      Legend.Font.Height = -16
      Legend.Font.Name = 'Arial Narrow'
      Legend.Font.Style = []
      Legend.Position = lpBottom
      Funnel.WidthTop = 0.600000023841857900
      Funnel.WidthBottom = 0.330000013113021900
      Funnel.Gap = 0.019999999552965160
    end
  end
  object ComboBox1: TWebComboBox
    Left = 144
    Top = 374
    Width = 169
    Height = 24
    ItemIndex = -1
    TabOrder = 0
    OnChange = ComboBox1Change
  end
  object RadioButton1: TWebRadioButton
    Left = 24
    Top = 416
    Width = 225
    Height = 17
    Caption = 'RadioButton1'
    Checked = False
    GroupName = 'VT'
    OnClick = RadioButton1Click
    TabOrder = 2
  end
  object RadioButton2: TWebRadioButton
    Left = 280
    Top = 416
    Width = 225
    Height = 17
    Caption = 'RadioButton2'
    Checked = False
    GroupName = 'VT'
    OnClick = RadioButton1Click
    TabOrder = 3
  end
end
