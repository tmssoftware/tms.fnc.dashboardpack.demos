object Form1: TForm1
  Left = 0
  Top = 0
  Width = 683
  Height = 461
  Caption = 'TMS FNC Widget Multi Progress Demo'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Arial'
  Font.Style = []
  FormContainer = 'appcontent'
  OnCreate = FormCreate
  TabOrder = 1
  object Panel1: TWebPanel
    Left = 0
    Top = 0
    Width = 683
    Height = 49
    Align = alTop
    BorderStyle = bsSingle
    object Button1: TWebButton
      Left = 24
      Top = 13
      Width = 137
      Height = 25
      Caption = 'Update Status'
      OnClick = Button1Click
      TabOrder = 0
    end
  end
  object TMSFNCWidgetMultiProgress1: TTMSFNCWidgetMultiProgress
    Left = 0
    Top = 49
    Width = 641
    Height = 392
    ParentDoubleBuffered = False
    DoubleBuffered = True
    TabOrder = 1
    CircleOptions.Margin = 30
    CircleItems = <
      item
        Fill.Kind = gfkSolid
        Fill.Orientation = gfoVertical
        Fill.Color = 13749760
        Fill.ColorTo = clGray
        Fill.ColorMirror = -1
        Fill.ColorMirrorTo = -1
        Fill.TextureMode = gtmStretch
        UnfinishedFill.Kind = gfkSolid
        UnfinishedFill.Orientation = gfoVertical
        UnfinishedFill.Color = clWhite
        UnfinishedFill.ColorTo = clGray
        UnfinishedFill.ColorMirror = -1
        UnfinishedFill.ColorMirrorTo = -1
        UnfinishedFill.TextureMode = gtmStretch
        Value = 50.000000000000000000
        Caption = 'Item 1'
      end
      item
        Fill.Kind = gfkSolid
        Fill.Orientation = gfoVertical
        Fill.Color = 42495
        Fill.ColorTo = clGray
        Fill.ColorMirror = -1
        Fill.ColorMirrorTo = -1
        Fill.TextureMode = gtmStretch
        UnfinishedFill.Kind = gfkSolid
        UnfinishedFill.Orientation = gfoVertical
        UnfinishedFill.Color = clWhite
        UnfinishedFill.ColorTo = clGray
        UnfinishedFill.ColorMirror = -1
        UnfinishedFill.ColorMirrorTo = -1
        UnfinishedFill.TextureMode = gtmStretch
        Value = 50.000000000000000000
        Caption = 'Item 2'
      end
      item
        Fill.Kind = gfkSolid
        Fill.Orientation = gfoVertical
        Fill.Color = 3329330
        Fill.ColorTo = clGray
        Fill.ColorMirror = -1
        Fill.ColorMirrorTo = -1
        Fill.TextureMode = gtmStretch
        UnfinishedFill.Kind = gfkSolid
        UnfinishedFill.Orientation = gfoVertical
        UnfinishedFill.Color = clWhite
        UnfinishedFill.ColorTo = clGray
        UnfinishedFill.ColorMirror = -1
        UnfinishedFill.ColorMirrorTo = -1
        UnfinishedFill.TextureMode = gtmStretch
        Value = 50.000000000000000000
        Caption = 'Item 3'
      end>
    Legend.Font.Charset = DEFAULT_CHARSET
    Legend.Font.Color = clGray
    Legend.Font.Height = -16
    Legend.Font.Name = 'Arial Narrow'
    Legend.Font.Style = []
    Legend.Position = lpTopRight
    Legend.Border.Kind = gskNone
    Legend.Border.Color = 11119017
    Legend.Fill.Kind = gfkSolid
    Legend.Fill.Orientation = gfoVertical
    Legend.Fill.Color = clWhite
    Legend.Fill.ColorTo = clGray
    Legend.Fill.ColorMirror = -1
    Legend.Fill.ColorMirrorTo = -1
    Legend.Fill.TextureMode = gtmStretch
    Border.Kind = gskSolid
    Border.Color = 6908265
    CaptionOptions.Font.Charset = DEFAULT_CHARSET
    CaptionOptions.Font.Color = clGray
    CaptionOptions.Font.Height = -19
    CaptionOptions.Font.Name = 'Arial'
    CaptionOptions.Font.Style = []
    ValueFont.Charset = DEFAULT_CHARSET
    ValueFont.Color = 5197615
    ValueFont.Height = -16
    ValueFont.Name = 'Arial Narrow'
    ValueFont.Style = [fsBold]
    ValueFormat = '%g%%'
  end
end
