unit uAdmin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls, Menus, DBCtrls, StdCtrls, ComCtrls, Grids,
  DBGrids,DB, ADODB, Mask, DateUtils, IniFiles, ComObj, ValEdit, ExtDlgs;

type
  TfrmAdmin = class(TForm)
    mm1: TMainMenu;
    File1: TMenuItem;
    Exit1: TMenuItem;
    N1: TMenuItem;
    PrintSetup1: TMenuItem;
    Print1: TMenuItem;
    N2: TMenuItem;
    SaveAs1: TMenuItem;
    Save1: TMenuItem;
    Open1: TMenuItem;
    New1: TMenuItem;
    Edit1: TMenuItem;
    Object1: TMenuItem;
    Links1: TMenuItem;
    N3: TMenuItem;
    GoTo1: TMenuItem;
    Replace1: TMenuItem;
    Find1: TMenuItem;
    N4: TMenuItem;
    PasteSpecial1: TMenuItem;
    Paste1: TMenuItem;
    Copy1: TMenuItem;
    Cut1: TMenuItem;
    N5: TMenuItem;
    Repeatcommand1: TMenuItem;
    Undo1: TMenuItem;
    Help1: TMenuItem;
    About1: TMenuItem;
    HowtoUseHelp1: TMenuItem;
    SearchforHelpOn1: TMenuItem;
    Contents1: TMenuItem;
    pnlMenuLeft: TPanel;
    btnSales: TSpeedButton;
    btnCustomers: TSpeedButton;
    btnProducts: TSpeedButton;
    btnRegisters: TSpeedButton;
    btnUsers: TSpeedButton;
    btnStatistics: TSpeedButton;
    pgcMain: TPageControl;
    tsSales: TTabSheet;
    tsCustomers: TTabSheet;
    tsProducts: TTabSheet;
    tsRegister: TTabSheet;
    tsUsers: TTabSheet;
    tsStatistics: TTabSheet;
    pnl3: TPanel;
    btn1: TSpeedButton;
    lbl1: TLabel;
    btn2: TSpeedButton;
    lbl2: TLabel;
    btn3: TSpeedButton;
    pnl4: TPanel;
    dbnvgrCustomers: TDBNavigator;
    pnl6: TPanel;
    pgcProducts: TPageControl;
    ts1: TTabSheet;
    ts2: TTabSheet;
    ts3: TTabSheet;
    ts4: TTabSheet;
    ts5: TTabSheet;
    pgcRegisters: TPageControl;
    ts6: TTabSheet;
    ts7: TTabSheet;
    ts8: TTabSheet;
    ts9: TTabSheet;
    pgcSearchCustomers: TPageControl;
    ts10: TTabSheet;
    ts11: TTabSheet;
    scrlbx1: TScrollBox;
    stat1: TStatusBar;
    spl1: TSplitter;
    dbgrdCustomers: TDBGrid;
    pnlGridCustomers: TPanel;
    lbl3: TLabel;
    dbedtKode: TDBEdit;
    lbl4: TLabel;
    dbedtNama_Depan: TDBEdit;
    lbl5: TLabel;
    dbedtNama_Belakang: TDBEdit;
    lbl6: TLabel;
    lbl7: TLabel;
    dbedtAlamat: TDBEdit;
    lbl8: TLabel;
    dbedtTelp: TDBEdit;
    lbl9: TLabel;
    dbedtEmail: TDBEdit;
    dbcbbKelamin: TDBComboBox;
    grp1: TGroupBox;
    cbb_CariPelanggan: TComboBox;
    edt_CariPelanggan: TEdit;
    btn4: TSpeedButton;
    chk1: TCheckBox;
    pnlCustomers: TPanel;
    ts14: TTabSheet;
    pnlSuppliers: TPanel;
    spl3: TSplitter;
    pgc_Suppliers: TPageControl;
    ts15: TTabSheet;
    scrlbx3: TScrollBox;
    ts16: TTabSheet;
    pnl10: TPanel;
    pnl11: TPanel;
    dbnvgr2: TDBNavigator;
    dbgrd_Suppliers: TDBGrid;
    pnl_Barang: TPanel;
    pnl_Grid_Baru: TPanel;
    dbgrd_Barang: TDBGrid;
    stat_Barang: TStatusBar;
    pnl1: TPanel;
    pgcSearch_Barang: TPageControl;
    ts_Entry_Barang: TTabSheet;
    ts_Search_Barang: TTabSheet;
    pnl_Kriteria: TPanel;
    pnl_K0: TPanel;
    cbb_CariSup1: TComboBox;
    edt_CariSup1: TEdit;
    pnl_Products_Search: TPanel;
    pnl_K22: TPanel;
    edt_K2: TEdit;
    rb_DanP: TRadioButton;
    rb_AtauP: TRadioButton;
    cbb_Cari2: TComboBox;
    pnl_K1: TPanel;
    chk_Simple_Search: TCheckBox;
    cbb_Cari1: TComboBox;
    edt_K1: TEdit;
    pnl12: TPanel;
    pnlUsers: TPanel;
    spl4: TSplitter;
    pnl13: TPanel;
    dbgrdUsers: TDBGrid;
    stat_Users: TStatusBar;
    pnl14: TPanel;
    dbnvgrUsers: TDBNavigator;
    chkUsers: TCheckBox;
    pgc_Users: TPageControl;
    ts17: TTabSheet;
    scrlbxUsers: TScrollBox;
    ts18: TTabSheet;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    dbcbbAkses: TDBComboBox;
    pnl15: TPanel;
    pnl16: TPanel;
    edt4: TEdit;
    rb3: TRadioButton;
    rb4: TRadioButton;
    cbb4: TComboBox;
    pnl17: TPanel;
    chk3: TCheckBox;
    cbb5: TComboBox;
    edt5: TEdit;
    btn6: TButton;
    pnl7: TPanel;
    spl5: TSplitter;
    pnl18: TPanel;
    dbgrd_Detail_Transactions: TDBGrid;
    stat_Penjualan: TStatusBar;
    pnl_Sales_Sum: TPanel;
    pgc_Sales_Transaction: TPageControl;
    ts19: TTabSheet;
    ts20: TTabSheet;
    pnl21: TPanel;
    dbgrd_Transactions_Left: TDBGrid;
    grp2: TGroupBox;
    cbbTransactionField: TComboBox;
    dbgrd_Sales_Transaction: TDBGrid;
    pnl_Sales_Detail: TPanel;
    pnlSales_Transaksi_Detail_Top1: TPanel;
    pnlSales_Transaksi_Detail_Client1: TPanel;
    cbb_Date: TComboBox;
    lbl12: TLabel;
    dtp_From: TDateTimePicker;
    lbl13: TLabel;
    dtp_To: TDateTimePicker;
    btn_Filter: TSpeedButton;
    dbgrdTransactions2: TDBGrid;
    btn_Cari_Barang: TSpeedButton;
    btn_Cari_Suppliers: TSpeedButton;
    btn_B_Baru: TSpeedButton;
    btn_B_Hapus: TSpeedButton;
    btn_B_Batal: TSpeedButton;
    btn_B_Simpan: TSpeedButton;
    pnl2: TPanel;
    dbgrd1: TDBGrid;
    stat_Barang2: TStatusBar;
    spl7: TSplitter;
    pgc_Barang_Baru: TPageControl;
    ts_Barang_Baru: TTabSheet;
    ts_Barang_Edit: TTabSheet;
    scrlbx_Barang_Baru: TScrollBox;
    lbl_B1: TLabel;
    lbl_B2: TLabel;
    lbl_B3: TLabel;
    lbl_B4: TLabel;
    lbl_B5: TLabel;
    lbl_B6: TLabel;
    lbl_B7: TLabel;
    lbl_B8: TLabel;
    lbl_B9: TLabel;
    lbl_B10: TLabel;
    lbl_B11: TLabel;
    lbl_B12: TLabel;
    dbedtBarcode: TDBEdit;
    dbedtNama_Barang: TDBEdit;
    dbedtMerk_Type: TDBEdit;
    dbedtSatuan: TDBEdit;
    dbedtBiaya: TDBEdit;
    dbedtHarga: TDBEdit;
    dbedtJumlah_Stok: TDBEdit;
    dbedtDiskon: TDBEdit;
    dbedtPajak: TDBEdit;
    dbedtKategori: TDBEdit;
    dbedtKeterangan: TDBEdit;
    dblkcbbSuplayer: TDBLookupComboBox;
    scrlbx_Barang_Edit: TScrollBox;
    lbl_E1: TLabel;
    lbl_E2: TLabel;
    lbl_E3: TLabel;
    lbl_E4: TLabel;
    lbl_E5: TLabel;
    lbl_E6: TLabel;
    lbl_E7: TLabel;
    lbl_E8: TLabel;
    lbl_E9: TLabel;
    lbl_E10: TLabel;
    lbl_E11: TLabel;
    lbl_E12: TLabel;
    dbedtBarcode2: TDBEdit;
    dbedtNama_Barang2: TDBEdit;
    dbedtMerk_Type2: TDBEdit;
    dbedtSatuan2: TDBEdit;
    dbedtBiaya2: TDBEdit;
    dbedtHarga2: TDBEdit;
    dbedtJumlah_Stok2: TDBEdit;
    dbedtDiskon2: TDBEdit;
    dbedtPajak2: TDBEdit;
    dbedtKategori2: TDBEdit;
    dbedtKeterangan2: TDBEdit;
    dblkcbbSuplayer2: TDBLookupComboBox;
    spl2: TSplitter;
    btn_B_Edit: TSpeedButton;
    lbl14: TLabel;
    dbedtNama_Perusahaan: TDBEdit;
    lbl15: TLabel;
    dbedtNama_Agensi: TDBEdit;
    lbl16: TLabel;
    dbedtNo_Rekening_Bank: TDBEdit;
    lbl17: TLabel;
    dbedtAlamat1: TDBEdit;
    lbl18: TLabel;
    dbedtKota: TDBEdit;
    lbl19: TLabel;
    dbedtProvinsi: TDBEdit;
    lbl20: TLabel;
    dbedtTelp1: TDBEdit;
    lbl21: TLabel;
    dbedtEmail1: TDBEdit;
    lbl22: TLabel;
    dbedtKeterangan1: TDBEdit;
    dlgOpen1: TOpenDialog;
    btn_B_Import: TSpeedButton;
    ts12: TTabSheet;
    dlgOpenPic1: TOpenPictureDialog;
    pb1: TProgressBar;
    pnl_Sales_Bottom: TPanel;
    pnl_Sales_Rekap: TPanel;
    dbgrd2: TDBGrid;
    pnl9: TPanel;
    pnl20: TPanel;
    stat_Sales_Detail: TStatusBar;
    pnl22: TPanel;
    stat_Sales_Rekap: TStatusBar;
    scrlbx4: TScrollBox;
    lbl10: TLabel;
    lbl11: TLabel;
    lbl23: TLabel;
    lbl24: TLabel;
    lbl25: TLabel;
    btn_DB_PilihLogo: TSpeedButton;
    img_Pilih: TImage;
    btn7: TSpeedButton;
    dbedtNama_Toko1: TDBEdit;
    dbedtAlamat3: TDBEdit;
    dbedtKota_Provinsi1: TDBEdit;
    dbedtTelp3: TDBEdit;
    dbedtLogo1: TDBEdit;
    pnl_Sales_Rekap_Top: TPanel;
    pnl8: TPanel;
    pnl19: TPanel;
    dbgrd_Rekap_Transaksi: TDBGrid;
    ts13: TTabSheet;
    pnl5: TPanel;
    pnl23: TPanel;
    spl9: TSplitter;
    pnl24: TPanel;
    dbnvgr1: TDBNavigator;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    Label12: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label13: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label14: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    Label15: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    Label16: TLabel;
    DBEdit11: TDBEdit;
    Label17: TLabel;
    DBEdit12: TDBEdit;
    Label18: TLabel;
    DBEdit13: TDBEdit;
    shp1: TShape;
    dtp1: TDateTimePicker;
    chk2: TCheckBox;
    dbgrd3: TDBGrid;
    pgc_Transaksi_Detail_Rekap: TPageControl;
    ts_Transaksi_Detail: TTabSheet;
    ts_Rekap: TTabSheet;
    spl8: TSplitter;
    spl6: TSplitter;
    procedure btnSalesClick(Sender: TObject);
    procedure btnCustomersClick(Sender: TObject);
    procedure btnProductsClick(Sender: TObject);
    procedure btnRegistersClick(Sender: TObject);
    procedure btnUsersClick(Sender: TObject);
    procedure btnStatisticsClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbbTransactionFieldChange(Sender: TObject);
    procedure dbgrd_Sales_TransactionTitleClick(Column: TColumn);
    procedure dbgrd_Transactions_LeftTitleClick(Column: TColumn);
    procedure dbgrd_Detail_TransactionsTitleClick(Column: TColumn);
    procedure dbgrdTransactions2TitleClick(Column: TColumn);
    procedure cbb_DateChange(Sender: TObject);
    procedure btn_FilterClick(Sender: TObject);
    procedure dtp_FromChange(Sender: TObject);
    procedure dtp_ToChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure chk_Simple_SearchClick(Sender: TObject);
    procedure dbnvgr_BarangBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure pgcSearch_BarangChange(Sender: TObject);
    procedure dbgrdCustomersTitleClick(Column: TColumn);
    procedure dbgrd_BarangTitleClick(Column: TColumn);
    procedure dbgrd_SuppliersTitleClick(Column: TColumn);
    procedure dbgrdUsersTitleClick(Column: TColumn);
    procedure btn_B_BaruClick(Sender: TObject);
    procedure btn_B_SimpanClick(Sender: TObject);
    procedure btn_B_BatalClick(Sender: TObject);
    procedure dbedtKategoriKeyPress(Sender: TObject; var Key: Char);
    procedure dbedtNama_BarangKeyPress(Sender: TObject; var Key: Char);
    procedure dbedtMerk_TypeKeyPress(Sender: TObject; var Key: Char);
    procedure dbedtSatuanKeyPress(Sender: TObject; var Key: Char);
    procedure dbedtBiayaKeyPress(Sender: TObject; var Key: Char);
    procedure dbedtHargaKeyPress(Sender: TObject; var Key: Char);
    procedure dbedtJumlah_StokKeyPress(Sender: TObject; var Key: Char);
    procedure dbedtDiskonKeyPress(Sender: TObject; var Key: Char);
    procedure dbedtPajakKeyPress(Sender: TObject; var Key: Char);
    procedure dbedtBarcodeKeyPress(Sender: TObject; var Key: Char);
    procedure dbedtKeteranganKeyPress(Sender: TObject; var Key: Char);
    procedure dblkcbbSuplayerKeyPress(Sender: TObject; var Key: Char);
    procedure dbgrd_Detail_TransactionsDrawDataCell(Sender: TObject;
      const Rect: TRect; Field: TField; State: TGridDrawState);
    procedure btn_Cari_BarangClick(Sender: TObject);
    procedure btn_B_HapusClick(Sender: TObject);
    procedure btn_B_EditClick(Sender: TObject);
    procedure edt_K1KeyPress(Sender: TObject; var Key: Char);
    procedure edt_K2KeyPress(Sender: TObject; var Key: Char);
    procedure btn_Cari_SuppliersClick(Sender: TObject);
    procedure btn_B_ImportClick(Sender: TObject);
    procedure btn_UpdateClick(Sender: TObject);
    procedure btn_PilihLogoClick(Sender: TObject);
    procedure edtNama_TokoChange(Sender: TObject);
    procedure btn_DB_PilihLogoClick(Sender: TObject);
    procedure DBEdit11Change(Sender: TObject);
    procedure DBEdit11KeyPress(Sender: TObject; var Key: Char);
    procedure dbgrd_Rekap_TransaksiTitleClick(Column: TColumn);
    procedure dbgrd2TitleClick(Column: TColumn);
  private
    { Private declarations }
    procedure Setting_Sales;
    procedure ReadConfig(isRead:Boolean);
    procedure Setting_Pelanggan;
    procedure Setting_Barang(IsiCBO:Boolean);
    procedure Setting_Suppliers;
    procedure Setting_Users;
    procedure Setting_Registers;

    procedure DeleteTempBarang;
    function BarcodeValid(B:string):Boolean;
    procedure CariBarang;
    procedure ImportFromExcel(Table: TADOTable);
  public
    { Public declarations }
    function CekAdaTransaksi(cn:TADOConnection; DateFrom,DateTo:TDateTime):Boolean;
    procedure Sales_Filter;
    procedure RekapBarang(Q:TADOQuery; DateFrom,DateTo:TDateTime);
    procedure RekapTransaksi(Q:TADOQuery; DateFrom,DateTo:TDateTime);
  end;

var
  frmAdmin: TfrmAdmin;

implementation

uses uDM;

{$R *.dfm}
var Init:Boolean;

procedure TfrmAdmin.RekapTransaksi(Q:TADOQuery; DateFrom,DateTo:TDateTime);
begin
  Q.Close;
  Q.Parameters.Items[0].Value:= DateFrom;
  Q.Parameters.Items[1].Value:= DateTo;
  Q.Open;
end;

procedure TfrmAdmin.RekapBarang(Q:TADOQuery; DateFrom,DateTo:TDateTime);
var i,j,k,m,ID:integer;

    procedure DeleteRekap;
    var QR:TADOQuery;
    begin
      QR := TADOQuery.Create(nil);
      QR.Connection := DM.cn;
      QR.SQL.Clear;
      QR.SQL.Add('Delete * From RekapBarang');
      QR.ExecSQL;
      FreeAndNil(QR);
    end;

begin
  Q.Close;
  Q.Parameters.Items[0].Value:= DateFrom;
  Q.Parameters.Items[1].Value:= DateTo;
  Q.Open;

  DeleteRekap;
  if not(dm.tbl_RekapBarang.Active) then
     dm.tbl_RekapBarang.Open;

  j:=0; i:=0;
  Q.First; ID :=0;
  while not Q.eof do
  begin
    if ID <> Q.Fields[0].Value then
    begin
       DM.tbl_RekapBarang.Insert;
       for j:=0 to Q.FieldCount-1 do
         dm.tbl_RekapBarang.Fields[j].Value := Q.Fields[j].Value;
       dm.tbl_RekapBarang.Post;
    end
    else
    begin
      dm.tbl_RekapBarang.Edit;
      dm.tbl_RekapBarang.FieldValues['Jumlah_Barang']:= Q.FieldValues['Jumlah_Barang'] + dm.tbl_RekapBarang.FieldValues['Jumlah_Barang'];
      dm.tbl_RekapBarang.UpdateRecord;
    end;

    ID := Q.Fields[0].Value;

    inc(i);
    Q.Next;
  end;

end;

function TfrmAdmin.CekAdaTransaksi(cn:TADOConnection; DateFrom,DateTo:TDateTime):Boolean;
var Ada:Boolean;
    SQL:string;
    Q : TADOQuery;
begin
  Ada:=False;
  Q:=TADOQuery.Create(nil);
  Q.Connection:=cn;
  SQL:='Select * From Penjualan Where Waktu Between :Waktu1 AND :Waktu2';
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
  if Q.RecordCount >0 then
    Ada := True;
  Q.Close;
  FreeAndNil(Q);
  Result:=Ada;
end;


procedure TfrmAdmin.Sales_Filter;
var GT,THD,TL:Double;
    JT:Integer;

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

    procedure Hitung_Total_Laba(cn:TADOConnection; DateFrom,DateTo:TDateTime;
              var GrandTotal, Total_Harga_Dasar, Total_Laba:Double; var Jumlah_Transaksi:Integer);
    var SQL:string;
        Q:TADOQuery;
    begin
      SQL:='SELECT Sum(Grand_Total) AS GT, Sum(Total_Harga_Dasar) AS THD, ' +
           'Sum(Total_Laba) AS TL FROM Penjualan Where Waktu Between :Waktu1 AND :Waktu2';

      Q:=TADOQuery.Create(nil);
      Q.Connection:=cn;
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

      GrandTotal:= Q.FieldValues['GT'];
      Total_Harga_Dasar := Q.FieldValues['THD'];
      Total_Laba := Q.FieldValues['TL'];
      Jumlah_Transaksi := Q.RecordCount;
      Q.Close;
      FreeAndNil(Q);
    end;

    procedure Filter_Q(Q:TADOQuery; dFrom, dTo:TDateTime);
    begin
      Q.Close;
      Q.SQL.Clear;
      Q.SQL.Add('Select * From Penjualan Where Waktu Between :Waktu1 AND :Waktu2' );
      Q.Parameters[0].DataType := ftDateTime;
      Q.Parameters[1].DataType := ftDateTime;
      Q.ParamCheck:=True;
      Q.Prepared:=True;
      Q.Parameters[0].Value := dtp_From.DateTime;
      Q.Parameters[1].Value := dtp_To.DateTime;
      Q.Open;
    end;
begin
  if CekAdaTransaksi(DM.cn,dtp_From.DateTime,dtp_To.DateTime) then
  begin
    RekapTransaksi(dm.qry_Rekap_Transaksi,dtp_From.DateTime,dtp_To.DateTime);
//    GT:=0; THD:=0; TL:=0;JT:=0;
//    Hitung_Total_Laba(DM.cn, dtp_From.DateTime,dtp_To.DateTime,GT,THD,TL,JT);
    Filter_Q(DM.qry_Penjualan,dtp_From.DateTime,dtp_To.DateTime);
//   stat_Sales_Sum.Panels[1].Text:=IntToStr(JT);
//    stat_Sales_Sum.Panels[3].Text:= 'Rp.' + FormatCurr('#,##0', GT);//FloatToStr(GT);
//    stat_Sales_Sum.Panels[5].Text:= 'Rp.' + FormatCurr('#,##0', THD);//FloatToStr(THD);
//    stat_Sales_Sum.Panels[7].Text:= 'Rp.' + FormatCurr('#,##0', TL);//FloatToStr(TL);
//    stat_Sales_Sum.Panels[3].Text:= FloatToStr(GT);
//    stat_Sales_Sum.Panels[3].Text:= FloatToStr(GT);

    RekapBarang(DM.qry_RekapBarang, dtp_From.DateTime,dtp_To.DateTime);

  end;
{
  dm.qry_Penjualan.Close;
  dm.qry_Penjualan.SQL.Clear;
  dm.qry_Penjualan.SQL.Add('Select * From Penjualan Where Waktu Between :Waktu1 AND :Waktu2' );
  dm.qry_Penjualan.Parameters[0].DataType := ftDateTime;
  dm.qry_Penjualan.Parameters[1].DataType := ftDateTime;
  dm.qry_Penjualan.ParamCheck:=True;
  dm.qry_Penjualan.Prepared:=True;
  dm.qry_Penjualan.Parameters[0].Value := dtp_From.DateTime;
  dm.qry_Penjualan.Parameters[1].Value := dtp_To.DateTime;
  dm.qry_Penjualan.Open;

  stat_Penjualan.Panels[1].Text := IntToStr(DM.qry_Penjualan.RecordCount);
  try
    ST:=GetSumTotal(DM.cn,dtp_From.DateTime, dtp_To.DateTime);
    stat_Penjualan.Panels[5].Text := FloatToStr(ST);
  except
  end;
}

end;

procedure TfrmAdmin.ImportFromExcel(Table: TADOTable);
var
  Excel : Variant;
  i : Integer;
  pc: Real;
  ValCek:string;
  TotalData,TotalImport,TotalNotImport:Integer;

begin
  if dlgOpen1.Execute  then
  begin
    Try
      Excel := CreateOleObject('Excel.Application');
      Excel.WorkBooks.Open(dlgOpen1.FileName);

      if not(Table.Active) then Table.Open;
      i:=2;

      Screen.Cursor := crHourGlass;
      TotalData:=0; TotalImport:=0; TotalNotImport:=0;
      while VarToStr(Excel.Cells.Range['a'+inttostr(i)])<>'' do
      begin
        inc(i);
        Application.ProcessMessages;
      end;
      TotalData :=I-2;
      pb1.Max:=TotalData;
      pb1.Visible:=True;
      pb1.Position:=0;

      i:=2;
      while VarToStr(Excel.Cells.Range['a'+inttostr(i)])<>'' do
      begin
        pb1.Position := i-2;
        pc:= (((i)/Totaldata)*100);
        btn_B_Import.Caption := Format('%8.0f',[pc]) + ' %';
//        Inc(TotalData);
        ValCek:= VarToStr(Excel.cells.range['b'+inttostr(i)]);
        if BarcodeValid(ValCek) then
        begin
          Inc(TotalImport);
          Table.Insert;

          Table.FieldValues['Barcode'] := VarToStr(Excel.cells.range['b'+inttostr(i)]);
          Table.FieldValues['Nama_Barang'] := VarToStr(Excel.cells.range['c'+inttostr(i)]);
          Table.FieldValues['Merk_Type'] := VarToStr(Excel.cells.range['d'+inttostr(i)]);
          Table.FieldValues['Satuan'] := VarToStr(Excel.cells.range['e'+inttostr(i)]);
          Table.FieldValues['Biaya'] := VarToStr(Excel.cells.range['f'+inttostr(i)]);
          Table.FieldValues['Harga'] := VarToStr(Excel.cells.range['g'+inttostr(i)]);
          Table.FieldValues['Jumlah_Stok'] := VarToStr(Excel.cells.range['h'+inttostr(i)]);
          Table.FieldValues['Diskon'] := VarToStr(Excel.cells.range['i'+inttostr(i)]);
          Table.FieldValues['Pajak'] := VarToStr(Excel.cells.range['j'+inttostr(i)]);
          Table.FieldValues['Kategori'] := VarToStr(Excel.cells.range['k'+inttostr(i)]);
          Table.FieldValues['Keterangan'] := VarToStr(Excel.cells.range['l'+inttostr(i)]);
          Table.FieldValues['Suplayer_ID'] := VarToStr(Excel.cells.range['m'+inttostr(i)]);

          Table.Post;
        end
        else
        begin
          Inc(TotalNotImport);
        end;

        inc(i);
        Application.ProcessMessages;

      end;
//    end;
      Excel.Quit;
    Except
      on E:Exception do
      begin
        raise Exception.Create(E.Message);
        Screen.Cursor := crDefault;

        pb1.Visible:=False;
        Excel.Quit;
        btn_B_Import.Caption:= 'Import';
      end;
    End;

    Screen.Cursor := crDefault;

    pb1.Visible:=False;
    ShowMessage('Total Import     = ' + IntToStr(TotalImport) + #13#10 +
                'Total Not Import = ' + IntToStr(TotalNotImport) + #13#10 +
                'Total Data       = ' + IntToStr(TotalData));
    btn_B_Import.Caption:= 'Import';
    stat_Barang.Panels[1].Text := IntToStr(DM.tbl_Barang.RecordCount);
  end;

end;

procedure TfrmAdmin.CariBarang;
var SQL:string;
begin
  SQL:='Select * From Barang';
  if Length(Trim(edt_K1.Text))>0 then
  case cbb_Cari1.ItemIndex of
//    0..3,9,10:;
    4,5,7,8:;    // currency
    6:;          // integer
    else        // string;
    begin
      SQL := SQL + ' Where ' + cbb_Cari1.Text + ' Like "%' + edt_K1.Text + '%"';
    end;

  end;

  if pnl_K22.Visible then
  begin
    if Length(Trim(edt_K2.Text))>0 then
       if rb_DanP.Checked then
       begin
         SQL := SQL + ' AND ' + cbb_Cari2.Text + ' Like "%' + edt_K2.Text + '%"';
       end
       else
       if rb_AtauP.Checked then
       begin
         SQL := SQL + ' OR ' + cbb_Cari2.Text + ' Like "%' + edt_K2.Text + '%"';
       end;
  end;
  dm.qry_CariBarang.Close;
  dm.qry_CariBarang.SQL.Clear;
  dm.qry_CariBarang.SQL.Add(SQL);
  DM.qry_CariBarang.Open;
//  dm.qry_CariBarang.Fields[0].Visible:=False;

//  stat1.Panels[1].Text := 'Jumlah Record : ' + IntToStr(dm.qry_CariBarang.RecordCount);
  stat_Barang2.Panels[1].Text := IntToStr(dm.qry_CariBarang.RecordCount)
end;

function TfrmAdmin.BarcodeValid(B:string):Boolean;
var //SQL:string;
    V:Integer;
begin
  dm.qry_CekBarcode.Close;
  DM.qry_CekBarcode.Parameters.ParamByName('B').Value:=B;
  dm.qry_CekBarcode.open;

  V:=DM.qry_CekBarcode.RecordCount;
  if V > 0 then Result := False else Result:= True;
end;


procedure TfrmAdmin.DeleteTempBarang;
var Q : TADOQuery;
begin
  Q := DM.QTemp;
  Q.Close;
  Q.SQL.Clear;
  Q.SQL.Add('Delete * From Temp_Barang');
  Q.ExecSQL;
end;



procedure TfrmAdmin.ReadConfig(isRead:Boolean);
var IniFile: string;
    FConfig: TIniFile;

    procedure ReadOnly;
    var i:Integer;
        ws:Integer;
    begin
        ws:=0;
        frmAdmin.Width := FConfig.ReadInteger('INTERFACE_ADMIN','Admin_Form_Width',frmAdmin.Width);
        frmAdmin.Height := FConfig.ReadInteger('INTERFACE_ADMIN','Admin_Form_Height',frmAdmin.Height);
        ws:= FConfig.ReadInteger('INTERFACE_ADMIN','Admin_Form_State',ws);
        case ws of
          0: frmAdmin.WindowState := wsNormal;
          1: frmAdmin.WindowState := wsMinimized;
          2: frmAdmin.WindowState := wsMaximized;
        end;

        pgcMain.ActivePageIndex := FConfig.ReadInteger('INTERFACE_ADMIN','Page_Main_Index',pgcMain.ActivePageIndex);

    //sales
        pgc_Sales_Transaction.Width := FConfig.ReadInteger('INTERFACE_ADMIN','Sales_Transaction_Width',pgc_Sales_Transaction.Width);
        pgc_Sales_Transaction.ActivePageIndex := FConfig.ReadInteger('INTERFACE_ADMIN','Sales_Transaction_Index',pgc_Sales_Transaction.ActivePageIndex);

        cbb_Date.ItemIndex := FConfig.ReadInteger('INTERFACE_ADMIN','Sales_Date_Index',cbb_Date.ItemIndex);
        cbbTransactionField.ItemIndex := FConfig.ReadInteger('INTERFACE_ADMIN','Sales_Field_Index',cbbTransactionField.ItemIndex);

//        pnlSales_Top1.Height := FConfig.ReadInteger('INTERFACE_ADMIN','Sales_Panel_Height',pnlSales_Top1.Height);

        dbgrd_Transactions_Left.Columns[0].Width := FConfig.ReadInteger('INTERFACE_ADMIN','Sales_GridLeft_Width',dbgrd_Transactions_Left.Columns[0].Width);
        dbgrdTransactions2.Columns[0].Width := FConfig.ReadInteger('INTERFACE_ADMIN','Sales_Grid2_Width',dbgrdTransactions2.Columns[0].Width);

        for i:=0 to dbgrd_Sales_Transaction.Columns.Count -1 do
          dbgrd_Sales_Transaction.Columns[i].Width := FConfig.ReadInteger('INTERFACE_ADMIN','Sales_GridTrans_Width_' + IntToStr(i),dbgrd_Sales_Transaction.Columns[i].Width);

        for i:=0 to dbgrd_Detail_Transactions.Columns.Count -1 do
          dbgrd_Detail_Transactions.Columns[i].Width := FConfig.ReadInteger('INTERFACE_ADMIN','Sales_DetailTrans_Width_' + IntToStr(i),dbgrd_Detail_Transactions.Columns[i].Width);

    //Customers
        pgcSearchCustomers.Width := FConfig.ReadInteger('INTERFACE_ADMIN','Search_Customers_Width',pgcSearchCustomers.Width);
        pgcSearchCustomers.ActivePageIndex := FConfig.ReadInteger('INTERFACE_ADMIN','Search_Customers_Index',pgcSearchCustomers.ActivePageIndex);
        for i:=0 to dbgrdCustomers.Columns.Count -1 do
          dbgrdCustomers.Columns[i].Width := FConfig.ReadInteger('INTERFACE_ADMIN','Grid_Customers_Width_' + IntToStr(i),dbgrdCustomers.Columns[i].Width);

    //Products
        pgcProducts.ActivePageIndex := FConfig.ReadInteger('INTERFACE_ADMIN','Page_Products_Index',pgcProducts.ActivePageIndex);
        pgcSearch_Barang.ActivePageIndex := FConfig.ReadInteger('INTERFACE_ADMIN','Page_Search_Products_Index',pgcSearch_Barang.ActivePageIndex);
        pgcSearch_BarangChange(nil);
        pgcSearch_Barang.Width := FConfig.ReadInteger('INTERFACE_ADMIN','Page_Search_Products_Width',pgcSearch_Barang.Width);
        chk_Simple_Search.Checked := FConfig.ReadBool('INTERFACE_ADMIN','Product_Simple_Search',chk_Simple_Search.Checked);
        cbb_Cari1.ItemIndex := FConfig.ReadInteger('INTERFACE_ADMIN','Products_Cari1_Index',cbb_Cari1.ItemIndex);
        cbb_Cari2.ItemIndex := FConfig.ReadInteger('INTERFACE_ADMIN','Products_Cari2_Index',cbb_Cari2.ItemIndex);
        for i:=0 to dbgrd_Barang.Columns.Count -1 do
          dbgrd_Barang.Columns[i].Width := FConfig.ReadInteger('INTERFACE_ADMIN','Grid_Barang_Width_' + IntToStr(i),dbgrd_Barang.Columns[i].Width);

    //Suppliers
        pgc_Suppliers.ActivePageIndex := FConfig.ReadInteger('INTERFACE_ADMIN','Page_Suppliers_Index',pgc_Suppliers.ActivePageIndex);
        pgc_Suppliers.Width := FConfig.ReadInteger('INTERFACE_ADMIN','Page_Suppliers_Width',pgc_Suppliers.Width);
        for i:=0 to dbgrd_Suppliers.Columns.Count -1 do
          dbgrd_Suppliers.Columns[i].Width := FConfig.ReadInteger('INTERFACE_ADMIN','Grid_Suppliers_Width_' + IntToStr(i),dbgrd_Suppliers.Columns[i].Width);

        cbb_CariSup1.ItemIndex := FConfig.ReadInteger('INTERFACE_ADMIN','Suppliers_Cari1_Index',cbb_CariSup1.ItemIndex);

    //Users
        pgc_Users.ActivePageIndex := FConfig.ReadInteger('INTERFACE_ADMIN','Page_Users_Index',pgc_Users.ActivePageIndex);
        pgc_Users.Width := FConfig.ReadInteger('INTERFACE_ADMIN','Page_Users_Width',pgc_Users.Width);
        for i:=0 to dbgrdUsers.Columns.Count -1 do
          dbgrdUsers.Columns[i].Width := FConfig.ReadInteger('INTERFACE_ADMIN','Grid_Users_Width_' + IntToStr(i),dbgrdUsers.Columns[i].Width);

    end;

    procedure WriteConfig;
    var i,ws:Integer;
    begin
        ws:=0;
        FConfig.WriteInteger('INTERFACE_ADMIN','Admin_Form_Width',frmAdmin.Width);
        FConfig.WriteInteger('INTERFACE_ADMIN','Admin_Form_Height',frmAdmin.Height);
        case frmAdmin.WindowState of
          wsNormal: ws := 0;
          wsMinimized : ws := 1;
          wsMaximized : ws := 2;
        end;
        FConfig.WriteInteger('INTERFACE_ADMIN','Admin_Form_State',ws);

        FConfig.WriteInteger('INTERFACE_ADMIN','Page_Main_Index',pgcMain.ActivePageIndex);

    // sales    
        FConfig.WriteInteger('INTERFACE_ADMIN','Sales_Transaction_Width',pgc_Sales_Transaction.Width);
        FConfig.WriteInteger('INTERFACE_ADMIN','Sales_Transaction_Index',pgc_Sales_Transaction.ActivePageIndex);

        FConfig.WriteInteger('INTERFACE_ADMIN','Sales_Date_Index',cbb_Date.ItemIndex);
        FConfig.WriteInteger('INTERFACE_ADMIN','Sales_Field_Index',cbbTransactionField.ItemIndex);
//        FConfig.WriteInteger('INTERFACE_ADMIN','Sales_Panel_Height',pnlSales_Top1.Height);

        FConfig.WriteInteger('INTERFACE_ADMIN','Sales_GridLeft_Width',dbgrd_Transactions_Left.Columns[0].Width);
        FConfig.WriteInteger('INTERFACE_ADMIN','Sales_Grid2_Width',dbgrdTransactions2.Columns[0].Width);

        for i:=0 to dbgrd_Sales_Transaction.Columns.Count -1 do
          FConfig.WriteInteger('INTERFACE_ADMIN','Sales_GridTrans_Width_' + IntToStr(i),dbgrd_Sales_Transaction.Columns[i].Width);

        for i:=0 to dbgrd_Detail_Transactions.Columns.Count -1 do
          FConfig.WriteInteger('INTERFACE_ADMIN','Sales_DetailTrans_Width_' + IntToStr(i),dbgrd_Detail_Transactions.Columns[i].Width);

    //Customers
        FConfig.WriteInteger('INTERFACE_ADMIN','Search_Customers_Width',pgcSearchCustomers.Width);
        FConfig.WriteInteger('INTERFACE_ADMIN','Search_Customers_Index',pgcSearchCustomers.ActivePageIndex);
        for i:=0 to dbgrdCustomers.Columns.Count -1 do
          FConfig.WriteInteger('INTERFACE_ADMIN','Grid_Customers_Width_' + IntToStr(i),dbgrdCustomers.Columns[i].Width);

    //Products
        FConfig.WriteInteger('INTERFACE_ADMIN','Page_Products_Index',pgcProducts.ActivePageIndex);
        FConfig.WriteInteger('INTERFACE_ADMIN','Page_Search_Products_Index',pgcSearch_Barang.ActivePageIndex);
        FConfig.WriteInteger('INTERFACE_ADMIN','Page_Search_Products_Width',pgcSearch_Barang.Width);
        FConfig.WriteBool('INTERFACE_ADMIN','Product_Simple_Search',chk_Simple_Search.Checked);
        FConfig.WriteInteger('INTERFACE_ADMIN','Products_Cari1_Index',cbb_Cari1.ItemIndex);
        FConfig.WriteInteger('INTERFACE_ADMIN','Products_Cari2_Index',cbb_Cari2.ItemIndex);
        for i:=0 to dbgrd_Barang.Columns.Count -1 do
          FConfig.WriteInteger('INTERFACE_ADMIN','Grid_Barang_Width_' + IntToStr(i),dbgrd_Barang.Columns[i].Width);

    //Suppliers
        FConfig.WriteInteger('INTERFACE_ADMIN','Page_Suppliers_Index',pgc_Suppliers.ActivePageIndex);
        FConfig.WriteInteger('INTERFACE_ADMIN','Page_Suppliers_Width',pgc_Suppliers.Width);
        for i:=0 to dbgrd_Suppliers.Columns.Count -1 do
          FConfig.WriteInteger('INTERFACE_ADMIN','Grid_Suppliers_Width_' + IntToStr(i),dbgrd_Suppliers.Columns[i].Width);
        FConfig.WriteInteger('INTERFACE_ADMIN','Suppliers_Cari1_Index',cbb_CariSup1.ItemIndex);

    //Users
        FConfig.WriteInteger('INTERFACE_ADMIN','Page_Users_Index',pgc_Users.ActivePageIndex);
        FConfig.WriteInteger('INTERFACE_ADMIN','Page_Users_Width',pgc_Users.Width);
        for i:=0 to dbgrdUsers.Columns.Count -1 do
          FConfig.WriteInteger('INTERFACE_ADMIN','Grid_Users_Width_' + IntToStr(i),dbgrdUsers.Columns[i].Width);
    end;
begin
// Cek Config File, Jika Tidak Ada Buat
  IniFile := ChangeFileExt(application.ExeName , '.INI');
  FConfig := TIniFile.Create(IniFile);

  if FileExists(IniFile) then
    begin
      if isRead then ReadOnly else WriteConfig;
    end
  else
    begin
      WriteConfig;
    end;

  FreeAndNil(FConfig);
end;


procedure TfrmAdmin.Setting_Registers;
var i:Integer;
   Logo:string;
begin
  if not(dm.tbl_Konfigurasi.Active) then
     dm.tbl_Konfigurasi.Open;
  dm.tbl_Konfigurasi.Last;
  if not(VarIsNull(DM.tbl_Konfigurasi.FieldValues['Logo'])) then
  begin
      logo:=DM.tbl_Konfigurasi.FieldValues['Logo'];
      if FileExists(Logo)then
         img_Pilih.Picture.LoadFromFile(Logo);
  end;

  for i:=0 to DM.tbl_Konfigurasi.FieldCount-1 do
  begin

  end;


//  ValueListEditor1.Values['Nama Toko'] := dm.tbl_Konfigurasi.Recordset.
//  for i:= 0 to dbgrdUsers.Columns.Count-1 do
//    dbgrdUsers.Columns[i].Title.Alignment := taCenter;
end;



procedure TfrmAdmin.Setting_Users;
var i:Integer;
begin
  for i:= 0 to dbgrdUsers.Columns.Count-1 do
    dbgrdUsers.Columns[i].Title.Alignment := taCenter;
end;


procedure TfrmAdmin.Setting_Suppliers;
var i:Integer;
begin
  cbb_CariSup1.Items.Clear;
  for i:= 0 to dbgrd_Suppliers.Columns.Count-1 do
  begin
    dbgrd_Suppliers.Columns[i].Title.Alignment := taCenter;
    cbb_CariSup1.Items.Add(dbgrd_Suppliers.Columns[i].Title.Caption);
  end;

end;




procedure TfrmAdmin.Setting_Barang(IsiCBO:Boolean);
var i:Integer;
    S:string;
begin
  if IsiCBO then
  begin
    cbb_Cari1.Items.Clear;
    cbb_Cari2.Items.Clear;
    for i:= 0 to dbgrd_Barang.Columns.Count-1 do
    begin
      dbgrd_Barang.Columns[i].Title.Alignment := taCenter;
      S:=dbgrd_Barang.Columns[i].Title.Caption;
      cbb_Cari1.Items.Add(S);
      cbb_Cari2.Items.Add(S);
    end;
  end
  else
  begin
    for i:= 0 to dbgrd_Barang.Columns.Count-1 do
      dbgrd_Barang.Columns[i].Title.Alignment := taCenter;
  end;
  pgc_Barang_Baru.ActivePageIndex:=1;
  stat_Barang.Panels[1].Text:= inttostr(DM.tbl_Barang.RecordCount);

end;


procedure TfrmAdmin.Setting_Pelanggan;
var i:Integer;
begin
  for i:= 0 to dbgrdCustomers.Columns.Count-1 do
    dbgrdCustomers.Columns[i].Title.Alignment := taCenter;
end;


procedure TfrmAdmin.Setting_Sales;
var i:Integer;
begin
  cbbTransactionField.Items.Clear;
  for i:=3 to dm.qry_Penjualan.FieldCount-1 do
    cbbTransactionField.Items.Add(DM.qry_Penjualan.Fields[i].FieldName);

  //nanti di readconfig
  cbbTransactionField.ItemIndex:=4;

//  dbgrdTransactions.Columns[0].Visible:=True;
  dbgrd_Transactions_Left.Columns[0].Field :=  DM.qry_Penjualan.FieldByName(cbbTransactionField.Text);
  dbgrdTransactions2.Columns[0].Field :=  DM.qry_Penjualan.FieldByName(cbbTransactionField.Text);
//  dbgrd_Sales_Transaction.Columns[0].Field :=  DM.qry_Penjualan.FieldByName(cbbTransactionField.Text);
//  for i:=1 to dbgrdTransactions.Columns.Count-1 do
//    dbgrdTransactions.Columns[i].Visible := False;

  dtp_To.DateTime := Now;
  dtp_To.MaxDate := Now;
  cbb_DateChange(nil);

  dbgrd_Transactions_Left.Columns[0].Title.Alignment := taCenter;
  for i:=0 to dbgrd_Sales_Transaction.Columns.Count-1 do
     dbgrd_Sales_Transaction.Columns[i].Title.Alignment := taCenter;

  for i:=0 to dbgrd_Detail_Transactions.Columns.Count-1 do
     dbgrd_Detail_Transactions.Columns[i].Title.Alignment := taCenter;

  cbbTransactionFieldChange(nil);
  
end;


procedure TfrmAdmin.btnSalesClick(Sender: TObject);
begin
  pgcMain.ActivePageIndex := 0;
end;

procedure TfrmAdmin.btnCustomersClick(Sender: TObject);
begin
  pgcMain.ActivePageIndex := 1;
end;

procedure TfrmAdmin.btnProductsClick(Sender: TObject);
begin
  pgcMain.ActivePageIndex := 2;
end;

procedure TfrmAdmin.btnRegistersClick(Sender: TObject);
begin
  pgcMain.ActivePageIndex := 3;
//  MessageDlg('Duh, ini belum di implementasikan, rencananya untuk data Cash dalam Cash Drawer',mtInformation,mbOKCancel,0);
end;

procedure TfrmAdmin.btnUsersClick(Sender: TObject);
begin
  pgcMain.ActivePageIndex := 4;
end;

procedure TfrmAdmin.btnStatisticsClick(Sender: TObject);
begin
//  pgcMain.ActivePageIndex := 5;
  MessageDlg('Duh, ini belum di implementasikan, Kira-kira Isinya apa ya???',mtInformation,mbOKCancel,0);
end;

procedure TfrmAdmin.FormCreate(Sender: TObject);
begin
  init:=True;
  Setting_Sales;
  Setting_Pelanggan;
  Setting_Barang(True);
  Setting_Suppliers;
  Setting_Users;
  Setting_Registers;
  ReadConfig(True);
  Init:=False;
end;

procedure TfrmAdmin.cbbTransactionFieldChange(Sender: TObject);
begin
  dbgrd_Transactions_Left.Columns[0].Field :=  DM.qry_Penjualan.FieldByName(cbbTransactionField.Text);
 // dbgrd_Sales_Transaction.Columns[0].Field :=  DM.qry_Penjualan.FieldByName(cbbTransactionField.Text);
 dbgrdTransactions2.Columns[0].Field :=  DM.qry_Penjualan.FieldByName(cbbTransactionField.Text);
end;

procedure TfrmAdmin.dbgrd_Sales_TransactionTitleClick(Column: TColumn);
var
  DataSet: TDataSet;
begin
    DataSet := Column.Field.DataSet;
    if not(DataSet.Active) then Exit;
    if DataSet is TCustomADODataSet then
    with TCustomADODataSet(DataSet) do
    begin
      if (Pos(Column.Field.FieldName, Sort) = 1) and (Pos(' DESC', Sort) = 0) then
        Sort := Column.Field.FieldName + ' DESC' else
        Sort := Column.Field.FieldName + ' ASC';
//      stat2.Panels[0].Text := 'Sorted on '+Sort;
    end;
end;


procedure TfrmAdmin.dbgrd_Transactions_LeftTitleClick(Column: TColumn);
var
  DataSet: TDataSet;
begin
    DataSet := Column.Field.DataSet;
    if DataSet is TCustomADODataSet then
    with TCustomADODataSet(DataSet) do
    begin
      if (Pos(Column.Field.FieldName, Sort) = 1) and (Pos(' DESC', Sort) = 0) then
        Sort := Column.Field.FieldName + ' DESC' else
        Sort := Column.Field.FieldName + ' ASC';
//      stat2.Panels[0].Text := 'Sorted on '+Sort;
    end;
end;


procedure TfrmAdmin.dbgrd_Detail_TransactionsTitleClick(Column: TColumn);
var
  DataSet: TDataSet;
begin
    DataSet := Column.Field.DataSet;
    if not(DataSet.Active) then Exit;
    if DataSet is TCustomADODataSet then
    with TCustomADODataSet(DataSet) do
    begin
      if Column.Field.FieldKind  = fkLookup then Exit;
      if (Pos(Column.Field.FieldName, Sort) = 1) and (Pos(' DESC', Sort) = 0) then
        Sort := Column.Field.FieldName + ' DESC' else
        Sort := Column.Field.FieldName + ' ASC';
//      stat2.Panels[0].Text := 'Sorted on '+Sort;
    end;
end;

procedure TfrmAdmin.dbgrdTransactions2TitleClick(Column: TColumn);
var
  DataSet: TDataSet;
begin
    DataSet := Column.Field.DataSet;
    if DataSet is TCustomADODataSet then
    with TCustomADODataSet(DataSet) do
    begin
      if (Pos(Column.Field.FieldName, Sort) = 1) and (Pos(' DESC', Sort) = 0) then
        Sort := Column.Field.FieldName + ' DESC' else
        Sort := Column.Field.FieldName + ' ASC';
//      stat2.Panels[0].Text := 'Sorted on '+Sort;
    end;
end;

procedure TfrmAdmin.cbb_DateChange(Sender: TObject);
var Ena:Boolean;
  D1,D2:TDateTime;
begin
  Ena := cbb_Date.ItemIndex = 5;
  dtp_From.Enabled := Ena;
  dtp_To.Enabled := Ena;
  D1:= Now; D2:=D1;

  case cbb_Date.ItemIndex of
  0: begin
       // Alltime
       D1:=StrToDateTime('1/1/2000');
       D2:=Now();
     end;
  1: begin
       // Today
       D1:=Now;
       D2:= D1;
     end;
  2: begin
       // This Week
       D2:=Now;
       D1:= StartOfTheWeek(D2);
     end;
  3: begin
       // This Month
       D2:=Now;
       D1:= StartOfTheMonth(D2) ;
     end;
  4: begin
       // This Year
       D2:=Now;
       D1:= StartOfTheYear(D2);
     end;
  5: begin
       // Custom
       D1:= dtp_From.DateTime;
       D2:= dtp_To.DateTime;

       dtp_From.MaxDate := dtp_To.Date;
       dtp_To.MinDate := dtp_From.Date;
       dtp_To.MaxDate := Date;
     end;
  end;

  dtp_From.DateTime:=D1;
  dtp_To.DateTime  :=D2;
  dtp_From.Time := StrToTime('00:00:00');
  dtp_To.Time := StrToTime('23:59:59');

//  btn_Filter.Click;
end;


procedure TfrmAdmin.btn_FilterClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass	;
  Sales_Filter;
  Screen.Cursor := crDefault		;
end;

procedure TfrmAdmin.dtp_FromChange(Sender: TObject);
begin
//    cbb_DateChange(Sender);
end;

procedure TfrmAdmin.dtp_ToChange(Sender: TObject);
begin
//    cbb_DateChange(Sender);
end;

procedure TfrmAdmin.FormDestroy(Sender: TObject);
begin
  ReadConfig(False);
end;

procedure TfrmAdmin.chk_Simple_SearchClick(Sender: TObject);
begin
  pnl_K22.Visible := not(chk_Simple_Search.Checked)
end;

procedure TfrmAdmin.dbnvgr_BarangBeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  pgcSearch_Barang.ActivePageIndex:=0;
end;

procedure TfrmAdmin.pgcSearch_BarangChange(Sender: TObject);
begin
{
//  ShowMessage('Tab active : ' + pgcSearch_Barang.ActivePage.Caption);
  case pgcSearch_Barang.ActivePageIndex of
    0: begin
         dbgrd_Barang.DataSource := DM.ds_tbl_Barang;
         dbgrd_Barang.ReadOnly := False;
         dbnvgr_Barang.DataSource := DM.ds_tbl_Barang;
//         dbgrd_Barang.Options[dgmultiselect]:=True;
//         dbgrd_Barang.Options:=[dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgConfirmDelete,dgCancelOnExit];//:=
//                             [True,    True,       True,          True,      True,      True,  True,       True,           True];
         dbgrd_Barang.Options:=[dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgConfirmDelete,dgCancelOnExit, dgEditing];
       end;
    1: begin
         if not(DM.qry_CariBarang.Active) then DM.qry_CariBarang.Open;
         dbgrd_Barang.DataSource := DM.ds_CariBarang;
         dbgrd_Barang.ReadOnly := True;
         dbnvgr_Barang.DataSource := nil;
//         dbgrd_Barang.Options[dgmultiselect]:=False;
          dbgrd_Barang.Options:=[dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgConfirmDelete,dgCancelOnExit];
       end;
  end;
  stat_Barang.Panels[1].Text:= IntToStr(dbgrd_Barang.DataSource.DataSet.RecordCount);
  Setting_Barang(False);
}
end;

procedure TfrmAdmin.dbgrdCustomersTitleClick(Column: TColumn);
var
  DataSet: TDataSet;
begin
    DataSet := Column.Field.DataSet;
    if DataSet is TCustomADODataSet then
    with TCustomADODataSet(DataSet) do
    begin
      if (Pos(Column.Field.FieldName, Sort) = 1) and (Pos(' DESC', Sort) = 0) then
        Sort := Column.Field.FieldName + ' DESC' else
        Sort := Column.Field.FieldName + ' ASC';
//      stat2.Panels[0].Text := 'Sorted on '+Sort;
    end;
end;

procedure TfrmAdmin.dbgrd_BarangTitleClick(Column: TColumn);
var
  DataSet: TDataSet;
begin
    DataSet := Column.Field.DataSet;
    if DataSet is TCustomADODataSet then
    with TCustomADODataSet(DataSet) do
    begin
      if (Pos(Column.Field.FieldName, Sort) = 1) and (Pos(' DESC', Sort) = 0) then
        Sort := Column.Field.FieldName + ' DESC' else
        Sort := Column.Field.FieldName + ' ASC';
//      stat2.Panels[0].Text := 'Sorted on '+Sort;
    end;
end;

procedure TfrmAdmin.dbgrd_SuppliersTitleClick(Column: TColumn);
var
  DataSet: TDataSet;
begin
    DataSet := Column.Field.DataSet;
    if DataSet is TCustomADODataSet then
    with TCustomADODataSet(DataSet) do
    begin
      if (Pos(Column.Field.FieldName, Sort) = 1) and (Pos(' DESC', Sort) = 0) then
        Sort := Column.Field.FieldName + ' DESC' else
        Sort := Column.Field.FieldName + ' ASC';
//      stat2.Panels[0].Text := 'Sorted on '+Sort;
    end;
end;

procedure TfrmAdmin.dbgrdUsersTitleClick(Column: TColumn);
var
  DataSet: TDataSet;
begin
    DataSet := Column.Field.DataSet;
    if DataSet is TCustomADODataSet then
    with TCustomADODataSet(DataSet) do
    begin
      if (Pos(Column.Field.FieldName, Sort) = 1) and (Pos(' DESC', Sort) = 0) then
        Sort := Column.Field.FieldName + ' DESC' else
        Sort := Column.Field.FieldName + ' ASC';
//      stat2.Panels[0].Text := 'Sorted on '+Sort;
    end;
end;

procedure TfrmAdmin.btn_B_BaruClick(Sender: TObject);
begin
  pgc_Barang_Baru.ActivePageIndex:=0;
  DM.tbl_Temp_Barang.Open;
  DM.tbl_Temp_Barang.Insert;
  DM.tbl_Temp_Barang.FieldValues['Nama_Barang']:='Nama_Barang';
  DM.tbl_Temp_Barang.FieldValues['Merk_Type']:='Merk_Type';
  DM.tbl_Temp_Barang.FieldValues['Satuan']:='PCS';
  DM.tbl_Temp_Barang.FieldValues['Biaya']:=0;
  DM.tbl_Temp_Barang.FieldValues['Harga']:=0;
  DM.tbl_Temp_Barang.FieldValues['Jumlah_Stok']:=0;
  DM.tbl_Temp_Barang.FieldValues['Diskon']:=0;
  DM.tbl_Temp_Barang.FieldValues['Pajak']:=0;
//  DM.tbl_Temp_Barang.FieldValues['Suplayer_ID']:=1;

  btn_B_Baru.Enabled:=False;
  btn_B_Simpan.Enabled:=True;
  btn_B_Batal.Enabled:=True;
  btn_B_Edit.Enabled:=False;
  btn_B_Hapus.Enabled:=False;

  dbedtBarcode.SetFocus;
end;

procedure TfrmAdmin.btn_B_SimpanClick(Sender: TObject);
var i:Integer;
begin
  if DM.tbl_Barang.State = dsedit then
  begin
      DM.tbl_Barang.UpdateRecord;
      btn_B_Baru.Enabled:=True;
      btn_B_Simpan.Enabled:=False;
      btn_B_Batal.Enabled:=False;
      btn_B_Edit.Enabled:=True;
      btn_B_Hapus.Enabled:=True;
      dm.tbl_Barang.Post;
//      DM.tbl_Barang.Close;
//      dm.tbl_Barang.ReadOnly:=True;
//      dm.tbl_Barang.Open;
    dbedtBarcode2.ReadOnly:=true;
    dbedtNama_Barang2.ReadOnly:=true;
    dbedtMerk_Type2.ReadOnly:=true;
    dbedtSatuan2.ReadOnly:=true;
    dbedtBiaya2.ReadOnly:=true;
    dbedtHarga2.ReadOnly:=true;
    dbedtJumlah_Stok2.ReadOnly:=true;
    dbedtDiskon2.ReadOnly:=true;
    dbedtPajak2.ReadOnly:=true;
    dbedtKategori2.ReadOnly:=true;
    dbedtKeterangan2.ReadOnly:=true;
    dblkcbbSuplayer2.ReadOnly:=true;

//
      dbgrd_Barang.Options:=[dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgConfirmDelete,dgCancelOnExit,dgMultiSelect];
     Exit;
  end;

  if Length(dbedtBarcode.Text)< 1 then Exit;
  if not(BarcodeValid(dbedtBarcode.Text)) then
  begin
    MessageDlg('Error, Barcode tersebut sudah digunakan',mtError,mbOKCancel,0);
    dbedtBarcode.SelectAll;
    dbedtBarcode.SetFocus;
  end;

  if dm.tbl_Temp_Barang.State = dsedit then
  begin
    dm.tbl_Temp_Barang.UpdateRecord;
  end;
  // Salin ke Tabel Barang;

//  if dm.tbl_Temp_Barang.FieldValues['Barcode']= null then Exit;
// if not(BarcodeValid(dm.tbl_Temp_Barang.FieldValues['Barcode'])) then Exit;
  DM.tbl_Barang.Insert;
  for i:=1 to dm.tbl_Temp_Barang.FieldCount-1 do
  begin
    //lookup field tidak diisi
    if i<> 12 then
    begin
      if (i=1) and (DM.tbl_Temp_Barang.Fields[i].Value = null) then
          dm.tbl_Temp_Barang.FieldValues['Barcode']:=dbedtBarcode.Text;
      DM.tbl_Barang.Fields[i].Value := dm.tbl_Temp_Barang.Fields[i].Value;
    end;
  end;
  dm.tbl_Barang.Post;
  DeleteTempBarang;
  dm.tbl_Temp_Barang.Close;
  btn_B_Baru.Enabled:=True;
  btn_B_Simpan.Enabled:=False;
  btn_B_Batal.Enabled:=False;
  btn_B_Edit.Enabled:=True;
  btn_B_Hapus.Enabled:=True;

  pgc_Barang_Baru.ActivePageIndex:=1;

  stat_Barang.Panels[1].Text := IntToStr(dm.tbl_Barang.RecordCount);
end;

procedure TfrmAdmin.btn_B_BatalClick(Sender: TObject);
begin
  dm.tbl_Temp_Barang.Cancel;
  DeleteTempBarang;
  dm.tbl_Temp_Barang.Close;

  btn_B_Baru.Enabled:=True;
  btn_B_Simpan.Enabled:=False;
  btn_B_Batal.Enabled:=False;
  btn_B_Edit.Enabled:=True;
  btn_B_Hapus.Enabled:=True;
  pgc_Barang_Baru.ActivePageIndex:=1;

    dbedtBarcode2.ReadOnly:=true;
    dbedtNama_Barang2.ReadOnly:=true;
    dbedtMerk_Type2.ReadOnly:=true;
    dbedtSatuan2.ReadOnly:=true;
    dbedtBiaya2.ReadOnly:=true;
    dbedtHarga2.ReadOnly:=true;
    dbedtJumlah_Stok2.ReadOnly:=true;
    dbedtDiskon2.ReadOnly:=true;
    dbedtPajak2.ReadOnly:=true;
    dbedtKategori2.ReadOnly:=true;
    dbedtKeterangan2.ReadOnly:=true;
    dblkcbbSuplayer2.ReadOnly:=true;
    dbgrd_Barang.Options:=[dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgConfirmDelete,dgCancelOnExit,dgMultiSelect];
    stat_Barang.Panels[1].Text:= inttostr(DM.tbl_Barang.RecordCount);
end;

procedure TfrmAdmin.dbedtKategoriKeyPress(Sender: TObject; var Key: Char);
begin
  if Key <> #13 then Exit;
  Key := #0;
  dbedtKeterangan.SetFocus;
end;

procedure TfrmAdmin.dbedtNama_BarangKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key <> #13 then Exit;
  Key := #0;
  if Length(dbedtNama_Barang.Text)< 1 then Exit;
  dbedtMerk_Type.SelectAll;
  dbedtMerk_Type.SetFocus;
end;

procedure TfrmAdmin.dbedtMerk_TypeKeyPress(Sender: TObject; var Key: Char);
begin
  if Key <> #13 then Exit;
  Key := #0;
  dbedtSatuan.SelectAll;
  dbedtSatuan.SetFocus;
end;

procedure TfrmAdmin.dbedtSatuanKeyPress(Sender: TObject; var Key: Char);
begin
  if Key <> #13 then Exit;
  Key := #0;
  dbedtBiaya.SetFocus;
end;

procedure TfrmAdmin.dbedtBiayaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key <> #13 then Exit;
  Key := #0;
  if Length(dbedtBiaya.Text)< 1 then dbedtBiaya.Text := '0';
  dbedtHarga.SetFocus;
end;

procedure TfrmAdmin.dbedtHargaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key <> #13 then Exit;
  Key := #0;
  if Length(dbedtHarga.Text)< 1 then dbedtHarga.Text := '0';
  dbedtJumlah_Stok.SetFocus;
end;

procedure TfrmAdmin.dbedtJumlah_StokKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key <> #13 then Exit;
  Key := #0;
  if Length(dbedtJumlah_Stok.Text)< 1 then dbedtJumlah_Stok.Text:='0';
  dbedtDiskon.SetFocus;
end;

procedure TfrmAdmin.dbedtDiskonKeyPress(Sender: TObject; var Key: Char);
begin
  if Key <> #13 then Exit;
  Key := #0;
  if Length(dbedtDiskon.Text)< 1 then dbedtDiskon.Text := '0';
  dbedtPajak.SetFocus;
end;

procedure TfrmAdmin.dbedtPajakKeyPress(Sender: TObject; var Key: Char);
begin
  if Key <> #13 then Exit;
  Key := #0;
  if Length(dbedtPajak.Text)< 1 then dbedtPajak.Text := '0';
  dbedtKategori.SetFocus;
end;

procedure TfrmAdmin.dbedtBarcodeKeyPress(Sender: TObject; var Key: Char);
begin
  if Key <> #13 then Exit;
  Key := #0;
  if Length(dbedtBarcode.Text)< 1 then Exit;
  if not(BarcodeValid(dbedtBarcode.Text)) then
  begin
    MessageDlg('Error, Barcode tersebut sudah digunakan',mtError,mbOKCancel,0);
    dbedtBarcode.SelectAll;
    dbedtBarcode.SetFocus;
  end
  else
  begin
    dbedtNama_Barang.SelectAll;
    dbedtNama_Barang.SetFocus;
  end;
end;

procedure TfrmAdmin.dbedtKeteranganKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key <> #13 then Exit;
  Key := #0;
  dblkcbbSuplayer.SetFocus;
end;

procedure TfrmAdmin.dblkcbbSuplayerKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key <> #13 then Exit;
  Key := #0;
  if Length(dblkcbbSuplayer.Text)< 1 then
    DM.tbl_Temp_Barang.FieldValues['Suplayer_ID']:= DM.tbl_Suplayer.FieldValues['ID'];

    if MessageDlg('Simpan ke data barang?',mtConfirmation,mbOKCancel,0)= mrOK then
    btn_B_SimpanClick(Sender);
end;

procedure TfrmAdmin.dbgrd_Detail_TransactionsDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
  if dm.tbl_Item_Penjualan_2.Active then
  stat_Penjualan.Panels[3].Text:= IntToStr(dm.tbl_Item_Penjualan_2.RecordCount);
end;

procedure TfrmAdmin.btn_Cari_BarangClick(Sender: TObject);
begin
  CariBarang;
end;

procedure TfrmAdmin.btn_B_HapusClick(Sender: TObject);
var s:string;
begin
  s:= 'Hapus Data Barang?' + #13#10  + #13#10 +
       dm.tbl_Barang.Fields[2].AsString;

  if MessageDlg(s,mtConfirmation,mbOKCancel,0)=mrOK then
  begin
    if dm.tbl_Barang.RecordCount >0 then
      dbgrd_Barang.SelectedRows.Delete;
//    dm.tbl_Barang.Delete;
//    stat2.Panels[1].Text:='Jumlah Data = ' + IntToStr(DM.tbl_Barang.RecordCount);
  end;
end;

procedure TfrmAdmin.btn_B_EditClick(Sender: TObject);
begin
  btn_B_Baru.Enabled:=False;
  btn_B_Simpan.Enabled:=True;
  btn_B_Batal.Enabled:=True;
  btn_B_Edit.Enabled:=False;
  btn_B_Hapus.Enabled:=False;
  pgc_Barang_Baru.ActivePageIndex:=1;

//  dm.tbl_Barang.Close;
//  dm.tbl_Barang.ReadOnly:=False;
//  dm.tbl_Barang.Open;
    dbedtBarcode2.ReadOnly:=false;
    dbedtNama_Barang2.ReadOnly:=false;
    dbedtMerk_Type2.ReadOnly:=false;
    dbedtSatuan2.ReadOnly:=false;
    dbedtBiaya2.ReadOnly:=false;
    dbedtHarga2.ReadOnly:=false;
    dbedtJumlah_Stok2.ReadOnly:=false;
    dbedtDiskon2.ReadOnly:=false;
    dbedtPajak2.ReadOnly:=false;
    dbedtKategori2.ReadOnly:=false;
    dbedtKeterangan2.ReadOnly:=false;
    dblkcbbSuplayer2.ReadOnly:=false;

//
  dm.tbl_Barang.Edit;
  dbgrd_Barang.Options:=[dgEditing,dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgConfirmDelete,dgCancelOnExit,dgMultiSelect];


end;

procedure TfrmAdmin.edt_K1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key <> #13 then Exit;
  Key := #0;
  CariBarang;

end;

procedure TfrmAdmin.edt_K2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key <> #13 then Exit;
  Key := #0;
  if Length(edt_K1.Text) < 1 then
  begin
    edt_K1.SetFocus;
    Exit;
  end;
  CariBarang;

end;

procedure TfrmAdmin.btn_Cari_SuppliersClick(Sender: TObject);
var sql:string;
begin
//  DM.tbl_Suplayer.Locate(cbb_CariSup1.Text,edt_CariSup1.Text,[loPartialKey]);
//  DM.tbl_Suplayer.FindFirst(cbb_CariSup1.Text).AsString:=edt_CariSup1.Text;
  sql:='select * from suplayer where ' + cbb_CariSup1.Text + ' like "%' + edt_CariSup1.Text + '%"';
  dm.qry_Suplayer.Close;
  dm.qry_Suplayer.SQL.Clear;
  dm.qry_Suplayer.SQL.Add(sql);
  dm.qry_Suplayer.Open;
end;

procedure TfrmAdmin.btn_B_ImportClick(Sender: TObject);
begin
    ImportFromExcel(dm.tbl_Barang);
end;

procedure TfrmAdmin.btn_UpdateClick(Sender: TObject);
begin
  if DM.tbl_Konfigurasi.State = dsEdit then
  dm.tbl_Konfigurasi.UpdateRecord;
end;

procedure TfrmAdmin.btn_PilihLogoClick(Sender: TObject);
begin
  if dlgOpenPic1.Execute then
  begin
    img_Pilih.Picture.LoadFromFile(dlgOpenPic1.FileName);
    if DM.tbl_Konfigurasi.State<> dsEdit then
    DM.tbl_Konfigurasi.Edit;
    dm.tbl_Konfigurasi.FieldValues['Logo']:=dlgOpenPic1.FileName;

  end;
end;

procedure TfrmAdmin.edtNama_TokoChange(Sender: TObject);
begin
  if Init then Exit;
  if DM.tbl_Konfigurasi.State<> dsEdit then
     DM.tbl_Konfigurasi.Edit;
end;

procedure TfrmAdmin.btn_DB_PilihLogoClick(Sender: TObject);
begin
  if dlgOpenPic1.Execute then
  begin
    img_Pilih.Picture.LoadFromFile(dlgOpenPic1.FileName);
    if DM.tbl_Konfigurasi.State<> dsEdit then
    DM.tbl_Konfigurasi.Edit;
    dm.tbl_Konfigurasi.FieldValues['Logo']:=dlgOpenPic1.FileName;
    DM.tbl_Konfigurasi.UpdateRecord;
    dm.tbl_Konfigurasi.Post;

  end;
end;

procedure TfrmAdmin.DBEdit11Change(Sender: TObject);
begin
  if not(DM.tbl_Stock_Opname.Active) then Exit;
    if (DM.tbl_Stock_Opname.State = dsInsert) or
       (DM.tbl_Stock_Opname.State = dsEdit) then
    begin
      dm.tbl_Stock_Opname.FieldValues['Selisih']:= dm.tbl_Stock_Opname.FieldValues['Stock_Aplikasi'] -
      dm.tbl_Stock_Opname.FieldValues['Stock_Gudang'];
    end;
end;

procedure TfrmAdmin.DBEdit11KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    key:=#0;
    if not(DM.tbl_Stock_Opname.Active) then Exit;
    if (DM.tbl_Stock_Opname.State = dsInsert) or
       (DM.tbl_Stock_Opname.State = dsEdit) then
    begin
      dm.tbl_Stock_Opname.FieldValues['Selisih']:= dm.tbl_Stock_Opname.FieldValues['Stock_Aplikasi'] -
      dm.tbl_Stock_Opname.FieldValues['Stock_Gudang'];
    end;

  end;
end;

procedure TfrmAdmin.dbgrd_Rekap_TransaksiTitleClick(Column: TColumn);
var
  DataSet: TDataSet;
begin
    DataSet := Column.Field.DataSet;
    if not(DataSet.Active) then Exit;
    if DataSet is TCustomADODataSet then
    with TCustomADODataSet(DataSet) do
    begin
      if (Pos(Column.Field.FieldName, Sort) = 1) and (Pos(' DESC', Sort) = 0) then
        Sort := Column.Field.FieldName + ' DESC' else
        Sort := Column.Field.FieldName + ' ASC';
//      stat2.Panels[0].Text := 'Sorted on '+Sort;
    end;
end;

procedure TfrmAdmin.dbgrd2TitleClick(Column: TColumn);
var
  DataSet: TDataSet;
begin
    DataSet := Column.Field.DataSet;
    if not(DataSet.Active) then Exit;
    if DataSet is TCustomADODataSet then
    with TCustomADODataSet(DataSet) do
    begin
      if (Pos(Column.Field.FieldName, Sort) = 1) and (Pos(' DESC', Sort) = 0) then
        Sort := Column.Field.FieldName + ' DESC' else
        Sort := Column.Field.FieldName + ' ASC';
//      stat2.Panels[0].Text := 'Sorted on '+Sort;
    end;
end;

end.

