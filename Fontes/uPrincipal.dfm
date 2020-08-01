object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'FloatPanelClient'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object cbDesignMode: TCheckBox
    Left = 16
    Top = 16
    Width = 81
    Height = 17
    Caption = 'Design Mode'
    TabOrder = 0
    OnClick = cbDesignModeClick
  end
  object FloatPanel: TFloatPanel
    Left = 304
    Top = 96
    Width = 50
    Height = 50
    Caption = 'FloatPanel'
    Color = clBlack
    ParentBackground = False
    TabOrder = 1
    DesignMode = False
  end
end
