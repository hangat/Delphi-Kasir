unit uDM;

interface

uses
  SysUtils, Classes, ADODB, DB, Forms, Dialogs, StrUtils;

type
  TDM = class(TDataModule)
    tbl_Temp_Penjualan: TADOTable;
    tbl_Temp_Item_Penjualan: TADOTable;
    QTemp: TADOQuery;
    tbl_Barang: TADOTable;
    tbl_Karyawan: TADOTable;
    tbl_Pelanggan: TADOTable;
    ds_tbl_Temp_Penjualan: TDataSource;
    ds_tbl_Temp_Item_Penjualan: TDataSource;
    ds_tbl_Barang: TDataSource;
    ds_tbl_Karyawan: TDataSource;
    ds_tbl_Pelanggan: TDataSource;
    QTotal: TADOQuery;
    atncfld_Temp_Item_PenjualanID: TAutoIncField;
    Tf__Temp_Item_PenjualanPenjualan_ID: TIntegerField;
    Tf__Temp_Item_PenjualanBarang_ID: TIntegerField;
    Tf__Temp_Item_PenjualanJumlah_Barang: TIntegerField;
    bcdfld_Temp_Item_PenjualanSubtotal: TBCDField;
    bcdfld_Temp_Item_PenjualanSubdiskon: TBCDField;
    Tf__Temp_Item_PenjualanBarcode: TStringField;
    Tf__Temp_Item_PenjualanNama_Barang: TStringField;
    Tf__Temp_Item_PenjualanHarga: TCurrencyField;
    Tf__Temp_Item_PenjualanDiskon: TCurrencyField;
    atncfld_Temp_PenjualanID: TAutoIncField;
    Tf__Temp_PenjualanPelanggan_ID: TIntegerField;
    Tf__Temp_PenjualanKaryawan_ID: TIntegerField;
    wdstrngfld_Temp_PenjualanKeterangan: TWideStringField;
    wdstrngfld_Temp_PenjualanNo_Resi: TWideStringField;
    bcdfld_Temp_PenjualanTotal_Diskon: TBCDField;
    bcdfld_Temp_PenjualanTotal_Penjualan: TBCDField;
    dtmfld_Temp_PenjualanWaktu: TDateTimeField;
    bcdfld_Temp_PenjualanGrand_Total: TBCDField;
    bcdfld_Temp_PenjualanPotongan_Lain: TBCDField;
    bcdfld_Temp_PenjualanBea_Lain: TBCDField;
    bcdfld_Temp_PenjualanPPn: TBCDField;
    bcdfld_Temp_PenjualanBayar: TBCDField;
    bcdfld_Temp_PenjualanKembali: TBCDField;
    Tf__Temp_PenjualanKaryawan: TStringField;
    Tf__Temp_PenjualanPelanggan: TStringField;
    cn: TADOConnection;
    Tf__Temp_Item_PenjualanSatuan: TStringField;
    tbl_Penjualan: TADOTable;
    tbl_Item_Penjualan: TADOTable;
    ds_tbl_Penjualan: TDataSource;
    ds_tbl_Item_Penjualan: TDataSource;
    atncfld_PenjualanID: TAutoIncField;
    Tf__PenjualanPelanggan_ID: TIntegerField;
    Tf__PenjualanKaryawan_ID: TIntegerField;
    wdstrngfld_PenjualanKeterangan: TWideStringField;
    wdstrngfld_PenjualanNo_Resi: TWideStringField;
    bcdfld_PenjualanTotal_Diskon: TBCDField;
    bcdfld_PenjualanTotal_Penjualan: TBCDField;
    dtmfld_PenjualanWaktu: TDateTimeField;
    bcdfld_PenjualanGrand_Total: TBCDField;
    bcdfld_PenjualanPotongan_Lain: TBCDField;
    bcdfld_PenjualanBea_Lain: TBCDField;
    bcdfld_PenjualanPPn: TBCDField;
    bcdfld_PenjualanBayar: TBCDField;
    bcdfld_PenjualanKembali: TBCDField;
    atncfld_Item_PenjualanID: TAutoIncField;
    Tf__Item_PenjualanPenjualan_ID: TIntegerField;
    Tf__Item_PenjualanBarang_ID: TIntegerField;
    Tf__Item_PenjualanJumlah_Barang: TIntegerField;
    bcdfld_Item_PenjualanSubtotal: TBCDField;
    bcdfld_Item_PenjualanSubdiskon: TBCDField;
    atncfld_BarangID: TAutoIncField;
    wdstrngfld_BarangBarcode: TWideStringField;
    wdstrngfld_BarangNama_Barang: TWideStringField;
    wdstrngfld_BarangMerk_Type: TWideStringField;
    wdstrngfld_BarangSatuan: TWideStringField;
    bcdfld_BarangBiaya: TBCDField;
    bcdfld_BarangHarga: TBCDField;
    Tf__BarangJumlah_Stok: TIntegerField;
    bcdfld_BarangDiskon: TBCDField;
    bcdfld_BarangPajak: TBCDField;
    wdstrngfld_BarangKategori: TWideStringField;
    wdstrngfld_BarangKeterangan: TWideStringField;
    Tf__BarangSuplayer_ID: TIntegerField;
    qry_CariBarang: TADOQuery;
    ds_CariBarang: TDataSource;
    tbl_Temp_Barang: TADOTable;
    ds_Temp_Barang: TDataSource;
    ds_Suplayer: TDataSource;
    tbl_Suplayer: TADOTable;
    atncfld_SuplayerID: TAutoIncField;
    wdstrngfld_SuplayerNama_Perusahaan: TWideStringField;
    wdstrngfld_SuplayerNama_Agensi: TWideStringField;
    wdstrngfld_SuplayerNo_Rekening_Bank: TWideStringField;
    wdstrngfld_SuplayerAlamat: TWideStringField;
    wdstrngfld_SuplayerKota: TWideStringField;
    wdstrngfld_SuplayerProvinsi: TWideStringField;
    wdstrngfld_SuplayerTelp: TWideStringField;
    wdstrngfld_SuplayerEmail: TWideStringField;
    wdstrngfld_SuplayerKeterangan: TWideStringField;
    atncfld_Temp_BarangID: TAutoIncField;
    wdstrngfld_Temp_BarangBarcode: TWideStringField;
    wdstrngfld_Temp_BarangNama_Barang: TWideStringField;
    wdstrngfld_Temp_BarangMerk_Type: TWideStringField;
    wdstrngfld_Temp_BarangSatuan: TWideStringField;
    bcdfld_Temp_BarangBiaya: TBCDField;
    bcdfld_Temp_BarangHarga: TBCDField;
    Tf__Temp_BarangJumlah_Stok: TIntegerField;
    bcdfld_Temp_BarangDiskon: TBCDField;
    bcdfld_Temp_BarangPajak: TBCDField;
    wdstrngfld_Temp_BarangKategori: TWideStringField;
    wdstrngfld_Temp_BarangKeterangan: TWideStringField;
    Tf__Temp_BarangSuplayer_ID: TIntegerField;
    Tf__Temp_BarangSuplayer: TStringField;
    Tf__BarangSuplayer: TStringField;
    atncfld_CariBarangID: TAutoIncField;
    wdstrngfld_CariBarangBarcode: TWideStringField;
    wdstrngfld_CariBarangNama_Barang: TWideStringField;
    wdstrngfld_CariBarangMerk_Type: TWideStringField;
    wdstrngfld_CariBarangSatuan: TWideStringField;
    bcdfld_CariBarangBiaya: TBCDField;
    bcdfld_CariBarangHarga: TBCDField;
    Tf__CariBarangJumlah_Stok: TIntegerField;
    bcdfld_CariBarangDiskon: TBCDField;
    bcdfld_CariBarangPajak: TBCDField;
    wdstrngfld_CariBarangKategori: TWideStringField;
    wdstrngfld_CariBarangKeterangan: TWideStringField;
    Tf__CariBarangSuplayer_ID: TIntegerField;
    Tf__CariBarangSuplayer: TStringField;
    qry_CekBarcode: TADOQuery;
    qry_Penjualan: TADOQuery;
    ds_qry_Penjualan: TDataSource;
    ds_tbl_Item_Penjualan_2: TDataSource;
    tbl_Item_Penjualan_2: TADOTable;
    atncfld_PenjualanID1: TAutoIncField;
    Tf__PenjualanPelanggan_ID1: TIntegerField;
    Tf__PenjualanKaryawan_ID1: TIntegerField;
    wdstrngfld_PenjualanKeterangan1: TWideStringField;
    wdstrngfld_PenjualanNo_Resi1: TWideStringField;
    bcdfld_PenjualanTotal_Diskon1: TBCDField;
    bcdfld_PenjualanTotal_Penjualan1: TBCDField;
    dtmfld_PenjualanWaktu1: TDateTimeField;
    bcdfld_PenjualanGrand_Total1: TBCDField;
    bcdfld_PenjualanPotongan_Lain1: TBCDField;
    bcdfld_PenjualanBea_Lain1: TBCDField;
    bcdfld_PenjualanPPn1: TBCDField;
    bcdfld_PenjualanBayar1: TBCDField;
    bcdfld_PenjualanKembali1: TBCDField;
    Tf__PenjualanPelanggan: TStringField;
    Tf__PenjualanKaryawan: TStringField;
    atncfld_PelangganID: TAutoIncField;
    wdstrngfld_PelangganKode: TWideStringField;
    wdstrngfld_PelangganNama_Depan: TWideStringField;
    wdstrngfld_PelangganNama_Belakang: TWideStringField;
    wdstrngfld_PelangganKelamin: TWideStringField;
    wdstrngfld_PelangganAlamat: TWideStringField;
    wdstrngfld_PelangganTelp: TWideStringField;
    wdstrngfld_PelangganEmail: TWideStringField;
    qry_Suplayer: TADOQuery;
    ds_qry_Suplayer: TDataSource;
    atncfld_SuplayerID1: TAutoIncField;
    wdstrngfld_SuplayerNama_Perusahaan1: TWideStringField;
    wdstrngfld_SuplayerNama_Agensi1: TWideStringField;
    wdstrngfld_SuplayerNo_Rekening_Bank1: TWideStringField;
    wdstrngfld_SuplayerAlamat1: TWideStringField;
    wdstrngfld_SuplayerKota1: TWideStringField;
    wdstrngfld_SuplayerProvinsi1: TWideStringField;
    wdstrngfld_SuplayerTelp1: TWideStringField;
    wdstrngfld_SuplayerEmail1: TWideStringField;
    wdstrngfld_SuplayerKeterangan1: TWideStringField;
    tbl_Konfigurasi: TADOTable;
    ds_tbl_Konfigurasi: TDataSource;
    tbl_Register: TADOTable;
    ds_tbl_Register: TDataSource;
    atncfld_RegisterID: TAutoIncField;
    Tf__RegisterKaryawan_ID: TIntegerField;
    bcdfld_RegisterSaldo_Awal: TBCDField;
    bcdfld_RegisterSaldo_Akhir: TBCDField;
    dtmfld_RegisterWaktu_Awal: TDateTimeField;
    dtmfld_RegisterWaktu_Akhir: TDateTimeField;
    Tf__RegisterP100_Awal: TSmallintField;
    Tf__RegisterP200_Awal: TSmallintField;
    Tf__RegisterP500_Awal: TSmallintField;
    Tf__RegisterP1000_Awal: TSmallintField;
    Tf__RegisterP2000_Awal: TSmallintField;
    Tf__RegisterP5000_Awal: TSmallintField;
    Tf__RegisterP10000_Awal: TSmallintField;
    Tf__RegisterP20000_Awal: TSmallintField;
    Tf__RegisterP50000_Awal: TSmallintField;
    Tf__RegisterP100000_Awal: TSmallintField;
    Tf__RegisterP100_Akhir: TSmallintField;
    Tf__RegisterP200_Akhir: TSmallintField;
    Tf__RegisterP500_Akhir: TSmallintField;
    Tf__RegisterP1000_Akhir: TSmallintField;
    Tf__RegisterP2000_Akhir: TSmallintField;
    Tf__RegisterP5000_Akhir: TSmallintField;
    Tf__RegisterP10000_Akhir: TSmallintField;
    Tf__RegisterP20000_Akhir: TSmallintField;
    Tf__RegisterP50000_Akhir: TSmallintField;
    Tf__RegisterP100000_Akhir: TSmallintField;
    wdstrngfld_RegisterKeterangan: TWideStringField;
    atncfld_KonfigurasiID: TAutoIncField;
    wdstrngfld_KonfigurasiNama_Toko: TWideStringField;
    wdstrngfld_KonfigurasiAlamat: TWideStringField;
    wdstrngfld_KonfigurasiKota_Provinsi: TWideStringField;
    wdstrngfld_KonfigurasiTelp: TWideStringField;
    wdstrngfld_KonfigurasiLogo: TWideStringField;
    Tf__RegisterKaryawan: TStringField;
    bcdfld_Temp_PenjualanTotal_Harga_Dasar: TBCDField;
    bcdfld_PenjualanTotal_Harga_Dasar: TBCDField;
    Tf__Temp_Item_PenjualanHarga_Dasar: TCurrencyField;
    bcdfld_Temp_PenjualanTotal_Laba: TBCDField;
    bcdfld_PenjualanTotal_Laba: TBCDField;
    bcdfld_PenjualanTotal_Harga_Dasar1: TBCDField;
    bcdfld_PenjualanTotal_Laba1: TBCDField;
    qry1: TADOQuery;
    ds1: TDataSource;
    tbl_RekapBarang: TADOTable;
    ds_tbl_RekapBarang: TDataSource;
    qry2: TADOQuery;
    qry_RekapBarang: TADOQuery;
    Tf__RekapBarangID: TIntegerField;
    wdstrngfld_RekapBarangBarcode: TWideStringField;
    wdstrngfld_RekapBarangNama_Barang: TWideStringField;
    bcdfld_RekapBarangHarga: TBCDField;
    bcdfld_RekapBarangBiaya: TBCDField;
    Tf__RekapBarangJumlah_Stok: TIntegerField;
    Tf__RekapBarangJumlah_Barang: TIntegerField;
    dtmfld_RekapBarangWaktu: TDateTimeField;
    tbl_Rekap_Transaksi: TADOTable;
    ds_tbl_Rekap_Transaksi: TDataSource;
    qry_Rekap_Transaksi: TADOQuery;
    Tf__Rekap_TransaksiID: TIntegerField;
    dtmfld_Rekap_TransaksiDari_Tanggal: TDateTimeField;
    dtmfld_Rekap_TransaksiSampai_Tanggal: TDateTimeField;
    Tf__Rekap_TransaksiTransaksi: TIntegerField;
    bcdfld_Rekap_TransaksiHarga_Dasar: TBCDField;
    bcdfld_Rekap_TransaksiHarga_Awal: TBCDField;
    bcdfld_Rekap_TransaksiDiskon_Barang: TBCDField;
    bcdfld_Rekap_TransaksiDiskon_Promo: TBCDField;
    bcdfld_Rekap_TransaksiBea_Jasa: TBCDField;
    bcdfld_Rekap_TransaksiPajak: TBCDField;
    bcdfld_Rekap_TransaksiHarga_Jual: TBCDField;
    bcdfld_Rekap_TransaksiLaba: TBCDField;
    ds_qry_Rekap_Transaksi: TDataSource;
    tbl_Stock_Opname: TADOTable;
    ds_tbl_Stock_Opname: TDataSource;
    atncfld_Stock_OpnameID: TAutoIncField;
    Tf__Stock_OpnameBarang_ID: TIntegerField;
    dtmfld_Stock_OpnameTanggal: TDateTimeField;
    Tf__Stock_OpnameStock_Gudang: TIntegerField;
    Tf__Stock_OpnameSelisih: TIntegerField;
    wdstrngfld_Stock_OpnameKeterangan: TWideStringField;
    Tf__Stock_OpnameKaryawan_ID: TIntegerField;
    Tf__Stock_OpnameKaryawan: TStringField;
    Tf__Stock_OpnameBarcode: TStringField;
    Tf__Stock_OpnameNama_Barang: TStringField;
    Tf__Stock_OpnameStock_Aplikasi: TIntegerField;
    tbl_TTemp_IP: TADOTable;
    StringField1: TStringField;
    StringField2: TStringField;
    IntegerField1: TIntegerField;
    StringField3: TStringField;
    CurrencyField1: TCurrencyField;
    CurrencyField2: TCurrencyField;
    BCDField1: TBCDField;
    BCDField2: TBCDField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    AutoIncField1: TAutoIncField;
    CurrencyField3: TCurrencyField;
    qry_Rekap_TransaksiTransaksi: TIntegerField;
    qry_Rekap_TransaksiHarga_Dasar: TBCDField;
    qry_Rekap_TransaksiHarga_Awal: TBCDField;
    qry_Rekap_TransaksiDiskon_Barang: TBCDField;
    qry_Rekap_TransaksiDiskon_Promo: TBCDField;
    qry_Rekap_TransaksiBea_Jasa: TBCDField;
    qry_Rekap_TransaksiPajak: TBCDField;
    qry_Rekap_TransaksiHarga_Jual: TBCDField;
    qry_Rekap_TransaksiLaba: TBCDField;
    qry_RekapBarangID: TAutoIncField;
    qry_RekapBarangBarcode: TWideStringField;
    qry_RekapBarangNama_Barang: TWideStringField;
    qry_RekapBarangHarga: TBCDField;
    qry_RekapBarangBiaya: TBCDField;
    qry_RekapBarangJumlah_Stok: TIntegerField;
    qry_RekapBarangJumlah_Barang: TIntegerField;
    qry_RekapBarangWaktu: TDateTimeField;
    tbl_Item_Penjualan_2ID: TAutoIncField;
    tbl_Item_Penjualan_2Penjualan_ID: TIntegerField;
    tbl_Item_Penjualan_2Barang_ID: TIntegerField;
    tbl_Item_Penjualan_2Jumlah_Barang: TIntegerField;
    tbl_Item_Penjualan_2Subtotal: TBCDField;
    tbl_Item_Penjualan_2Subdiskon: TBCDField;
    tbl_Item_Penjualan_2Nama_Barang: TStringField;
    tbl_Item_Penjualan_2Barcode: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure tbl_Temp_Item_PenjualanJumlah_BarangChange(Sender: TField);
    procedure tbl_Temp_Item_PenjualanBarang_IDChange(Sender: TField);
    procedure Tf__Temp_Item_PenjualanJumlah_BarangChange(Sender: TField);
    procedure Tf__Temp_Item_PenjualanBarang_IDChange(Sender: TField);
    procedure tbl_Stock_OpnameNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
//    List_Harga : TStringList;

//    procedure Penjualan_Baru; overload;
    procedure Penjualan_Baru(T:TADOTable); // overload;

    procedure Penjualan_Simpan;
    procedure Penjualan_Batal;
    procedure Penjualan_Hapus_Data;

    procedure Tambah_Item; overload;
    procedure Tambah_Item(T:TADOTable); overload;

    procedure Hitung_Item_Subtotal; overload;
    procedure Hitung_Item_Subtotal(T:TADOTable); overload;

    function GetTotalPenjualan:Double; overload;
    function GetTotalPenjualan(T:TADOTable):Double; overload;

    procedure TotalPenjualan; overload;
    procedure TotalPenjualan(T, TI:TADOTable); overload;

    procedure OpenAllTables(Open:Boolean);

    //===
    function DBConnect(C : TADOConnection):Boolean;
    procedure InitRegister;
    procedure CloseRegister;



  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}
uses uShared;

function TDM.DBConnect(C : TADOConnection):Boolean;
var mydb : string;
begin
  Result := False;
  mydb := ChangeFileExt(Application.ExeName,'.mdb');
  try
    c.Close;
    c.ConnectionString  := 'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source="' +
      mydb + '";Persist Security Info=False';
    c.Open;
    Result := True;
  except
    on E: Exception do
      ShowMessage('Error Connection : ' + #13#10 + E.Message);
  end;
end;


procedure TDM.CloseRegister;
var
    T0,T1:TDateTime;
    SumTotal:Currency;

    function GetSumTotal(cn:TADOConnection; DateFrom,DateTo:TDateTime):Double;
    var Q:TADOQuery;
        T:Double;
        SQL, SQL1:string;
    begin
      Q:=TADOQuery.Create(nil);
      Q.Connection:=cn;
      SQL:='Select * From Penjualan Where Waktu Between :Waktu1 AND :Waktu2';
      SQL1:='Select Sum(Grand_Total) as ST From Penjualan Where Waktu Between :Waktu1 AND :Waktu2';
      T:=0;
      Q.Close;
      Q.SQL.Clear;
      Q.SQL.Add(SQL);
      Q.Parameters[0].DataType := ftDateTime;
      Q.Parameters[1].DataType := ftDateTime;
      Q.ParamCheck:=True;
      Q.Prepared:=True;
      Q.Parameters[0].Value := DateFrom;
      Q.Parameters[1].Value := DateTo;
      Q.Open;
      if Q.RecordCount <1 then
         Result:=T
      else
      begin
        Q.Close;
        Q.SQL.Clear;
        Q.SQL.Add(SQL1);
        Q.Parameters[0].DataType := ftDateTime;
        Q.Parameters[1].DataType := ftDateTime;
        Q.ParamCheck:=True;
        Q.Prepared:=True;
        Q.Parameters[0].Value := DateFrom;
        Q.Parameters[1].Value := DateTo;
        Q.Open;
        T:=Q.FieldValues['ST'];
        Result:=T;
      end;
      Q.Close;
      FreeAndNil(Q);

    end;


begin
  // catat saldo akhir dari sejak login terakhit.
  // T0 : Dari Tgl Jam Register Terakhir.

  //cek ada penjualan ngak, kalo ngak ada hapus data register, hapus data penjualan

  dm.tbl_Register.Last;
  T0 := dm.tbl_Register.FieldValues['Waktu_Awal'];
  T1 := Now;
  SumTotal := GetSumTotal(dm.cn,T0,T1);
  // update tbl_register

  if SumTotal < 1 then
  begin
    dm.tbl_Register.Delete;
    Exit;
  end;
  dm.tbl_Register.Edit;
  DM.tbl_Register.FieldValues['Waktu_Akhir']:= Now;
  DM.tbl_Register.FieldValues['Saldo_Akhir']:= SumTotal;
  dm.tbl_Register.UpdateRecord;

end;


procedure TDM.InitRegister;
begin
  if not(tbl_Register.Active) then
     tbl_Register.Open;
  with tbl_Register do
  begin
//    LastRecord := RecordCount;
//    if LastRecord < 1 then
//    begin
//      // baru
//      LastSaldo:=0;
//    end
//    else
//    begin
//      Last;
//      LastSaldo := FieldValues['Saldo_Akhir'];
 //   end;

    Insert;
    FieldValues['Karyawan_ID']:= uShared.ID;
    FieldValues['Waktu_Awal']:= Now;
    FieldValues['Saldo_Awal']:= 0; //LastSaldo;
    Post;
  end;

end;


procedure TDM.TotalPenjualan;
var Total: Currency;
    diBookmark : TBookmark;
    TotDiskon:Currency;

    Total_Harga_Dasar, Laba, Total_Laba : Currency;
    JmlBarang:Integer;
    Harga, HargaDasar:Currency;

begin
try

  if tbl_Temp_Item_Penjualan.Tag = 1 then Exit;
  if tbl_Temp_Item_Penjualan.RecordCount < 1 then
  begin
    if tbl_Temp_Penjualan.State = dsBrowse then tbl_temp_penjualan.Edit;
    tbl_Temp_Penjualan.FieldValues['Total_Penjualan'] :=0;
    tbl_Temp_Penjualan.FieldValues['Total_Diskon'] :=0;
    tbl_Temp_Penjualan.FieldValues['Grand_Total'] := 0;
    tbl_Temp_Penjualan.FieldValues['Total_Harga_Dasar'] := 0;
    tbl_Temp_Penjualan.FieldValues['Total_Laba'] := 0;
    tbl_Temp_Penjualan.UpdateRecord;

    Exit;
  end;

  with tbl_Temp_Item_Penjualan do
  begin
    Edit;
    FieldValues['Subtotal']:= FieldValues['Jumlah_Barang'] * FieldValues['Harga'];
    FieldValues['Subdiskon']:= FieldValues['Jumlah_Barang'] * FieldValues['Diskon'];
    if (state = dsEdit) or (state = dsInsert) then
    UpdateRecord;

    diBookmark :=GetBookmark;
    DisableControls;
    Total :=0; TotDiskon:=0;
    Total_Harga_Dasar:=0; Total_Laba:=0;
    First;
    while not(eof) do
    begin
      Total := Total + FieldValues['Subtotal'];
      TotDiskon := TotDiskon + FieldValues['Subdiskon'];

      JmlBarang := FieldValues['Jumlah_Barang'];
      Harga := FieldValues['Harga']; //Harga Jual
      HargaDasar := FieldValues['Harga_Dasar'];

      Total_Harga_Dasar := Total_Harga_Dasar + (HargaDasar * JmlBarang);

      Laba := Harga - HargaDasar;
      Total_Laba := Total_Laba + (Laba);
      Next;
    end;
    GotoBookmark(diBookmark);
    FreeBookmark(diBookmark);
    diBookmark := nil;
    EnableControls;

  end;

// 1. Update total penjualan
  if tbl_Temp_Penjualan.State = dsBrowse then tbl_temp_penjualan.Edit;

  tbl_Temp_Penjualan.FieldValues['Total_Penjualan'] :=Total;
  tbl_Temp_Penjualan.FieldValues['Total_Diskon'] :=TotDiskon;
  tbl_Temp_Penjualan.FieldValues['Grand_Total'] := Total - TotDiskon;

  Total_Laba := (Total - TotDiskon) - Total_Harga_Dasar;
  tbl_Temp_Penjualan.FieldValues['Total_Harga_Dasar'] := Total_Harga_Dasar;
  tbl_Temp_Penjualan.FieldValues['Total_Laba'] := Total_Laba - TotDiskon;

  tbl_Temp_Penjualan.UpdateRecord;

except
  on E: Exception do ShowMessage(E.Message);
end;
end;


procedure TDM.TotalPenjualan(T, TI:TADOTable);
var Total: Currency;
    TotDiskon:Currency;
    diBookmark : TBookmark;
begin
  if TI.Tag = 1 then Exit;
  with TI do
  begin
    Edit;
    FieldValues['Subtotal']:= FieldValues['Jumlah_Barang'] * FieldValues['Harga'];
    FieldValues['Diskon']:= FieldValues['Jumlah_Barang'] * FieldValues['Diskon_Barang'];
    if (state = dsEdit) or (state = dsInsert) then UpdateRecord;
    diBookmark :=GetBookmark;
    DisableControls;
    Total :=0; TotDiskon:=0;
    First;
    while not(eof) do
    begin
      Total := Total + FieldValues['Subtotal'];
      TotDiskon := TotDiskon + FieldValues['Diskon'];
      Next;
    end;
    GotoBookmark(diBookmark);
    FreeBookmark(diBookmark);
    EnableControls;

  end;
// 1. Update total penjualan
  if T.State = dsBrowse then T.Edit;
  T.FieldValues['Diskon']:=TotDiskon;
  T.FieldValues['Subtotal']:=Total;
  T.UpdateRecord;

end;


function TDM.GetTotalPenjualan:Double;
var Total:double;
    Bookmark : TBookmark;
begin
  Bookmark := tbl_Temp_Item_Penjualan.GetBookmark;
  tbl_Temp_Item_Penjualan.DisableControls;
  Total := 0;
  tbl_Temp_Item_Penjualan.First;
  while not(tbl_Temp_Item_Penjualan.Eof) do
  begin
    Total:=total + tbl_Temp_Item_Penjualan.FieldValues['Subtotal'];
    tbl_Temp_Item_Penjualan.Next;
  end;

  tbl_Temp_Item_Penjualan.GotoBookmark(Bookmark);
  tbl_Temp_Item_Penjualan.EnableControls;
  tbl_Temp_Item_Penjualan.FreeBookmark(Bookmark);
  Result := Total;
end;


function TDM.GetTotalPenjualan(T:TADOTable):Double;
var Total:double;
    Bookmark : TBookmark;
begin
  Bookmark := T.GetBookmark;
  T.DisableControls;
  Total := 0;
  T.First;
  while not(T.Eof) do
  begin
    Total:=total + T.FieldValues['Subtotal'];
    T.Next;
  end;

  T.GotoBookmark(Bookmark);
  T.EnableControls;
  T.FreeBookmark(Bookmark);
  Result := Total;
end;


procedure TDM.Hitung_Item_Subtotal;
var SubTotal : double;
begin
  Subtotal := tbl_Temp_Item_Penjualan.FieldValues['Jumlah_Barang'] *
              tbl_Temp_Item_Penjualan.FieldValues['Harga'];
  tbl_Temp_Item_Penjualan.FieldValues['Subtotal']:= Subtotal;
end;

procedure TDM.Hitung_Item_Subtotal(T:TADOTable);
var SubTotal : double;
begin
  Subtotal := T.FieldValues['Jumlah_Barang'] *
              T.FieldValues['Harga'];
  T.FieldValues['Subtotal']:= Subtotal;
end;

procedure TDM.Tambah_Item;
begin
  tbl_Temp_Item_Penjualan.Insert;
  tbl_Temp_Item_Penjualan.FieldValues['Penjualan_ID']:= tbl_Temp_Penjualan.FieldValues['ID'];
end;


procedure TDM.Tambah_Item(T:TADOTable);
begin
  T.Insert;
  T.FieldValues['Penjualan_ID']:= T.FieldValues['ID'];
end;


procedure TDM.tbl_Temp_Item_PenjualanBarang_IDChange(Sender: TField);
begin
  // Set Nilai Jml Barang ke 1
  if tbl_Temp_Item_Penjualan.Tag = 1 then Exit;

  if tbl_Temp_Item_Penjualan.State = dsbrowse then
     tbl_Temp_Item_Penjualan.Edit;
  tbl_Temp_Item_Penjualan.FieldValues['Jumlah_Barang']:=1;
  tbl_Temp_Item_Penjualan.UpdateRecord;
end;

procedure TDM.tbl_Temp_Item_PenjualanJumlah_BarangChange(Sender: TField);
begin

  TotalPenjualan;

end;

procedure TDM.OpenAllTables(Open:Boolean);
begin
  tbl_Karyawan.Active := Open;
  tbl_Barang.Active:= Open;
  tbl_Pelanggan.Active:=Open;
  tbl_Temp_Item_Penjualan.Active:= Open;
  tbl_Temp_Penjualan.Active:=Open;
  qry_Penjualan.Active :=Open;
  tbl_Item_Penjualan_2.Active := Open;
  qry_CariBarang.Open;
  qry_Suplayer.Open;
  tbl_Konfigurasi.Open;
  tbl_Stock_Opname.Open;

end;


procedure TDM.Penjualan_Hapus_Data;
var SQL : string;
begin
//
  SQL := 'Delete * From Temp_Penjualan';
  QTemp.sql.Clear;
  QTemp.sql.add(SQL);
  QTemp.ExecSQL;

  SQL := 'Delete * From Temp_Item_Penjualan';
  QTemp.sql.Clear;
  QTemp.sql.add(SQL);
  QTemp.ExecSQL;

end;

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  if DBConnect(cn) then
  begin
  OpenAllTables(True);
//    tbl_Temp_Item_Penjualan.Active := False;
//    tbl_Temp_Penjualan.Active := false;
//  Penjualan_Baru(DM.tbl_Temp_Penjualan);
  end
  else
    ShowMessage('Error Connecting..');

end;
{
procedure TDM.Penjualan_Baru;
var No_Resi: string;
begin
//
  Penjualan_Hapus_Data;
  if tbl_Temp_Penjualan.Active then
     tbl_Temp_Penjualan.Close;
  //data sementara
  No_Resi := FormatDateTime('yyyymmddhhmmss',now);

  if  not(tbl_Temp_Penjualan.Active) then
      tbl_Temp_Penjualan.open;
  tbl_Temp_Penjualan.Insert;
  tbl_Temp_Penjualan.FieldValues['No_Resi'] := No_Resi;
  tbl_Temp_Penjualan.FieldValues['Karyawan_ID'] := uShared.ID;
  tbl_Temp_Penjualan.FieldValues['Pelanggan_ID'] := 1;
  tbl_Temp_Penjualan.FieldValues['Total_Penjualan']:= 0;
  tbl_Temp_Penjualan.FieldValues['Total_Diskon']:= 0;
  tbl_Temp_Penjualan.FieldValues['Grand_Total']:= 0;
  tbl_Temp_Penjualan.FieldValues['Waktu']:= now;
//  tbl_Temp_Penjualan.FieldValues['Keterangan']:= 'Tunai';
  tbl_Temp_Penjualan.Post;


end;
}

procedure TDM.Penjualan_Baru(T:TADOTable);
var No_Resi: string;
begin
//
  Penjualan_Hapus_Data;
  T.Close;
  //data sementara
  No_Resi := FormatDateTime('yyyymmddhhmmss',now);

  T.open;
  T.Insert;
  T.FieldValues['No_Resi'] := No_Resi;
  T.FieldValues['Karyawan_ID'] := uShared.ID;
  T.FieldValues['Pelanggan_ID'] := 4;
  T.FieldValues['Waktu']:= now;
  T.FieldValues['Total_Penjualan']:= 0;
  T.FieldValues['Total_Diskon']:= 0;
  T.FieldValues['Grand_Total']:= 0;
  T.FieldValues['Waktu']:= now;
  T.FieldValues['Keterangan']:= 'Tunai';
  T.FieldValues['Potongan_Lain']:= 0;
  T.FieldValues['Bea_Lain']:= 0;
  T.FieldValues['PPn']:= 0;
  T.FieldValues['Bayar']:= 0;
  T.FieldValues['Kembali']:= 0;
  T.Post;

end;


procedure TDM.Penjualan_Simpan;
begin
//

end;

procedure TDM.Penjualan_Batal;
begin
//

end;

procedure TDM.Tf__Temp_Item_PenjualanJumlah_BarangChange(Sender: TField);
begin
  if tbl_Temp_Item_Penjualan.Tag = 1 then Exit;

  TotalPenjualan;
end;

procedure TDM.Tf__Temp_Item_PenjualanBarang_IDChange(Sender: TField);
begin
  if tbl_Temp_Item_Penjualan.Tag = 1 then Exit;

  TotalPenjualan;
end;

procedure TDM.tbl_Stock_OpnameNewRecord(DataSet: TDataSet);
var SA, SG, SS:Integer;
begin
  dm.tbl_Stock_Opname.FieldValues['Tanggal']:=Now;
  dm.tbl_Stock_Opname.FieldValues['Karyawan_ID']:= uShared.ID;
  if (DM.tbl_Stock_Opname.FieldValues['Stock_Aplikasi'] > 0) then
  begin
     SA := DM.tbl_Stock_Opname.FieldValues['Stock_Aplikasi'];
     SG := DM.tbl_Stock_Opname.FieldValues['Stock_Gudang'];
     SS := SA - SG;
     tbl_Stock_Opname.FieldValues['Selisih']:= SS;
  end;
end;

end.
