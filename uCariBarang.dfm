object frmCariBarang: TfrmCariBarang
  Left = 379
  Top = 114
  Width = 681
  Height = 478
  Caption = '.:. Cari Barang .:.'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  DesignSize = (
    673
    451)
  PixelsPerInch = 96
  TextHeight = 13
  object stat_CariBarang: TStatusBar
    Left = 0
    Top = 432
    Width = 673
    Height = 19
    Panels = <
      item
        Alignment = taCenter
        Bevel = pbNone
        Text = 'Jumlah Data:'
        Width = 80
      end
      item
        Alignment = taCenter
        Text = '0123456789'
        Width = 100
      end
      item
        Bevel = pbNone
        Text = 'Shortcut:'
        Width = 50
      end
      item
        Text = 
          'F1 : Text Cari, F2 : Pilih, F3 / CTRL+Z : Batal, F4 / F9 : Kemba' +
          'li'
        Width = 1000
      end>
  end
  object dbgrd_Cari: TDBGrid
    Left = 0
    Top = 32
    Width = 672
    Height = 400
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = ds_qry_CariBarang
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = dbgrd_CariDblClick
    OnKeyPress = dbgrd_CariKeyPress
    OnTitleClick = dbgrd_CariTitleClick
  end
  object edt_Cari1: TEdit
    Left = 8
    Top = 8
    Width = 477
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 0
    OnKeyDown = edt_Cari1KeyDown
    OnKeyPress = edt_Cari1KeyPress
  end
  object btn_Batal: TButton
    Left = 487
    Top = 8
    Width = 90
    Height = 22
    Anchors = [akTop, akRight]
    Caption = '&Batal [F&3]'
    ModalResult = 2
    TabOrder = 1
  end
  object btn_Kembali: TButton
    Left = 577
    Top = 8
    Width = 90
    Height = 22
    Anchors = [akTop, akRight]
    Caption = 'Kembali  [F&4]'
    ModalResult = 1
    TabOrder = 2
  end
  object cn: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=E:\PROJECTS\D7\D10' +
      '_Toko_006\Project1.accdb;Persist Security Info=False;'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.ACE.OLEDB.12.0'
    Left = 624
    Top = 8
  end
  object ds_qry_CariBarang: TDataSource
    DataSet = qry_CariBarang
    Left = 481
    Top = 193
  end
  object qry_CariBarang: TADOQuery
    Connection = cn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * From Barang '
      'Where (Nama_Barang Like '#39'%A%'#39') '
      'OR (Barcode Like '#39'%A%'#39')'
      'OR (Merk_Type Like '#39'%A%'#39');')
    Left = 481
    Top = 145
    object atncfld_CariBarangID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
      Visible = False
    end
    object wdstrngfld_CariBarangBarcode: TWideStringField
      DisplayWidth = 14
      FieldName = 'Barcode'
    end
    object wdstrngfld_CariBarangNama_Barang: TWideStringField
      DisplayWidth = 20
      FieldName = 'Nama_Barang'
      Size = 60
    end
    object wdstrngfld_CariBarangMerk_Type: TWideStringField
      DisplayWidth = 18
      FieldName = 'Merk_Type'
      Size = 30
    end
    object wdstrngfld_CariBarangSatuan: TWideStringField
      DisplayWidth = 13
      FieldName = 'Satuan'
    end
    object bcdfld_CariBarangBiaya: TBCDField
      DisplayWidth = 13
      FieldName = 'Biaya'
      Visible = False
      Precision = 19
    end
    object bcdfld_CariBarangHarga: TBCDField
      DisplayWidth = 24
      FieldName = 'Harga'
      Precision = 19
    end
    object Tf__CariBarangJumlah_Stok: TIntegerField
      DisplayWidth = 12
      FieldName = 'Jumlah_Stok'
      Visible = False
    end
    object bcdfld_CariBarangDiskon: TBCDField
      DisplayWidth = 24
      FieldName = 'Diskon'
      Precision = 19
    end
    object bcdfld_CariBarangPajak: TBCDField
      DisplayWidth = 24
      FieldName = 'Pajak'
      Visible = False
      Precision = 19
    end
    object wdstrngfld_CariBarangKategori: TWideStringField
      DisplayWidth = 60
      FieldName = 'Kategori'
      Visible = False
      Size = 50
    end
    object wdstrngfld_CariBarangKeterangan: TWideStringField
      DisplayWidth = 60
      FieldName = 'Keterangan'
      Visible = False
      Size = 50
    end
    object Tf__CariBarangSuplayer_ID: TIntegerField
      FieldName = 'Suplayer_ID'
      Visible = False
    end
  end
  object actlst1: TActionList
    Left = 584
    Top = 80
    object act_Isi_Barcode: TAction
      Caption = 'act_Isi_Barcode'
      ShortCut = 112
      OnExecute = act_Isi_BarcodeExecute
    end
    object act_Pilih_Data_Grid: TAction
      Caption = 'act_Pilih_Data_Grid'
      ShortCut = 113
      OnExecute = act_Pilih_Data_GridExecute
    end
    object act_Batal: TAction
      Caption = 'act_Batal'
      ShortCut = 114
      OnExecute = act_BatalExecute
    end
    object act_Kembali: TAction
      Caption = 'act_Kembali'
      ShortCut = 115
      OnExecute = act_KembaliExecute
    end
    object act_Batal_1: TAction
      Caption = 'act_Batal_1'
      ShortCut = 16474
      OnExecute = act_BatalExecute
    end
    object act_Kembali_1: TAction
      Caption = 'act_Kembali'
      ShortCut = 120
      OnExecute = act_KembaliExecute
    end
  end
end
