object FmPrinc: TFmPrinc
  Left = 0
  Top = 0
  Caption = 'Frutas'
  ClientHeight = 213
  ClientWidth = 293
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 126
    Height = 13
    Caption = 'Lista de Frutas dispon'#237'veis'
  end
  object Label2: TLabel
    Left = 160
    Top = 8
    Width = 96
    Height = 13
    Caption = 'Frutas Selecionadas'
  end
  object LstBxFrutasEscolhidas: TListBox
    Left = 160
    Top = 27
    Width = 121
    Height = 178
    ItemHeight = 13
    TabOrder = 0
    OnKeyPress = LstBxFrutasEscolhidasKeyPress
  end
  object ChkLstFrutas: TCheckListBox
    Left = 8
    Top = 27
    Width = 121
    Height = 178
    ItemHeight = 13
    Items.Strings = (
      'Abacaxi'
      'Amora'
      'Ariticum'
      'Banana'
      'Caju'
      'Carambola'
      'Goiaba'
      'Kiwi'
      'Lim'#227'o'
      'Ma'#231#227
      'Mam'#227'o'
      'Manga'
      'Maracuj'#225
      'Melancia'
      'Mel'#227'o'
      'Mexirica'
      'P'#234'ra'
      'Tomate'
      'Toranja'
      'Uva')
    Sorted = True
    TabOrder = 1
    OnClick = ChkLstFrutasClick
  end
end
