object Form1: TForm1
  Left = 0
  Top = 0
  Width = 616
  Height = 356
  Caption = 'TMS FNC Widget Trend Indicator Demo'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  FormContainer = 'appcontent'
  OnCreate = FormCreate
  TabOrder = 1
  object Button1: TWebButton
    Left = 143
    Top = 318
    Width = 170
    Height = 25
    Caption = 'Get Next Page Stats'
    OnClick = Button1Click
    TabOrder = 0
  end
  object Panel1: TWebPanel
    Left = 0
    Top = 0
    Width = 609
    Height = 305
    BorderStyle = bsSingle
    object TMSFNCWidgetTrendIndicator1: TTMSFNCWidgetTrendIndicator
      Left = 0
      Top = 0
      Width = 609
      Height = 305
      Align = alClient
      ParentDoubleBuffered = False
      DoubleBuffered = True
      TabOrder = 0
      Border.Kind = gskSolid
      Border.Color = 6908265
      Value = 5923.000000000000000000
      ValueFont.Charset = DEFAULT_CHARSET
      ValueFont.Color = clGray
      ValueFont.Height = -19
      ValueFont.Name = 'Arial'
      ValueFont.Style = []
      ValueFormat = '%.0n'
      DescriptionFont.Charset = DEFAULT_CHARSET
      DescriptionFont.Color = 5197615
      DescriptionFont.Height = -16
      DescriptionFont.Name = 'Arial'
      DescriptionFont.Style = []
      DescriptionText = 'Visits'
      GraphColor.Kind = gskSolid
      GraphColor.Color = clNavy
      GraphColor.Width = 2.000000000000000000
      GraphFill.Kind = gfkSolid
      GraphFill.Orientation = gfoVertical
      GraphFill.Color = 15130800
      GraphFill.ColorTo = clGray
      GraphFill.ColorMirror = -1
      GraphFill.ColorMirrorTo = -1
      GraphFill.TextureMode = gtmStretch
      Values = <
        item
          Value = 3479.000000000000000000
        end
        item
          Value = 5634.000000000000000000
        end
        item
          Value = 5942.000000000000000000
        end
        item
          Value = 5283.000000000000000000
        end
        item
          Value = 6138.000000000000000000
        end
        item
          Value = 5838.000000000000000000
        end>
    end
  end
  object CheckBox1: TWebCheckBox
    Left = 24
    Top = 322
    Width = 97
    Height = 17
    Caption = 'Show Bars'
    OnClick = CheckBox1Click
    State = cbUnchecked
    TabOrder = 2
  end
end
