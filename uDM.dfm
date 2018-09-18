object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 643
  Top = 17
  Height = 692
  Width = 680
  object tbl_Temp_Penjualan: TADOTable
    Connection = cn
    CursorType = ctStatic
    TableName = 'Temp_Penjualan'
    Left = 112
    Top = 24
    object atncfld_Temp_PenjualanID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object Tf__Temp_PenjualanPelanggan_ID: TIntegerField
      FieldName = 'Pelanggan_ID'
    end
    object Tf__Temp_PenjualanKaryawan_ID: TIntegerField
      FieldName = 'Karyawan_ID'
    end
    object wdstrngfld_Temp_PenjualanKeterangan: TWideStringField
      FieldName = 'Keterangan'
      Size = 200
    end
    object wdstrngfld_Temp_PenjualanNo_Resi: TWideStringField
      FieldName = 'No_Resi'
      Size = 30
    end
    object bcdfld_Temp_PenjualanTotal_Diskon: TBCDField
      FieldName = 'Total_Diskon'
      currency = True
      Precision = 19
    end
    object bcdfld_Temp_PenjualanTotal_Penjualan: TBCDField
      FieldName = 'Total_Penjualan'
      currency = True
      Precision = 19
    end
    object dtmfld_Temp_PenjualanWaktu: TDateTimeField
      FieldName = 'Waktu'
    end
    object bcdfld_Temp_PenjualanGrand_Total: TBCDField
      FieldName = 'Grand_Total'
      currency = True
      Precision = 19
    end
    object bcdfld_Temp_PenjualanPotongan_Lain: TBCDField
      FieldName = 'Potongan_Lain'
      currency = True
      Precision = 19
    end
    object bcdfld_Temp_PenjualanBea_Lain: TBCDField
      FieldName = 'Bea_Lain'
      currency = True
      Precision = 19
    end
    object bcdfld_Temp_PenjualanPPn: TBCDField
      FieldName = 'PPn'
      currency = True
      Precision = 19
    end
    object bcdfld_Temp_PenjualanBayar: TBCDField
      FieldName = 'Bayar'
      currency = True
      Precision = 19
    end
    object bcdfld_Temp_PenjualanKembali: TBCDField
      FieldName = 'Kembali'
      currency = True
      Precision = 19
    end
    object bcdfld_Temp_PenjualanTotal_Harga_Dasar: TBCDField
      FieldName = 'Total_Harga_Dasar'
      Precision = 19
    end
    object bcdfld_Temp_PenjualanTotal_Laba: TBCDField
      FieldName = 'Total_Laba'
      Precision = 19
    end
    object Tf__Temp_PenjualanPelanggan: TStringField
      FieldKind = fkLookup
      FieldName = 'Pelanggan'
      LookupDataSet = tbl_Pelanggan
      LookupKeyFields = 'ID'
      LookupResultField = 'Nama_Depan'
      KeyFields = 'Pelanggan_ID'
      Size = 30
      Lookup = True
    end
    object Tf__Temp_PenjualanKaryawan: TStringField
      FieldKind = fkLookup
      FieldName = 'Karyawan'
      LookupDataSet = tbl_Karyawan
      LookupKeyFields = 'ID'
      LookupResultField = 'Nama_Login'
      KeyFields = 'Karyawan_ID'
      Size = 30
      Lookup = True
    end
  end
  object tbl_Temp_Item_Penjualan: TADOTable
    Connection = cn
    CursorType = ctStatic
    IndexFieldNames = 'Penjualan_ID'
    MasterFields = 'ID'
    MasterSource = ds_tbl_Temp_Penjualan
    TableName = 'Temp_Item_Penjualan'
    Left = 192
    Top = 40
    object Tf__Temp_Item_PenjualanBarcode: TStringField
      DisplayWidth = 12
      FieldKind = fkLookup
      FieldName = 'Barcode'
      LookupDataSet = tbl_Barang
      LookupKeyFields = 'ID'
      LookupResultField = 'Barcode'
      KeyFields = 'Barang_ID'
      Lookup = True
    end
    object Tf__Temp_Item_PenjualanNama_Barang: TStringField
      DisplayWidth = 16
      FieldKind = fkLookup
      FieldName = 'Nama_Barang'
      LookupDataSet = tbl_Barang
      LookupKeyFields = 'ID'
      LookupResultField = 'Nama_Barang'
      KeyFields = 'Barang_ID'
      Size = 30
      Lookup = True
    end
    object Tf__Temp_Item_PenjualanJumlah_Barang: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Jumlah'
      DisplayWidth = 14
      FieldName = 'Jumlah_Barang'
      OnChange = Tf__Temp_Item_PenjualanJumlah_BarangChange
    end
    object Tf__Temp_Item_PenjualanSatuan: TStringField
      FieldKind = fkLookup
      FieldName = 'Satuan'
      LookupDataSet = tbl_Barang
      LookupKeyFields = 'ID'
      LookupResultField = 'Satuan'
      KeyFields = 'Barang_ID'
      Size = 10
      Lookup = True
    end
    object Tf__Temp_Item_PenjualanHarga: TCurrencyField
      Alignment = taLeftJustify
      DisplayWidth = 12
      FieldKind = fkLookup
      FieldName = 'Harga'
      LookupDataSet = tbl_Barang
      LookupKeyFields = 'ID'
      LookupResultField = 'Harga'
      KeyFields = 'Barang_ID'
      Lookup = True
    end
    object Tf__Temp_Item_PenjualanDiskon: TCurrencyField
      Alignment = taLeftJustify
      DisplayWidth = 12
      FieldKind = fkLookup
      FieldName = 'Diskon'
      LookupDataSet = tbl_Barang
      LookupKeyFields = 'ID'
      LookupResultField = 'Diskon'
      KeyFields = 'Barang_ID'
      Lookup = True
    end
    object bcdfld_Temp_Item_PenjualanSubtotal: TBCDField
      Alignment = taLeftJustify
      DisplayWidth = 13
      FieldName = 'Subtotal'
      currency = True
      Precision = 19
    end
    object bcdfld_Temp_Item_PenjualanSubdiskon: TBCDField
      Alignment = taLeftJustify
      DisplayWidth = 15
      FieldName = 'Subdiskon'
      currency = True
      Precision = 19
    end
    object Tf__Temp_Item_PenjualanBarang_ID: TIntegerField
      DisplayLabel = 'B_ID'
      DisplayWidth = 6
      FieldName = 'Barang_ID'
      Visible = False
      OnChange = Tf__Temp_Item_PenjualanBarang_IDChange
    end
    object Tf__Temp_Item_PenjualanPenjualan_ID: TIntegerField
      DisplayLabel = 'P_ID'
      DisplayWidth = 5
      FieldName = 'Penjualan_ID'
      Visible = False
    end
    object atncfld_Temp_Item_PenjualanID: TAutoIncField
      DisplayWidth = 5
      FieldName = 'ID'
      ReadOnly = True
      Visible = False
    end
    object Tf__Temp_Item_PenjualanHarga_Dasar: TCurrencyField
      FieldKind = fkLookup
      FieldName = 'Harga_Dasar'
      LookupDataSet = tbl_Barang
      LookupKeyFields = 'ID'
      LookupResultField = 'Biaya'
      KeyFields = 'Barang_ID'
      Visible = False
      Lookup = True
    end
  end
  object QTemp: TADOQuery
    Connection = cn
    Parameters = <>
    Left = 24
    Top = 64
  end
  object tbl_Barang: TADOTable
    Active = True
    Connection = cn
    CursorType = ctStatic
    TableName = 'Barang'
    Left = 24
    Top = 160
    object atncfld_BarangID: TAutoIncField
      DisplayWidth = 12
      FieldName = 'ID'
      ReadOnly = True
      Visible = False
    end
    object wdstrngfld_BarangBarcode: TWideStringField
      DisplayWidth = 24
      FieldName = 'Barcode'
    end
    object wdstrngfld_BarangNama_Barang: TWideStringField
      DisplayWidth = 23
      FieldName = 'Nama_Barang'
      Size = 60
    end
    object wdstrngfld_BarangMerk_Type: TWideStringField
      DisplayWidth = 12
      FieldName = 'Merk_Type'
      Size = 30
    end
    object wdstrngfld_BarangSatuan: TWideStringField
      DisplayWidth = 8
      FieldName = 'Satuan'
    end
    object bcdfld_BarangBiaya: TBCDField
      DisplayWidth = 9
      FieldName = 'Biaya'
      Precision = 19
    end
    object bcdfld_BarangHarga: TBCDField
      DisplayWidth = 9
      FieldName = 'Harga'
      Precision = 19
    end
    object Tf__BarangJumlah_Stok: TIntegerField
      DisplayWidth = 12
      FieldName = 'Jumlah_Stok'
    end
    object bcdfld_BarangDiskon: TBCDField
      DisplayWidth = 24
      FieldName = 'Diskon'
      Precision = 19
    end
    object bcdfld_BarangPajak: TBCDField
      DisplayWidth = 24
      FieldName = 'Pajak'
      Precision = 19
    end
    object wdstrngfld_BarangKategori: TWideStringField
      DisplayWidth = 30
      FieldName = 'Kategori'
      Size = 50
    end
    object wdstrngfld_BarangKeterangan: TWideStringField
      DisplayWidth = 60
      FieldName = 'Keterangan'
      Size = 50
    end
    object Tf__BarangSuplayer: TStringField
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'Suplayer'
      LookupDataSet = tbl_Suplayer
      LookupKeyFields = 'ID'
      LookupResultField = 'Nama_Perusahaan'
      KeyFields = 'Suplayer_ID'
      Size = 30
      Lookup = True
    end
    object Tf__BarangSuplayer_ID: TIntegerField
      DisplayWidth = 12
      FieldName = 'Suplayer_ID'
      Visible = False
    end
  end
  object tbl_Karyawan: TADOTable
    Active = True
    Connection = cn
    CursorType = ctStatic
    TableName = 'Karyawan'
    Left = 24
    Top = 256
  end
  object tbl_Pelanggan: TADOTable
    Active = True
    Connection = cn
    CursorType = ctStatic
    TableName = 'Pelanggan'
    Left = 24
    Top = 360
    object atncfld_PelangganID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
      Visible = False
    end
    object wdstrngfld_PelangganKode: TWideStringField
      DisplayWidth = 12
      FieldName = 'Kode'
      Size = 30
    end
    object wdstrngfld_PelangganNama_Depan: TWideStringField
      DisplayWidth = 16
      FieldName = 'Nama_Depan'
      Size = 50
    end
    object wdstrngfld_PelangganNama_Belakang: TWideStringField
      DisplayWidth = 18
      FieldName = 'Nama_Belakang'
      Size = 50
    end
    object wdstrngfld_PelangganKelamin: TWideStringField
      DisplayWidth = 12
      FieldName = 'Kelamin'
      Size = 10
    end
    object wdstrngfld_PelangganAlamat: TWideStringField
      DisplayWidth = 16
      FieldName = 'Alamat'
      Size = 200
    end
    object wdstrngfld_PelangganTelp: TWideStringField
      DisplayWidth = 15
      FieldName = 'Telp'
      Size = 100
    end
    object wdstrngfld_PelangganEmail: TWideStringField
      DisplayWidth = 24
      FieldName = 'Email'
      Size = 50
    end
  end
  object ds_tbl_Temp_Penjualan: TDataSource
    DataSet = tbl_Temp_Penjualan
    Left = 112
    Top = 72
  end
  object ds_tbl_Temp_Item_Penjualan: TDataSource
    DataSet = tbl_Temp_Item_Penjualan
    Left = 192
    Top = 88
  end
  object ds_tbl_Barang: TDataSource
    DataSet = tbl_Barang
    Left = 24
    Top = 208
  end
  object ds_tbl_Karyawan: TDataSource
    DataSet = tbl_Karyawan
    Left = 24
    Top = 312
  end
  object ds_tbl_Pelanggan: TDataSource
    DataSet = tbl_Pelanggan
    Left = 24
    Top = 416
  end
  object QTotal: TADOQuery
    Connection = cn
    Parameters = <>
    SQL.Strings = (
      'Select Sum(Subtotal) from Temp_Item_Penjualan;')
    Left = 24
    Top = 112
  end
  object cn: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=E:\PROJECTS\D7\D10' +
      '_Toko_006\D10_Toko_006.accdb;Persist Security Info=False;'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.ACE.OLEDB.12.0'
    Left = 24
    Top = 16
  end
  object tbl_Penjualan: TADOTable
    Connection = cn
    CursorType = ctStatic
    TableName = 'Penjualan'
    Left = 112
    Top = 144
    object atncfld_PenjualanID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object Tf__PenjualanPelanggan_ID: TIntegerField
      FieldName = 'Pelanggan_ID'
    end
    object Tf__PenjualanKaryawan_ID: TIntegerField
      FieldName = 'Karyawan_ID'
    end
    object wdstrngfld_PenjualanKeterangan: TWideStringField
      FieldName = 'Keterangan'
      Size = 200
    end
    object wdstrngfld_PenjualanNo_Resi: TWideStringField
      FieldName = 'No_Resi'
      Size = 30
    end
    object bcdfld_PenjualanTotal_Diskon: TBCDField
      FieldName = 'Total_Diskon'
      Precision = 19
    end
    object bcdfld_PenjualanTotal_Penjualan: TBCDField
      FieldName = 'Total_Penjualan'
      Precision = 19
    end
    object dtmfld_PenjualanWaktu: TDateTimeField
      FieldName = 'Waktu'
    end
    object bcdfld_PenjualanGrand_Total: TBCDField
      FieldName = 'Grand_Total'
      Precision = 19
    end
    object bcdfld_PenjualanPotongan_Lain: TBCDField
      FieldName = 'Potongan_Lain'
      Precision = 19
    end
    object bcdfld_PenjualanBea_Lain: TBCDField
      FieldName = 'Bea_Lain'
      Precision = 19
    end
    object bcdfld_PenjualanPPn: TBCDField
      FieldName = 'PPn'
      Precision = 19
    end
    object bcdfld_PenjualanBayar: TBCDField
      FieldName = 'Bayar'
      Precision = 19
    end
    object bcdfld_PenjualanKembali: TBCDField
      FieldName = 'Kembali'
      Precision = 19
    end
    object bcdfld_PenjualanTotal_Harga_Dasar: TBCDField
      FieldName = 'Total_Harga_Dasar'
      Precision = 19
    end
    object bcdfld_PenjualanTotal_Laba: TBCDField
      FieldName = 'Total_Laba'
      Precision = 19
    end
  end
  object tbl_Item_Penjualan: TADOTable
    Connection = cn
    CursorType = ctStatic
    IndexFieldNames = 'Penjualan_ID'
    MasterFields = 'ID'
    MasterSource = ds_tbl_Penjualan
    TableName = 'Item_Penjualan'
    Left = 192
    Top = 160
    object atncfld_Item_PenjualanID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object Tf__Item_PenjualanPenjualan_ID: TIntegerField
      FieldName = 'Penjualan_ID'
    end
    object Tf__Item_PenjualanBarang_ID: TIntegerField
      FieldName = 'Barang_ID'
    end
    object Tf__Item_PenjualanJumlah_Barang: TIntegerField
      FieldName = 'Jumlah_Barang'
    end
    object bcdfld_Item_PenjualanSubtotal: TBCDField
      FieldName = 'Subtotal'
      Precision = 19
    end
    object bcdfld_Item_PenjualanSubdiskon: TBCDField
      FieldName = 'Subdiskon'
      Precision = 19
    end
  end
  object ds_tbl_Penjualan: TDataSource
    DataSet = tbl_Penjualan
    Left = 112
    Top = 192
  end
  object ds_tbl_Item_Penjualan: TDataSource
    DataSet = tbl_Item_Penjualan
    Left = 192
    Top = 208
  end
  object qry_CariBarang: TADOQuery
    Connection = cn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * From Barang;')
    Left = 112
    Top = 253
    object atncfld_CariBarangID: TAutoIncField
      DisplayWidth = 8
      FieldName = 'ID'
      ReadOnly = True
      Visible = False
    end
    object wdstrngfld_CariBarangBarcode: TWideStringField
      DisplayWidth = 24
      FieldName = 'Barcode'
    end
    object wdstrngfld_CariBarangNama_Barang: TWideStringField
      DisplayWidth = 23
      FieldName = 'Nama_Barang'
      Size = 60
    end
    object wdstrngfld_CariBarangMerk_Type: TWideStringField
      DisplayWidth = 12
      FieldName = 'Merk_Type'
      Size = 30
    end
    object wdstrngfld_CariBarangSatuan: TWideStringField
      DisplayWidth = 8
      FieldName = 'Satuan'
    end
    object bcdfld_CariBarangBiaya: TBCDField
      DisplayWidth = 9
      FieldName = 'Biaya'
      Precision = 19
    end
    object bcdfld_CariBarangHarga: TBCDField
      DisplayWidth = 9
      FieldName = 'Harga'
      Precision = 19
    end
    object Tf__CariBarangJumlah_Stok: TIntegerField
      DisplayWidth = 12
      FieldName = 'Jumlah_Stok'
    end
    object bcdfld_CariBarangDiskon: TBCDField
      DisplayWidth = 24
      FieldName = 'Diskon'
      Precision = 19
    end
    object bcdfld_CariBarangPajak: TBCDField
      DisplayWidth = 24
      FieldName = 'Pajak'
      Precision = 19
    end
    object wdstrngfld_CariBarangKategori: TWideStringField
      DisplayWidth = 30
      FieldName = 'Kategori'
      Size = 50
    end
    object wdstrngfld_CariBarangKeterangan: TWideStringField
      DisplayWidth = 60
      FieldName = 'Keterangan'
      Size = 50
    end
    object Tf__CariBarangSuplayer: TStringField
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'Suplayer'
      LookupDataSet = tbl_Suplayer
      LookupKeyFields = 'ID'
      LookupResultField = 'Nama_Perusahaan'
      KeyFields = 'Suplayer_ID'
      Size = 30
      Lookup = True
    end
    object Tf__CariBarangSuplayer_ID: TIntegerField
      FieldName = 'Suplayer_ID'
      Visible = False
    end
  end
  object ds_CariBarang: TDataSource
    DataSet = qry_CariBarang
    Left = 112
    Top = 309
  end
  object tbl_Temp_Barang: TADOTable
    Connection = cn
    CursorType = ctStatic
    TableName = 'Temp_Barang'
    Left = 176
    Top = 288
    object atncfld_Temp_BarangID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object wdstrngfld_Temp_BarangBarcode: TWideStringField
      FieldName = 'Barcode'
    end
    object wdstrngfld_Temp_BarangNama_Barang: TWideStringField
      FieldName = 'Nama_Barang'
      Size = 60
    end
    object wdstrngfld_Temp_BarangMerk_Type: TWideStringField
      FieldName = 'Merk_Type'
      Size = 30
    end
    object wdstrngfld_Temp_BarangSatuan: TWideStringField
      FieldName = 'Satuan'
    end
    object bcdfld_Temp_BarangBiaya: TBCDField
      FieldName = 'Biaya'
      Precision = 19
    end
    object bcdfld_Temp_BarangHarga: TBCDField
      FieldName = 'Harga'
      Precision = 19
    end
    object Tf__Temp_BarangJumlah_Stok: TIntegerField
      FieldName = 'Jumlah_Stok'
    end
    object bcdfld_Temp_BarangDiskon: TBCDField
      FieldName = 'Diskon'
      Precision = 19
    end
    object bcdfld_Temp_BarangPajak: TBCDField
      FieldName = 'Pajak'
      Precision = 19
    end
    object wdstrngfld_Temp_BarangKategori: TWideStringField
      FieldName = 'Kategori'
      Size = 50
    end
    object wdstrngfld_Temp_BarangKeterangan: TWideStringField
      FieldName = 'Keterangan'
      Size = 50
    end
    object Tf__Temp_BarangSuplayer: TStringField
      FieldKind = fkLookup
      FieldName = 'Suplayer'
      LookupDataSet = tbl_Suplayer
      LookupKeyFields = 'ID'
      LookupResultField = 'Nama_Perusahaan'
      KeyFields = 'Suplayer_ID'
      Size = 30
      Lookup = True
    end
    object Tf__Temp_BarangSuplayer_ID: TIntegerField
      FieldName = 'Suplayer_ID'
    end
  end
  object ds_Temp_Barang: TDataSource
    DataSet = tbl_Temp_Barang
    Left = 176
    Top = 344
  end
  object ds_Suplayer: TDataSource
    DataSet = tbl_Suplayer
    Left = 240
    Top = 368
  end
  object tbl_Suplayer: TADOTable
    Active = True
    Connection = cn
    CursorType = ctStatic
    TableName = 'Suplayer'
    Left = 240
    Top = 312
    object atncfld_SuplayerID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
      Visible = False
    end
    object wdstrngfld_SuplayerNama_Perusahaan: TWideStringField
      DisplayWidth = 20
      FieldName = 'Nama_Perusahaan'
      Size = 50
    end
    object wdstrngfld_SuplayerNama_Agensi: TWideStringField
      DisplayWidth = 20
      FieldName = 'Nama_Agensi'
      Size = 50
    end
    object wdstrngfld_SuplayerNo_Rekening_Bank: TWideStringField
      DisplayWidth = 20
      FieldName = 'No_Rekening_Bank'
      Size = 30
    end
    object wdstrngfld_SuplayerAlamat: TWideStringField
      DisplayWidth = 20
      FieldName = 'Alamat'
      Size = 50
    end
    object wdstrngfld_SuplayerKota: TWideStringField
      DisplayWidth = 20
      FieldName = 'Kota'
      Size = 30
    end
    object wdstrngfld_SuplayerProvinsi: TWideStringField
      DisplayWidth = 20
      FieldName = 'Provinsi'
      Size = 30
    end
    object wdstrngfld_SuplayerTelp: TWideStringField
      DisplayWidth = 20
      FieldName = 'Telp'
    end
    object wdstrngfld_SuplayerEmail: TWideStringField
      DisplayWidth = 20
      FieldName = 'Email'
      Size = 50
    end
    object wdstrngfld_SuplayerKeterangan: TWideStringField
      DisplayWidth = 20
      FieldName = 'Keterangan'
      Size = 50
    end
  end
  object qry_CekBarcode: TADOQuery
    Connection = cn
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'B'
        DataType = ftString
        Size = 5
        Value = '20001'
      end>
    Prepared = True
    SQL.Strings = (
      'Select Barcode From Barang Where Barcode = :B;')
    Left = 448
    Top = 24
  end
  object qry_Penjualan: TADOQuery
    Active = True
    Connection = cn
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Waktu1'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'Waktu2'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'Select * From Penjualan Where Waktu Between :Waktu1 AND :Waktu2')
    Left = 288
    Top = 144
    object atncfld_PenjualanID1: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
      Visible = False
    end
    object Tf__PenjualanPelanggan_ID1: TIntegerField
      FieldName = 'Pelanggan_ID'
      Visible = False
    end
    object Tf__PenjualanKaryawan_ID1: TIntegerField
      FieldName = 'Karyawan_ID'
      Visible = False
    end
    object wdstrngfld_PenjualanNo_Resi1: TWideStringField
      DisplayWidth = 36
      FieldName = 'No_Resi'
      Size = 30
    end
    object bcdfld_PenjualanTotal_Diskon1: TBCDField
      DisplayWidth = 24
      FieldName = 'Total_Diskon'
      Visible = False
      Precision = 19
    end
    object bcdfld_PenjualanTotal_Penjualan1: TBCDField
      DisplayWidth = 24
      FieldName = 'Total_Penjualan'
      Visible = False
      Precision = 19
    end
    object dtmfld_PenjualanWaktu1: TDateTimeField
      DisplayLabel = 'Tanggal'
      DisplayWidth = 22
      FieldName = 'Waktu'
    end
    object bcdfld_PenjualanGrand_Total1: TBCDField
      DisplayLabel = 'Harga Jual'
      DisplayWidth = 24
      FieldName = 'Grand_Total'
      currency = True
      Precision = 19
    end
    object bcdfld_PenjualanPotongan_Lain1: TBCDField
      DisplayWidth = 24
      FieldName = 'Potongan_Lain'
      Visible = False
      Precision = 19
    end
    object bcdfld_PenjualanBea_Lain1: TBCDField
      DisplayWidth = 24
      FieldName = 'Bea_Lain'
      Visible = False
      Precision = 19
    end
    object bcdfld_PenjualanPPn1: TBCDField
      DisplayWidth = 24
      FieldName = 'PPn'
      Visible = False
      Precision = 19
    end
    object bcdfld_PenjualanBayar1: TBCDField
      DisplayWidth = 24
      FieldName = 'Bayar'
      Visible = False
      Precision = 19
    end
    object bcdfld_PenjualanKembali1: TBCDField
      DisplayWidth = 24
      FieldName = 'Kembali'
      Visible = False
      Precision = 19
    end
    object Tf__PenjualanPelanggan: TStringField
      DisplayWidth = 36
      FieldKind = fkLookup
      FieldName = 'Pelanggan'
      LookupDataSet = tbl_Pelanggan
      LookupKeyFields = 'ID'
      LookupResultField = 'Nama_Depan'
      KeyFields = 'Pelanggan_ID'
      Visible = False
      Size = 30
      Lookup = True
    end
    object Tf__PenjualanKaryawan: TStringField
      DisplayWidth = 36
      FieldKind = fkLookup
      FieldName = 'Karyawan'
      LookupDataSet = tbl_Karyawan
      LookupKeyFields = 'ID'
      LookupResultField = 'Nama_Login'
      KeyFields = 'Karyawan_ID'
      Visible = False
      Size = 30
      Lookup = True
    end
    object wdstrngfld_PenjualanKeterangan1: TWideStringField
      DisplayWidth = 18
      FieldName = 'Keterangan'
      Visible = False
      Size = 200
    end
    object bcdfld_PenjualanTotal_Harga_Dasar1: TBCDField
      DisplayLabel = 'Harga_Dasar'
      DisplayWidth = 19
      FieldName = 'Total_Harga_Dasar'
      currency = True
      Precision = 19
    end
    object bcdfld_PenjualanTotal_Laba1: TBCDField
      DisplayLabel = 'Laba'
      DisplayWidth = 19
      FieldName = 'Total_Laba'
      currency = True
      Precision = 19
    end
  end
  object ds_qry_Penjualan: TDataSource
    DataSet = qry_Penjualan
    Left = 288
    Top = 192
  end
  object ds_tbl_Item_Penjualan_2: TDataSource
    DataSet = tbl_Item_Penjualan_2
    Left = 360
    Top = 208
  end
  object tbl_Item_Penjualan_2: TADOTable
    Active = True
    Connection = cn
    CursorType = ctStatic
    IndexFieldNames = 'Penjualan_ID'
    MasterFields = 'ID'
    MasterSource = ds_qry_Penjualan
    TableName = 'Item_Penjualan'
    Left = 360
    Top = 160
    object tbl_Item_Penjualan_2ID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
      Visible = False
    end
    object tbl_Item_Penjualan_2Penjualan_ID: TIntegerField
      FieldName = 'Penjualan_ID'
      Visible = False
    end
    object tbl_Item_Penjualan_2Barang_ID: TIntegerField
      FieldName = 'Barang_ID'
      Visible = False
    end
    object tbl_Item_Penjualan_2Barcode: TStringField
      FieldKind = fkLookup
      FieldName = 'Barcode'
      LookupDataSet = tbl_Barang
      LookupKeyFields = 'ID'
      LookupResultField = 'Barcode'
      KeyFields = 'Barang_ID'
      Lookup = True
    end
    object tbl_Item_Penjualan_2Nama_Barang: TStringField
      DisplayLabel = 'Nama Barang'
      FieldKind = fkLookup
      FieldName = 'Nama_Barang'
      LookupDataSet = tbl_Barang
      LookupKeyFields = 'ID'
      LookupResultField = 'Nama_Barang'
      KeyFields = 'Barang_ID'
      Size = 60
      Lookup = True
    end
    object tbl_Item_Penjualan_2Jumlah_Barang: TIntegerField
      DisplayLabel = 'Jumlah'
      FieldName = 'Jumlah_Barang'
    end
    object tbl_Item_Penjualan_2Subtotal: TBCDField
      DisplayLabel = 'Harga'
      FieldName = 'Subtotal'
      currency = True
      Precision = 19
    end
    object tbl_Item_Penjualan_2Subdiskon: TBCDField
      DisplayLabel = 'Diskon'
      FieldName = 'Subdiskon'
      Visible = False
      currency = True
      Precision = 19
    end
  end
  object qry_Suplayer: TADOQuery
    Connection = cn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from Suplayer')
    Left = 304
    Top = 296
    object atncfld_SuplayerID1: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
      Visible = False
    end
    object wdstrngfld_SuplayerNama_Perusahaan1: TWideStringField
      DisplayWidth = 20
      FieldName = 'Nama_Perusahaan'
      Size = 50
    end
    object wdstrngfld_SuplayerNama_Agensi1: TWideStringField
      DisplayWidth = 20
      FieldName = 'Nama_Agensi'
      Size = 50
    end
    object wdstrngfld_SuplayerNo_Rekening_Bank1: TWideStringField
      DisplayWidth = 20
      FieldName = 'No_Rekening_Bank'
      Size = 30
    end
    object wdstrngfld_SuplayerAlamat1: TWideStringField
      DisplayWidth = 20
      FieldName = 'Alamat'
      Size = 50
    end
    object wdstrngfld_SuplayerKota1: TWideStringField
      DisplayWidth = 20
      FieldName = 'Kota'
      Size = 30
    end
    object wdstrngfld_SuplayerProvinsi1: TWideStringField
      DisplayWidth = 20
      FieldName = 'Provinsi'
      Size = 30
    end
    object wdstrngfld_SuplayerTelp1: TWideStringField
      DisplayWidth = 20
      FieldName = 'Telp'
    end
    object wdstrngfld_SuplayerEmail1: TWideStringField
      DisplayWidth = 20
      FieldName = 'Email'
      Size = 50
    end
    object wdstrngfld_SuplayerKeterangan1: TWideStringField
      DisplayWidth = 20
      FieldName = 'Keterangan'
      Size = 50
    end
  end
  object ds_qry_Suplayer: TDataSource
    DataSet = qry_Suplayer
    Left = 304
    Top = 352
  end
  object tbl_Konfigurasi: TADOTable
    Connection = cn
    CursorType = ctStatic
    TableName = 'Konfigurasi'
    Left = 24
    Top = 472
    object atncfld_KonfigurasiID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object wdstrngfld_KonfigurasiNama_Toko: TWideStringField
      FieldName = 'Nama_Toko'
      Size = 30
    end
    object wdstrngfld_KonfigurasiAlamat: TWideStringField
      FieldName = 'Alamat'
      Size = 60
    end
    object wdstrngfld_KonfigurasiKota_Provinsi: TWideStringField
      FieldName = 'Kota_Provinsi'
      Size = 50
    end
    object wdstrngfld_KonfigurasiTelp: TWideStringField
      FieldName = 'Telp'
      Size = 30
    end
    object wdstrngfld_KonfigurasiLogo: TWideStringField
      FieldName = 'Logo'
      Size = 100
    end
  end
  object ds_tbl_Konfigurasi: TDataSource
    DataSet = tbl_Konfigurasi
    Left = 24
    Top = 528
  end
  object tbl_Register: TADOTable
    Connection = cn
    CursorType = ctStatic
    TableName = 'Register'
    Left = 112
    Top = 416
    object atncfld_RegisterID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object Tf__RegisterKaryawan_ID: TIntegerField
      FieldName = 'Karyawan_ID'
    end
    object bcdfld_RegisterSaldo_Awal: TBCDField
      FieldName = 'Saldo_Awal'
      Precision = 19
    end
    object bcdfld_RegisterSaldo_Akhir: TBCDField
      FieldName = 'Saldo_Akhir'
      Precision = 19
    end
    object dtmfld_RegisterWaktu_Awal: TDateTimeField
      FieldName = 'Waktu_Awal'
    end
    object dtmfld_RegisterWaktu_Akhir: TDateTimeField
      FieldName = 'Waktu_Akhir'
    end
    object Tf__RegisterP100_Awal: TSmallintField
      FieldName = 'P100_Awal'
    end
    object Tf__RegisterP200_Awal: TSmallintField
      FieldName = 'P200_Awal'
    end
    object Tf__RegisterP500_Awal: TSmallintField
      FieldName = 'P500_Awal'
    end
    object Tf__RegisterP1000_Awal: TSmallintField
      FieldName = 'P1000_Awal'
    end
    object Tf__RegisterP2000_Awal: TSmallintField
      FieldName = 'P2000_Awal'
    end
    object Tf__RegisterP5000_Awal: TSmallintField
      FieldName = 'P5000_Awal'
    end
    object Tf__RegisterP10000_Awal: TSmallintField
      FieldName = 'P10000_Awal'
    end
    object Tf__RegisterP20000_Awal: TSmallintField
      FieldName = 'P20000_Awal'
    end
    object Tf__RegisterP50000_Awal: TSmallintField
      FieldName = 'P50000_Awal'
    end
    object Tf__RegisterP100000_Awal: TSmallintField
      FieldName = 'P100000_Awal'
    end
    object Tf__RegisterP100_Akhir: TSmallintField
      FieldName = 'P100_Akhir'
    end
    object Tf__RegisterP200_Akhir: TSmallintField
      FieldName = 'P200_Akhir'
    end
    object Tf__RegisterP500_Akhir: TSmallintField
      FieldName = 'P500_Akhir'
    end
    object Tf__RegisterP1000_Akhir: TSmallintField
      FieldName = 'P1000_Akhir'
    end
    object Tf__RegisterP2000_Akhir: TSmallintField
      FieldName = 'P2000_Akhir'
    end
    object Tf__RegisterP5000_Akhir: TSmallintField
      FieldName = 'P5000_Akhir'
    end
    object Tf__RegisterP10000_Akhir: TSmallintField
      FieldName = 'P10000_Akhir'
    end
    object Tf__RegisterP20000_Akhir: TSmallintField
      FieldName = 'P20000_Akhir'
    end
    object Tf__RegisterP50000_Akhir: TSmallintField
      FieldName = 'P50000_Akhir'
    end
    object Tf__RegisterP100000_Akhir: TSmallintField
      FieldName = 'P100000_Akhir'
    end
    object wdstrngfld_RegisterKeterangan: TWideStringField
      FieldName = 'Keterangan'
      Size = 50
    end
    object Tf__RegisterKaryawan: TStringField
      FieldKind = fkLookup
      FieldName = 'Karyawan'
      LookupDataSet = tbl_Karyawan
      LookupKeyFields = 'ID'
      LookupResultField = 'Nama_Login'
      KeyFields = 'Karyawan_ID'
      Size = 30
      Lookup = True
    end
  end
  object ds_tbl_Register: TDataSource
    DataSet = tbl_Register
    Left = 112
    Top = 472
  end
  object qry1: TADOQuery
    Connection = cn
    Parameters = <
      item
        Name = 'Waktu1'
        Size = -1
        Value = Null
      end
      item
        Name = 'Waktu2'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT Barang.ID, Barang.Nama_Barang, Barang.Barcode, Barang.Har' +
        'ga, Barang.Biaya, Item_Penjualan.Jumlah_Barang, Penjualan.Waktu,' +
        ' Penjualan.Waktu'
      
        'FROM Barang INNER JOIN (Item_Penjualan INNER JOIN Penjualan ON I' +
        'tem_Penjualan.Penjualan_ID = Penjualan.ID) ON Barang.ID = Item_P' +
        'enjualan.Barang_ID'
      'Where  (((Penjualan.Waktu)  Between :Waktu1 AND :Waktu2))'
      'ORDER BY Barang.Barcode;')
    Left = 496
    Top = 24
  end
  object ds1: TDataSource
    DataSet = qry1
    Left = 496
    Top = 80
  end
  object tbl_RekapBarang: TADOTable
    Active = True
    Connection = cn
    CursorType = ctStatic
    TableName = 'RekapBarang'
    Left = 24
    Top = 584
    object Tf__RekapBarangID: TIntegerField
      FieldName = 'ID'
      Visible = False
    end
    object wdstrngfld_RekapBarangBarcode: TWideStringField
      DisplayWidth = 24
      FieldName = 'Barcode'
    end
    object wdstrngfld_RekapBarangNama_Barang: TWideStringField
      DisplayWidth = 26
      FieldName = 'Nama_Barang'
      Size = 60
    end
    object bcdfld_RekapBarangHarga: TBCDField
      DisplayWidth = 24
      FieldName = 'Harga'
      currency = True
      Precision = 19
    end
    object bcdfld_RekapBarangBiaya: TBCDField
      FieldName = 'Biaya'
      Visible = False
      currency = True
      Precision = 19
    end
    object Tf__RekapBarangJumlah_Stok: TIntegerField
      FieldName = 'Jumlah_Stok'
      Visible = False
    end
    object Tf__RekapBarangJumlah_Barang: TIntegerField
      DisplayLabel = 'Jumlah'
      DisplayWidth = 12
      FieldName = 'Jumlah_Barang'
    end
    object dtmfld_RekapBarangWaktu: TDateTimeField
      FieldName = 'Waktu'
      Visible = False
    end
  end
  object ds_tbl_RekapBarang: TDataSource
    DataSet = tbl_RekapBarang
    Left = 24
    Top = 632
  end
  object qry2: TADOQuery
    Connection = cn
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Waktu1'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = '15/09/2018'
      end
      item
        Name = 'Waktu2'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = '16/09/2018 23:59:59'
      end>
    Prepared = True
    SQL.Strings = (
      
        'SELECT Barang.ID, Barang.Barcode,Barang.Nama_Barang,  Barang.Har' +
        'ga, Barang.Biaya, Barang.Jumlah_Stok, Item_Penjualan.Jumlah_Bara' +
        'ng, Penjualan.Waktu'
      
        'FROM Barang INNER JOIN (Item_Penjualan INNER JOIN Penjualan ON I' +
        'tem_Penjualan.Penjualan_ID = Penjualan.ID) ON Barang.ID = Item_P' +
        'enjualan.Barang_ID'
      'Where  (((Penjualan.Waktu)  Between :Waktu1 AND :Waktu2))'
      'ORDER BY Barang.Barcode;')
    Left = 696
    Top = 64
  end
  object qry_RekapBarang: TADOQuery
    Active = True
    Connection = cn
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Waktu1'
        DataType = ftDateTime
        Size = -1
        Value = 43358d
      end
      item
        Name = 'Waktu2'
        DataType = ftDateTime
        Size = -1
        Value = 43359.9999884259d
      end>
    SQL.Strings = (
      
        'SELECT Barang.ID, Barang.Barcode,Barang.Nama_Barang,  Barang.Har' +
        'ga, Barang.Biaya, Barang.Jumlah_Stok, Item_Penjualan.Jumlah_Bara' +
        'ng, Penjualan.Waktu'
      
        'FROM Barang INNER JOIN (Item_Penjualan INNER JOIN Penjualan ON I' +
        'tem_Penjualan.Penjualan_ID = Penjualan.ID) ON Barang.ID = Item_P' +
        'enjualan.Barang_ID'
      'Where  (((Penjualan.Waktu)  Between :Waktu1 AND :Waktu2))'
      'ORDER BY Barang.Barcode;')
    Left = 120
    Top = 561
    object qry_RekapBarangID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
      Visible = False
    end
    object qry_RekapBarangBarcode: TWideStringField
      FieldName = 'Barcode'
    end
    object qry_RekapBarangNama_Barang: TWideStringField
      FieldName = 'Nama_Barang'
      Size = 60
    end
    object qry_RekapBarangHarga: TBCDField
      FieldName = 'Harga'
      Precision = 19
    end
    object qry_RekapBarangBiaya: TBCDField
      FieldName = 'Biaya'
      Visible = False
      Precision = 19
    end
    object qry_RekapBarangJumlah_Stok: TIntegerField
      FieldName = 'Jumlah_Stok'
      Visible = False
    end
    object qry_RekapBarangJumlah_Barang: TIntegerField
      FieldName = 'Jumlah_Barang'
    end
    object qry_RekapBarangWaktu: TDateTimeField
      FieldName = 'Waktu'
      Visible = False
    end
  end
  object tbl_Rekap_Transaksi: TADOTable
    Connection = cn
    CursorType = ctStatic
    TableName = 'Rekap_Transaksi'
    Left = 200
    Top = 583
    object Tf__Rekap_TransaksiID: TIntegerField
      FieldName = 'ID'
      Visible = False
    end
    object dtmfld_Rekap_TransaksiDari_Tanggal: TDateTimeField
      FieldName = 'Dari_Tanggal'
    end
    object dtmfld_Rekap_TransaksiSampai_Tanggal: TDateTimeField
      FieldName = 'Sampai_Tanggal'
    end
    object Tf__Rekap_TransaksiTransaksi: TIntegerField
      FieldName = 'Transaksi'
    end
    object bcdfld_Rekap_TransaksiHarga_Dasar: TBCDField
      FieldName = 'Harga_Dasar'
      Precision = 19
    end
    object bcdfld_Rekap_TransaksiHarga_Awal: TBCDField
      FieldName = 'Harga_Awal'
      Visible = False
      Precision = 19
    end
    object bcdfld_Rekap_TransaksiDiskon_Barang: TBCDField
      FieldName = 'Diskon_Barang'
      Visible = False
      Precision = 19
    end
    object bcdfld_Rekap_TransaksiDiskon_Promo: TBCDField
      FieldName = 'Diskon_Promo'
      Visible = False
      Precision = 19
    end
    object bcdfld_Rekap_TransaksiBea_Jasa: TBCDField
      FieldName = 'Bea_Jasa'
      Visible = False
      Precision = 19
    end
    object bcdfld_Rekap_TransaksiPajak: TBCDField
      FieldName = 'Pajak'
      Visible = False
      Precision = 19
    end
    object bcdfld_Rekap_TransaksiHarga_Jual: TBCDField
      FieldName = 'Harga_Jual'
      Precision = 19
    end
    object bcdfld_Rekap_TransaksiLaba: TBCDField
      FieldName = 'Laba'
      Precision = 19
    end
  end
  object ds_tbl_Rekap_Transaksi: TDataSource
    DataSet = tbl_Rekap_Transaksi
    Left = 200
    Top = 617
  end
  object qry_Rekap_Transaksi: TADOQuery
    Active = True
    Connection = cn
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Waktu1'
        DataType = ftDateTime
        Size = -1
        Value = 43358d
      end
      item
        Name = 'Waktu2'
        DataType = ftDateTime
        Size = -1
        Value = 43359.9999884259d
      end>
    SQL.Strings = (
      'SELECT '
      'Count(*) AS Transaksi, '
      'Sum(Total_Harga_Dasar) AS [Harga_Dasar], '
      'SUM(Total_Penjualan) AS [Harga_Awal], '
      'SUM(Total_Diskon) AS [Diskon_Barang], '
      'SUM(Potongan_Lain) AS [Diskon_Promo], '
      'SUM(Bea_Lain) AS [Bea_Jasa], '
      'SUM(PPn) As [Pajak], '
      'Sum(Grand_Total) AS [Harga_Jual],'
      'Sum(Total_Laba) AS [Laba] '
      'FROM Penjualan'
      'Where  Waktu  Between :Waktu1 AND :Waktu2;')
    Left = 240
    Top = 495
    object qry_Rekap_TransaksiTransaksi: TIntegerField
      FieldName = 'Transaksi'
    end
    object qry_Rekap_TransaksiHarga_Dasar: TBCDField
      FieldName = 'Harga_Dasar'
      currency = True
      Precision = 19
    end
    object qry_Rekap_TransaksiHarga_Awal: TBCDField
      FieldName = 'Harga_Awal'
      Visible = False
      Precision = 19
    end
    object qry_Rekap_TransaksiDiskon_Barang: TBCDField
      FieldName = 'Diskon_Barang'
      Visible = False
      Precision = 19
    end
    object qry_Rekap_TransaksiDiskon_Promo: TBCDField
      FieldName = 'Diskon_Promo'
      Visible = False
      Precision = 19
    end
    object qry_Rekap_TransaksiBea_Jasa: TBCDField
      FieldName = 'Bea_Jasa'
      Visible = False
      Precision = 19
    end
    object qry_Rekap_TransaksiPajak: TBCDField
      FieldName = 'Pajak'
      Visible = False
      Precision = 19
    end
    object qry_Rekap_TransaksiHarga_Jual: TBCDField
      FieldName = 'Harga_Jual'
      currency = True
      Precision = 19
    end
    object qry_Rekap_TransaksiLaba: TBCDField
      FieldName = 'Laba'
      currency = True
      Precision = 19
    end
  end
  object ds_qry_Rekap_Transaksi: TDataSource
    DataSet = qry_Rekap_Transaksi
    Left = 240
    Top = 544
  end
  object tbl_Stock_Opname: TADOTable
    Connection = cn
    CursorType = ctStatic
    OnNewRecord = tbl_Stock_OpnameNewRecord
    TableName = 'Stock_Opname'
    Left = 336
    Top = 424
    object atncfld_Stock_OpnameID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
      Visible = False
    end
    object Tf__Stock_OpnameKaryawan_ID: TIntegerField
      FieldName = 'Karyawan_ID'
      Visible = False
    end
    object Tf__Stock_OpnameBarang_ID: TIntegerField
      FieldName = 'Barang_ID'
      Visible = False
    end
    object dtmfld_Stock_OpnameTanggal: TDateTimeField
      FieldName = 'Tanggal'
    end
    object Tf__Stock_OpnameKaryawan: TStringField
      FieldKind = fkLookup
      FieldName = 'Karyawan'
      LookupDataSet = tbl_Karyawan
      LookupKeyFields = 'ID'
      LookupResultField = 'Nama_Login'
      KeyFields = 'Karyawan_ID'
      Size = 30
      Lookup = True
    end
    object Tf__Stock_OpnameBarcode: TStringField
      FieldKind = fkLookup
      FieldName = 'Barcode'
      LookupDataSet = tbl_Barang
      LookupKeyFields = 'ID'
      LookupResultField = 'Barcode'
      KeyFields = 'Barang_ID'
      Size = 30
      Lookup = True
    end
    object Tf__Stock_OpnameNama_Barang: TStringField
      FieldKind = fkLookup
      FieldName = 'Nama_Barang'
      LookupDataSet = tbl_Barang
      LookupKeyFields = 'ID'
      LookupResultField = 'Nama_Barang'
      KeyFields = 'Barang_ID'
      Size = 60
      Lookup = True
    end
    object Tf__Stock_OpnameStock_Aplikasi: TIntegerField
      FieldKind = fkLookup
      FieldName = 'Stock_Aplikasi'
      LookupDataSet = tbl_Barang
      LookupKeyFields = 'ID'
      LookupResultField = 'Jumlah_Stok'
      KeyFields = 'Barang_ID'
      Lookup = True
    end
    object Tf__Stock_OpnameStock_Gudang: TIntegerField
      FieldName = 'Stock_Gudang'
    end
    object Tf__Stock_OpnameSelisih: TIntegerField
      FieldName = 'Selisih'
    end
    object wdstrngfld_Stock_OpnameKeterangan: TWideStringField
      FieldName = 'Keterangan'
      Size = 255
    end
  end
  object ds_tbl_Stock_Opname: TDataSource
    DataSet = tbl_Stock_Opname
    Left = 336
    Top = 472
  end
  object tbl_TTemp_IP: TADOTable
    Connection = cn
    CursorType = ctStatic
    IndexFieldNames = 'Penjualan_ID'
    TableName = 'TTemp_IP'
    Left = 304
    Top = 40
    object StringField1: TStringField
      DisplayWidth = 12
      FieldKind = fkLookup
      FieldName = 'Barcode'
      LookupDataSet = tbl_Barang
      LookupKeyFields = 'ID'
      LookupResultField = 'Barcode'
      KeyFields = 'Barang_ID'
      Lookup = True
    end
    object StringField2: TStringField
      DisplayWidth = 16
      FieldKind = fkLookup
      FieldName = 'Nama_Barang'
      LookupDataSet = tbl_Barang
      LookupKeyFields = 'ID'
      LookupResultField = 'Nama_Barang'
      KeyFields = 'Barang_ID'
      Size = 30
      Lookup = True
    end
    object IntegerField1: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Jumlah'
      DisplayWidth = 14
      FieldName = 'Jumlah_Barang'
      OnChange = Tf__Temp_Item_PenjualanJumlah_BarangChange
    end
    object StringField3: TStringField
      FieldKind = fkLookup
      FieldName = 'Satuan'
      LookupDataSet = tbl_Barang
      LookupKeyFields = 'ID'
      LookupResultField = 'Satuan'
      KeyFields = 'Barang_ID'
      Size = 10
      Lookup = True
    end
    object CurrencyField1: TCurrencyField
      Alignment = taLeftJustify
      DisplayWidth = 12
      FieldKind = fkLookup
      FieldName = 'Harga'
      LookupDataSet = tbl_Barang
      LookupKeyFields = 'ID'
      LookupResultField = 'Harga'
      KeyFields = 'Barang_ID'
      Lookup = True
    end
    object CurrencyField2: TCurrencyField
      Alignment = taLeftJustify
      DisplayWidth = 12
      FieldKind = fkLookup
      FieldName = 'Diskon'
      LookupDataSet = tbl_Barang
      LookupKeyFields = 'ID'
      LookupResultField = 'Diskon'
      KeyFields = 'Barang_ID'
      Lookup = True
    end
    object BCDField1: TBCDField
      Alignment = taLeftJustify
      DisplayWidth = 13
      FieldName = 'Subtotal'
      currency = True
      Precision = 19
    end
    object BCDField2: TBCDField
      Alignment = taLeftJustify
      DisplayWidth = 15
      FieldName = 'Subdiskon'
      currency = True
      Precision = 19
    end
    object IntegerField2: TIntegerField
      DisplayLabel = 'B_ID'
      DisplayWidth = 6
      FieldName = 'Barang_ID'
      Visible = False
      OnChange = Tf__Temp_Item_PenjualanBarang_IDChange
    end
    object IntegerField3: TIntegerField
      DisplayLabel = 'P_ID'
      DisplayWidth = 5
      FieldName = 'Penjualan_ID'
      Visible = False
    end
    object AutoIncField1: TAutoIncField
      DisplayWidth = 5
      FieldName = 'ID'
      ReadOnly = True
      Visible = False
    end
    object CurrencyField3: TCurrencyField
      FieldKind = fkLookup
      FieldName = 'Harga_Dasar'
      LookupDataSet = tbl_Barang
      LookupKeyFields = 'ID'
      LookupResultField = 'Biaya'
      KeyFields = 'Barang_ID'
      Visible = False
      Lookup = True
    end
  end
end
