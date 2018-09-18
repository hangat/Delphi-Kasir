unit uMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls, ComCtrls, ExtCtrls,
  DB, Grids, DBGrids, ToolWin, DBCtrls, Mask,
  Buttons, ADODB,Menus, IniFiles, StrUtils, Printers, WinSpool, ExtDlgs,
  ComObj, ActnList;

type
  TfrmMain = class(TForm)
    StatusBar1: TStatusBar;
    grd_Penjualan: TDBGrid;
    ToolBar1: TToolBar;
    btnT_Simpan: TToolButton;
    btnI_Hapus: TToolButton;
    sp1: TToolButton;
    sp2: TToolButton;
    pnl_Kasir_Top: TPanel;
    Label1: TLabel;
    ed_NoResi: TDBEdit;
    Label2: TLabel;
    Panel5: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    btn_CariBarang: TSpeedButton;
    btnT_Batal: TToolButton;
    btn_Menu: TSpeedButton;
    PopupMenu1: TPopupMenu;
    Help1: TMenuItem;
    Contents1: TMenuItem;
    Index1: TMenuItem;
    Commands1: TMenuItem;
    Procedures1: TMenuItem;
    Keyboard1: TMenuItem;
    SearchforHelpOn1: TMenuItem;
    Tutorial1: TMenuItem;
    HowtoUseHelp1: TMenuItem;
    About1: TMenuItem;
    pnl_Total: TPanel;
    Splitter1: TSplitter;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    btnT_Cetak: TSpeedButton;
    cboKasir: TDBLookupComboBox;
    cbo_Nama_Barang: TDBLookupComboBox;
    ed_Barcode: TEdit;
    dbtxtGrand_Total: TDBText;
    dbedt_Barcode: TDBEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    dbedtBea_Lain: TDBEdit;
    dbedtPotongan_Lain: TDBEdit;
    dbedtPPn: TDBEdit;
    dbedtBayar: TDBEdit;
    dbedtKembali: TDBEdit;
    pnl5: TPanel;
    dbtxt_Total_Penjualan: TDBText;
    pnl6: TPanel;
    dbtxt_Total_Diskon: TDBText;
    pnl7: TPanel;
    dbtxt_Grand_Total: TDBText;
    pgc_Nota: TPageControl;
    ts5: TTabSheet;
    ts6: TTabSheet;
    redt_Struk: TRichEdit;
    img_Logo: TImage;
    pnl8: TPanel;
    dlgOpenPic1: TOpenPictureDialog;
    dlgSave1: TSaveDialog;
    dlgOpen1: TOpenDialog;
    actlst1: TActionList;
    actBaru: TAction;
    actCetak: TAction;
    actCari_Barang: TAction;
    Login1: TMenuItem;
    dbtxt_Toko1: TDBText;
    dbtxt_Toko2: TDBText;
    actBatal: TAction;
    actSimpan: TAction;
    lbl47: TLabel;
    dblkcbbPelanggan: TDBLookupComboBox;
    shp1: TShape;
    dbedtJumlah_Barang: TDBEdit;
    actHapus: TAction;
    actLogout: TAction;
    btn_Logout: TSpeedButton;
    procedure btn_MenuClick(Sender: TObject);
    procedure btnT_SimpanClick(Sender: TObject);
    procedure btnT_BatalClick(Sender: TObject);
    procedure btnI_HapusClick(Sender: TObject);
    procedure DBLookupComboBox1Enter(Sender: TObject);
    procedure DBLookupComboBox1Exit(Sender: TObject);
    procedure cboKasirCloseUp(Sender: TObject);
    procedure cboKasirMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ed_BarcodeKeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure ed_BarcodeExit(Sender: TObject);
    procedure dbedtBea_LainKeyPress(Sender: TObject; var Key: Char);
    procedure dbedtPotongan_LainKeyPress(Sender: TObject; var Key: Char);
    procedure dbedtPPnKeyPress(Sender: TObject; var Key: Char);
    procedure dbedtBayarKeyPress(Sender: TObject; var Key: Char);
    procedure Label6Click(Sender: TObject);
    procedure ed_BarcodeEnter(Sender: TObject);
    procedure dbedtKembaliKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure btn_CariBarangClick(Sender: TObject);
    procedure actBaruExecute(Sender: TObject);
    procedure btn_LogoutClick(Sender: TObject);
    procedure grd_PenjualanKeyPress(Sender: TObject; var Key: Char);
    procedure actBayarExecute(Sender: TObject);
    procedure dbedtJumlah_BarangKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnT_CetakClick(Sender: TObject);
  private
    { Private declarations }
    AllowSystemClose: Boolean;
    procedure Transaksi_Baru;
    procedure PreCetak;
  public
    { Public declarations }
    procedure DeleteTempBarang;

    procedure Isi_ID_Barcode(T:TAdotable);
    function GetIDBarang(Barcode : String):word;

    procedure Enable_Isi_Item(Enable : Boolean);

    Procedure HitungUlangGrandTotalDB;
    Procedure HitungKembalianDB;

    procedure WriteLog(StringMsg : string);
    procedure ReadConfig(isRead:Boolean);

    procedure EXEC_Q(SQL:string; con1:TADOConnection);

    procedure Cetak;

    procedure UpdatePenjualan;

    procedure CariBarang;

    procedure SetRegister;
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}
uses uDM, uShared, uCariBarang;


procedure TfrmMain.PreCetak;
var i:Integer;

    procedure DeleteTTemp(NamaTabel:string);
    var Q : TADOQuery;
    begin
      Q := DM.QTemp;
      Q.Close;
      Q.SQL.Clear;
      Q.SQL.Add('Delete * From ' + NamaTabel);
      Q.ExecSQL;
    end;
begin
  // Gabungkan 2 atau lebih item pembelian menjadi satu, tambah jumlah barang dan hitung harga total
//  dm.tbl_Temp_Item_Penjualan.Sort := 'Barang_ID ASC';
  DeleteTTemp('TTemp_IP');
  dm.tbl_Temp_Item_Penjualan.Tag := 1;
  if not(DM.tbl_TTemp_IP.Active) then dm.tbl_TTemp_IP.Open;
  //1. Copy Temp Item
  dm.tbl_Temp_Penjualan.DisableControls;
  dm.tbl_Temp_Item_Penjualan.First;
  for i:=0 to dm.tbl_Temp_Item_Penjualan.RecordCount-1 do
  begin
    // copy isi temp item ke TTIP
    dm.tbl_TTemp_IP.Insert;
    dm.tbl_TTemp_IP.FieldValues['Penjualan_ID']:=dm.tbl_Temp_Item_Penjualan.FieldValues['Penjualan_ID'];
    dm.tbl_TTemp_IP.FieldValues['Barang_ID']:=dm.tbl_Temp_Item_Penjualan.FieldValues['Barang_ID'];
    dm.tbl_TTemp_IP.FieldValues['Jumlah_Barang']:=dm.tbl_Temp_Item_Penjualan.FieldValues['Jumlah_Barang'];
    dm.tbl_TTemp_IP.FieldValues['Subtotal']:=dm.tbl_Temp_Item_Penjualan.FieldValues['Subtotal'];
    dm.tbl_TTemp_IP.FieldValues['Subdiskon']:=dm.tbl_Temp_Item_Penjualan.FieldValues['Subdiskon'];
    dm.tbl_TTemp_IP.Post;
    dm.tbl_Temp_Item_Penjualan.Next;
  end;

  //2. Sort berdasarkan Barang_ID
  dm.tbl_TTemp_IP.Sort:='Barang_ID ASC';
  dm.tbl_Temp_Item_Penjualan.Close;
  DeleteTTemp('Temp_Item_Penjualan');
//  DeleteTTemp('Temp_Item_Penjualan');
  dm.tbl_Temp_Item_Penjualan.Open;

  dm.tbl_TTemp_IP.First;
  dm.tbl_Temp_Item_Penjualan.Insert;
  dm.tbl_Temp_Item_Penjualan.FieldValues['Penjualan_ID'] := dm.tbl_TTemp_IP.FieldValues['Penjualan_ID'];
  dm.tbl_Temp_Item_Penjualan.FieldValues['Barang_ID']    := dm.tbl_TTemp_IP.FieldValues['Barang_ID'];
  dm.tbl_Temp_Item_Penjualan.FieldValues['Jumlah_Barang']:= dm.tbl_TTemp_IP.FieldValues['Jumlah_Barang'];
  dm.tbl_Temp_Item_Penjualan.FieldValues['Subtotal']     := dm.tbl_TTemp_IP.FieldValues['Subtotal'];
  dm.tbl_Temp_Item_Penjualan.FieldValues['Subdiskon']    := dm.tbl_TTemp_IP.FieldValues['Subdiskon'];
  dm.tbl_Temp_Item_Penjualan.post;

  DM.tbl_TTemp_IP.Next;
  for i:=1 to dm.tbl_TTemp_IP.RecordCount-1 do
  begin
    // copy isi temp item ke TTIP
    if dm.tbl_TTemp_IP.FieldValues['Barang_ID'] <> dm.tbl_Temp_Item_Penjualan.FieldValues['Barang_ID'] then
    begin
      dm.tbl_Temp_Item_Penjualan.Insert;
      dm.tbl_Temp_Item_Penjualan.FieldValues['Penjualan_ID'] := dm.tbl_TTemp_IP.FieldValues['Penjualan_ID'];
      dm.tbl_Temp_Item_Penjualan.FieldValues['Barang_ID']    := dm.tbl_TTemp_IP.FieldValues['Barang_ID'];
      dm.tbl_Temp_Item_Penjualan.FieldValues['Jumlah_Barang']:= dm.tbl_TTemp_IP.FieldValues['Jumlah_Barang'];
      dm.tbl_Temp_Item_Penjualan.FieldValues['Subtotal']     := dm.tbl_TTemp_IP.FieldValues['Subtotal'];
      dm.tbl_Temp_Item_Penjualan.FieldValues['Subdiskon']    := dm.tbl_TTemp_IP.FieldValues['Subdiskon'];
      dm.tbl_Temp_Item_Penjualan.post;
    end
    else
    begin
      dm.tbl_Temp_Item_Penjualan.Edit;
//      dm.tbl_Temp_Item_Penjualan.FieldValues['Penjualan_ID'] := dm.tbl_TTemp_IP.FieldValues['Penjualan_ID'];
//      dm.tbl_Temp_Item_Penjualan.FieldValues['Barang_ID']    := dm.tbl_TTemp_IP.FieldValues['Barang_ID'];
      dm.tbl_Temp_Item_Penjualan.FieldValues['Jumlah_Barang']:= dm.tbl_Temp_Item_Penjualan.FieldValues['Jumlah_Barang'] + dm.tbl_TTemp_IP.FieldValues['Jumlah_Barang'];
      dm.tbl_Temp_Item_Penjualan.FieldValues['Subtotal']     := dm.tbl_Temp_Item_Penjualan.FieldValues['Subtotal']      + dm.tbl_TTemp_IP.FieldValues['Subtotal'];
      dm.tbl_Temp_Item_Penjualan.FieldValues['Subdiskon']    := dm.tbl_Temp_Item_Penjualan.FieldValues['Subdiskon']     + dm.tbl_TTemp_IP.FieldValues['Subdiskon'];
      dm.tbl_Temp_Item_Penjualan.UpdateRecord;
    end;
    dm.tbl_TTemp_IP.Next;
  end;

  dm.tbl_Temp_Penjualan.EnableControls;
  dm.tbl_Temp_Item_Penjualan.Tag := 0;
end;

procedure TfrmMain.Transaksi_Baru;
begin
  dm.Penjualan_Baru(DM.tbl_Temp_Penjualan);    // aktual di pakai
  dm.tbl_Temp_Item_Penjualan.Open;
  StatusBar1.Panels[1].Text := '0';
  ed_Barcode.SetFocus;
end;

procedure TfrmMain.SetRegister;
begin
  dm.InitRegister;
end;

procedure TfrmMain.DeleteTempBarang;
var Q : TADOQuery;
begin
  Q := DM.QTemp;
  Q.Close;
  Q.SQL.Clear;
  Q.SQL.Add('Delete * From Temp_Barang');
  Q.ExecSQL;
end;


procedure TfrmMain.CariBarang;
var
    Barcode:string;
    Key : Char;
begin
  if (frmCariBarang.ShowModal)=mrOK then
  begin
    Barcode:= frmCariBarang.qry_CariBarang.FieldValues['Barcode'];
    ed_Barcode.Text :=  Barcode;
    Key:=#13;
    ed_BarcodeKeyPress(ed_Barcode,Key);
    ed_Barcode.SetFocus;
  end;
end;



function CenterText(InputString:string; LengthOption:Integer):string;
var T:string;
    I, J:Integer;
    iSpc: Integer;
    sSpc: string;
begin
  T := Trim(InputString);
  J := Length(T);
  if J > LengthOption then
  begin
    T := LeftStr(T, LengthOption);
    Result := T;
    Exit;
  end;

  iSpc := (LengthOption - J) div 2;
  sSpc :='';
  for I := 1 to iSpc do sSpc := sSpc + ' ';
  T:= sSpc + T + sSpc;
  if Length(T)> LengthOption then T:= LeftStr(T,LengthOption);
  Result:= T;
end;


  function KananStr(Str:string; N:Integer; IsCurrency:Boolean):string;
  var s,r: string;
      i,k:Integer;
  begin
    if not(IsCurrency) then
    begin
      if Length(Str)>N then
         s:= LeftStr(Str,N)
      else
        s:= Str;
    end
    else
      s:= FormatCurr('#,##0',StrToCurr(Str));

    k:= N-Length(s);
    Result:=s;
    if K<1 then Exit;
    r:='';
    for i:=1 to k do
    begin
      r:=r+' ';
    end;
    r:= r+ s;
    result:=r;
  end;


  function SatuBaris(T : TADOTable; N:Integer):string;
  var B : string;
      C1,C2,C3,C4:string;
  begin
      C1:=KananStr(T.Fields[1].AsString,4,False);
      C2:=KananStr(T.Fields[2].AsString,3,False);
      C3:=KananStr(T.Fields[3].AsString,11,True);
      C4:=KananStr(T.Fields[4].AsString,15,True);
      B := C1 + ' ' + C2 + ' x ' + C3 + ' = ' + C4;
      if Length(B)< N then KananStr(B,N,false);
      Result:= B;
  end;

  function CarX(C:string; N:Integer):string;
  var i : Integer; s:string;
  begin
    s:='';
    for i:=1 to N do s:= s+C;
    result:=s;
  end;


procedure TfrmMain.Enable_Isi_Item(Enable : Boolean);
begin
  dbedt_Barcode.Visible:= False;

  ed_Barcode.Enabled := Enable;
  cbo_Nama_Barang.Enabled:= Enable;
  grd_Penjualan.Enabled := Enable;
  dbedtBea_Lain.Enabled := Enable;
  dbedtPotongan_Lain.Enabled := Enable;
  dbedtPPn.Enabled := Enable;
  dbedtBayar.Enabled := Enable;
end;

procedure TfrmMain.btnI_HapusClick(Sender: TObject);
var i : Integer;
begin
  if dm.tbl_Temp_Item_Penjualan.RecordCount < 1 then Exit;
  i := MessageDlg('Anda yakin menghapus data ini?',mtConfirmation,mbOKCancel,0);
  if i=1 then
  begin
    dm.tbl_Temp_Item_Penjualan.Delete;
    dm.tbl_Temp_Item_PenjualanJumlah_BarangChange(Nil);
    StatusBar1.Panels[1].Text := IntToStr(dm.tbl_Temp_Item_Penjualan.RecordCount);
  end;
end;

procedure TfrmMain.UpdatePenjualan;
var i :Integer;
    ID:Integer;
begin
  if not (DM.tbl_Penjualan.Active) then DM.tbl_Penjualan.Open;
  if not (DM.tbl_Item_Penjualan.Active) then DM.tbl_Item_Penjualan.Open;
  if not (DM.tbl_Barang.Active) then DM.tbl_Barang.Open;

  dm.tbl_Penjualan.Insert;
  for i:=1 to DM.tbl_Penjualan.FieldCount-1 do
  begin
    dm.tbl_Penjualan.Fields[i].Value:=dm.tbl_Temp_Penjualan.Fields[i].Value;
  end;
  dm.tbl_Penjualan.FieldValues['Waktu']:=Now;
  dm.tbl_Penjualan.Post;

  dm.tbl_Temp_Item_Penjualan.First;
  while not(DM.tbl_Temp_Item_Penjualan.Eof) do
  begin
    DM.tbl_Item_Penjualan.Insert;
    DM.tbl_Item_Penjualan.FieldValues['Penjualan_ID'] := DM.tbl_Penjualan.FieldValues['ID'];
    DM.tbl_Item_Penjualan.FieldValues['Barang_ID'] := DM.tbl_Temp_Item_Penjualan.FieldValues['Barang_ID'];
    DM.tbl_Item_Penjualan.FieldValues['Jumlah_Barang'] := DM.tbl_Temp_Item_Penjualan.FieldValues['Jumlah_Barang'];
    DM.tbl_Item_Penjualan.FieldValues['Subtotal'] := DM.tbl_Temp_Item_Penjualan.FieldValues['Subtotal'];
    DM.tbl_Item_Penjualan.FieldValues['Subdiskon'] := DM.tbl_Temp_Item_Penjualan.FieldValues['Subdiskon'];

    DM.tbl_Item_Penjualan.Post;
    DM.tbl_Temp_Item_Penjualan.Next;
  end;

  dm.tbl_Temp_Item_Penjualan.First;
  while not(dm.tbl_Temp_Item_Penjualan.Eof) do
  begin
    ID:=dm.tbl_Temp_Item_Penjualan.FieldValues['Barang_ID'];
    DM.tbl_Barang.Locate('ID',ID,[loCaseInsensitive]); //loCaseInsensitive
    DM.tbl_Barang.Edit;
    DM.tbl_Barang.FieldValues['Jumlah_Stok']:=DM.tbl_Barang.FieldValues['Jumlah_Stok'] - dm.tbl_Temp_Item_Penjualan.FieldValues['Jumlah_Barang'];
    DM.tbl_Barang.UpdateRecord;
    dm.tbl_Temp_Item_Penjualan.Next;
  end;
end;


procedure TfrmMain.btnT_BatalClick(Sender: TObject);
begin
  Transaksi_Baru;
end;

procedure TfrmMain.btnT_SimpanClick(Sender: TObject);
begin
  if not(DM.tbl_Temp_Item_Penjualan.Active) then Exit;
  if dm.tbl_Temp_Item_Penjualan.RecordCount < 1 then Exit;

  if DM.tbl_Temp_Penjualan.FieldValues['Bayar'] <= 0 then
  begin
    dbedtBayar.SelectAll;
    dbedtBayar.SetFocus;
    Exit;
  end;

 PreCetak;
 UpdatePenjualan;

// keawal lagi
  Transaksi_Baru;
end;

procedure TfrmMain.cboKasirCloseUp(Sender: TObject);
begin
  if not(DM.tbl_Temp_Penjualan.Active) then Exit;
  dm.tbl_Temp_Penjualan.Post;
end;

procedure TfrmMain.cboKasirMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if not(DM.tbl_Temp_Penjualan.Active) then Exit;
  if Button=mbLeft then
  dm.tbl_Temp_Penjualan.edit;
end;

procedure TfrmMain.DBLookupComboBox1Enter(Sender: TObject);
begin
  dm.tbl_Temp_Penjualan.Edit;
end;

procedure TfrmMain.DBLookupComboBox1Exit(Sender: TObject);
begin
  dm.tbl_Temp_Penjualan.UpdateRecord;
end;


function TfrmMain.GetIDBarang(Barcode : String):word;
var ID : word;
    SQL :string;
begin
  ID:=0;
  try
    SQL := 'Select ID from Barang Where Barcode = ' + '''' + Barcode+ '''';;
    dm.QTemp.SQL.Clear;
    dm.QTemp.SQL.Add(SQL);
    dm.QTemp.Open;
    if dm.QTemp.RecordCount > 0 then
    begin
      ID := dm.QTemp.FieldValues['ID'];
    end
    else
    begin
      ID:= 0;
    end;
    dm.QTemp.Close;
  except on E: Exception do
  end;
  Result:=ID;
end;


procedure TfrmMain.Isi_ID_Barcode(T:TAdotable);
var ID: Word;
  State : TDataSetState;
begin
 State := T.State;
 if (State<> dsEdit) or (State<> dsInsert) then T.Insert;

 try
  ID := GetIdBarang(ed_Barcode.Text);// dm.QTemp.FieldValues['ID'];
  if ID<>0 then
  begin
    T.Tag := 1;
    T.FieldValues['Barang_ID']:= ID;
    T.FieldValues['Jumlah_Barang']:=1;
    T.FieldValues['Subtotal']:=T.FieldValues['Harga'];
    T.FieldValues['Subdiskon']:=T.FieldValues['Diskon'];
    T.Post;
    T.Tag := 0;
    dm.TotalPenjualan;
  end
  else
  begin
    T.Cancel;
    ShowMessage('Barang Tidak tersedia.');
  end;
 except  on E: Exception do
   ShowMessage(E.Message);
 end;

end;



procedure TfrmMain.ed_BarcodeKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key:=#0;
    if Length(ed_Barcode.Text)>0 then
    begin
      Isi_ID_Barcode(DM.tbl_Temp_Item_Penjualan);
      ed_Barcode.Text:='';

    end
    else
    begin
      if DM.tbl_Temp_Item_Penjualan.RecordCount > 0 then
      begin
        dbedtBayar.SelectAll;
        dbedtBayar.SetFocus;
      end
      else
      begin
        ed_Barcode.Text:='';
        ed_Barcode.SetFocus;
      end;
    end;
    StatusBar1.Panels[1].Text:= IntToStr(dm.tbl_Temp_Item_Penjualan.RecordCount);
    StatusBar1.Panels[3].Text:=dbtxtGrand_Total.Caption;
  end;

end;

procedure TfrmMain.FormDestroy(Sender: TObject);
begin
  if uShared.Akses > 0 then
    Exit; 
  ReadConfig(False);
  img_Logo.Picture.SaveToFile(ChangeFileExt(Application.ExeName,'.ico'));
//  dm.CloseRegister;
end;

procedure TfrmMain.btn_MenuClick(Sender: TObject);
begin
  PopUpMenu1.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TfrmMain.ed_BarcodeExit(Sender: TObject);
begin
  dbedt_Barcode.Visible:=True;
end;


Procedure TfrmMain.HitungUlangGrandTotalDB;
var Total :Currency;// Double;
begin
// Procedure HitungUlangGrandTotal
  with DM.tbl_Temp_Penjualan do
  begin
    if FieldValues['Total_Penjualan'] = null then FieldValues['Total_Penjualan'] :=0;
    if FieldValues['Bea_Lain'] = null then FieldValues['Bea_Lain']:= 0;
    if FieldValues['PPn'] = null then FieldValues['PPn']:=0;
    if FieldValues['Total_Diskon'] = null then FieldValues['Total_Diskon']:=0;
    if FieldValues['Potongan_Lain'] = null then FieldValues['Potongan_Lain']:=0;

    Total := (FieldValues['Total_Penjualan'] +
              FieldValues['Bea_Lain'] +
              FieldValues['PPn']) -
              (FieldValues['Total_Diskon']+
              FieldValues['Potongan_Lain']);
    if State = dsbrowse then Edit;
    FieldValues['Grand_Total'] := Total;
    UpdateRecord;
  end;

end;



Procedure TfrmMain.HitungKembalianDB;
var Total : Double;
begin
// Procedure HitungUlangGrandTotal
  with DM.tbl_Temp_Penjualan do
  begin
    Total := FieldValues['Bayar'] - FieldValues['Grand_Total'];

    if State = dsbrowse then Edit;
    FieldValues['Kembali'] := Total;
    UpdateRecord;
  end;

end;


procedure TfrmMain.dbedtBea_LainKeyPress(Sender: TObject; var Key: Char);
begin
  if Key <> #13 then Exit;
  Key := #0;
  if DM.tbl_Temp_Penjualan.State = dsedit then DM.tbl_Temp_Penjualan.UpdateRecord;
  HitungUlangGrandTotalDB;
  dbedtPotongan_Lain.SetFocus;

end;

procedure TfrmMain.dbedtPotongan_LainKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key <> #13 then Exit;
  Key := #0;
  if DM.tbl_Temp_Penjualan.State = dsedit then DM.tbl_Temp_Penjualan.UpdateRecord;
  HitungUlangGrandTotalDB;
  dbedtPPn.SetFocus;


end;

procedure TfrmMain.dbedtPPnKeyPress(Sender: TObject; var Key: Char);
begin
  if Key <> #13 then Exit;
  Key := #0;
  if DM.tbl_Temp_Penjualan.State = dsedit then DM.tbl_Temp_Penjualan.UpdateRecord;
  HitungUlangGrandTotalDB;
  dbedtBayar.SetFocus;

end;

procedure TfrmMain.dbedtBayarKeyPress(Sender: TObject; var Key: Char);
begin
  if Key <> #13 then Exit;
  Key := #0;
  if DM.tbl_Temp_Penjualan.State = dsedit then DM.tbl_Temp_Penjualan.UpdateRecord;
  HitungKembalianDB;
  if DM.tbl_Temp_Penjualan.FieldValues['Bayar'] > 0 then
     dbedtKembali.SetFocus
  else
  begin
    dbedtBayar.SelectAll;
    dbedtBayar.SetFocus;
  end;

end;

procedure TfrmMain.Label6Click(Sender: TObject);
begin
  dbedt_Barcode.Visible:=False;
  ed_Barcode.SetFocus;

end;

procedure TfrmMain.ed_BarcodeEnter(Sender: TObject);
begin
  dbedt_Barcode.Visible:=False;
end;

procedure TfrmMain.WriteLog(StringMsg : string);
var LogFile: string;
  List   : TStringList;
begin
  List := TStringList.Create;
  LogFile := ChangeFileExt(application.ExeName , '.LOG');
  if FileExists(LogFile) then
  begin
    List.LoadFromFile(LogFile);
    if List.Count > 1000 then  List.Clear;
    List.Add(DateTimeToStr(Now) + ' : ' + StringMsg);
  end
  else
  begin
    List.Add(DateTimeToStr(Now) + ' : First Run..') ;
    List.Add(DateTimeToStr(Now) + ' : ' + StringMsg);
  end;

  List.SaveToFile(LogFile);
  FreeAndNil(List);
end;


procedure TfrmMain.ReadConfig(isRead:Boolean);
var IniFile: string;
    FConfig: TIniFile;

    procedure ReadOnly;
    var i:Integer;
       Logo:string;
    begin
      if not(DM.tbl_Konfigurasi.Active) then DM.tbl_Konfigurasi.Open;
      if not(VarIsNull(dm.tbl_Konfigurasi.FieldValues['Logo'])) then
      begin
        logo:=dm.tbl_Konfigurasi.FieldValues['Logo'];
        if FileExists(logo) then
        img_Logo.Picture.LoadFromFile(dm.tbl_Konfigurasi.FieldValues['Logo']);
      end;

      frmMain.Width := FConfig.ReadInteger('INTERFACE_MAIN','Main_Form_Width',frmMain.Width);
      frmMain.Height := FConfig.ReadInteger('INTERFACE_MAIN','Main_Form_Height',frmMain.Height);
      i:=0;
      i:=FConfig.ReadInteger('INTERFACE_MAIN','Main_Form_State',i);
      case i of
        0: frmMain.WindowState := wsNormal;
        1: frmMain.WindowState := wsMinimized;
        2: frmMain.WindowState := wsMaximized;
      end;

      pnl_Total.Width := FConfig.ReadInteger('INTERFACE_MAIN','Panel_Total_Width',pnl_Total.Width);
      pgc_Nota.ActivePageIndex := FConfig.ReadInteger('INTERFACE_MAIN','Page_Nota_Active',pgc_Nota.ActivePageIndex);

      for i:=0 to 7 do
        grd_Penjualan.Columns[i].Width := FConfig.ReadInteger('GRID_ITEM','Width_Kolom_' + IntToStr(i),grd_Penjualan.Columns[i].Width);

    end;

    procedure WriteConfig;
    var i:Integer;
    begin
      FConfig.WriteInteger('INTERFACE_MAIN','Main_Form_Width',frmMain.Width);
      FConfig.WriteInteger('INTERFACE_MAIN','Main_Form_Height',frmMain.Height);
      i:=0;
      case frmMain.WindowState of
        wsNormal: i := 0;
        wsMinimized: i := 1;
        wsMaximized: i := 2;
      end;
      FConfig.WriteInteger('INTERFACE_MAIN','Main_Form_State',i);

      FConfig.WriteInteger('INTERFACE_MAIN','Panel_Total_Width',pnl_Total.Width);
      FConfig.WriteInteger('INTERFACE_MAIN','Page_Nota_Active',pgc_Nota.ActivePageIndex);

      for i:=0 to 7 do
        FConfig.WriteInteger('GRID_ITEM','Width_Kolom_' + IntToStr(i),grd_Penjualan.Columns[i].Width);

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

procedure TfrmMain.EXEC_Q(SQL:string; con1:TADOConnection);
var Q:TADOQuery;
begin
  Q := TADOQuery.Create(Self);
  Q.Connection := con1;

  Q.SQL.Clear;
  Q.SQL.Add(SQL);
  Q.ExecSQL;

  FreeAndNil(Q);
end;


procedure TfrmMain.Cetak;
var Struk: string;
  List   : TStringList;
  T,T1 : TADOTable;
  N : Integer; // JmlKarakter Pada Struk
  C,C1,C2,C3,C4:string;

begin
// Ukuran jumlah karakter kertas sktruk: 32 - 40 karakter
  C :=' ';
  N := 35;
  T := DM.tbl_Temp_Penjualan;
  T1:= dm.tbl_Temp_Item_Penjualan;
  T1.First;

  List := TStringList.Create;
  Struk := ChangeFileExt(application.ExeName , '.str.txt');

  List.Add(C + CenterText(dm.tbl_Konfigurasi.FieldValues['Nama_Toko'],N));
  List.Add(C + CenterText(dm.tbl_Konfigurasi.FieldValues['Alamat'],N));
  List.Add(C + CenterText(dm.tbl_Konfigurasi.FieldValues['Kota_Provinsi'],N));
  List.Add(C + CenterText(dm.tbl_Konfigurasi.FieldValues['Telp'],N));
  List.Add(C + CarX('=',N));
  while not(T1.Eof)do
  begin
    List.Add(C + T1.FieldValues['Nama_Barang']);
    C1 := KananStr(IntToStr(T1.FieldValues['Jumlah_Barang']),4,False);
    if VarIsEmpty(T1.FieldValues['Satuan']) then
      C2 := KananStr(' ',3,False)
    else
      C2 := KananStr(T1.FieldValues['Satuan'],3,False);
    C3 := KananStr(CurrToStr(T1.FieldValues['Harga']),10,true);
    C4 := KananStr(CurrToStr(T1.FieldValues['Subtotal']),11,True);
    List.Add(C + C1+' '+C2+' x '+C3+' = '+C4);
    T1.Next;
  end;
  List.Add(C + CarX('-',N));
//  List.Add(KananStr('+ -----------',N,False));
  List.Add(C + 'Total : ' + KananStr(CurrToStr(T.FieldValues['Grand_Total']),N-8,True));
  List.Add(C + 'Disc. : ' + KananStr(CurrToStr(T.FieldValues['Total_Diskon']),N-8,True));
  List.Add(C + 'Bayar : ' + KananStr(CurrToStr(T.FieldValues['Bayar']),N-8,True));
  List.Add(C + 'Kembali :' + KananStr(CurrToStr(T.FieldValues['Kembali']),N-9,True));
  List.Add(C + CarX('=',N));
  List.Add(C + 'No. Nota:' + T.FieldValues['No_Resi']);
  List.Add(C + 'Kasir:' + T.FieldValues['Karyawan']);
  List.Add(C + FormatDateTime('DD-MM-YYYY hh:mm:ss',Now));
  List.Add(C + CenterText('Terima Kasih Atas Kunjungannya',N));

  redt_Struk.Lines.Clear;
  redt_Struk.Lines.AddStrings(List);

  List.SaveToFile(Struk);
  FreeAndNil(List);

  //  Sementara di disable
  try
  redt_Struk.Print('Struk-' + FormatDateTime('YYYYMMDD-HHmmSS',now));
  except
    on E:Exception do
      ShowMessage('Error Printer... Cek Printer');
  end;
end;


procedure TfrmMain.dbedtKembaliKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then btnT_Cetak.Click;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  if uShared.ID <> 1 then uShared.ID:=1;
  AllowSystemClose:=False;
  Caption := '.:. Kasir - Penjualan .:.  - ' + dm.tbl_Konfigurasi.FieldValues['Nama_Toko'];
  try
    if FileExists(ChangeFileExt(Application.ExeName,'.ico')) then
       img_Logo.Picture.LoadFromFile(ChangeFileExt(Application.ExeName,'.ico'));
  except

  end;

  ReadConfig(True);
//  SetRegister;
  try
    Transaksi_Baru;
  except

  end;

  StatusBar1.Panels[1].Text:='0';
  StatusBar1.Panels[3].Text:=CurrToStr(0);
end;

procedure TfrmMain.btn_CariBarangClick(Sender: TObject);
begin
  CariBarang;
end;

procedure TfrmMain.actBaruExecute(Sender: TObject);
begin
  ed_Barcode.SetFocus;
end;

procedure TfrmMain.btn_LogoutClick(Sender: TObject);
begin
  if MessageDlg('Anda yakin ingin keluar dan selesai...?',mtConfirmation,[mbYes,mbNo],0)=mryes then
  begin
//    dm.CloseRegister;
    AllowSystemClose :=True;
    Close;
  end;
end;

procedure TfrmMain.grd_PenjualanKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then ed_Barcode.SetFocus;
end;

procedure TfrmMain.actBayarExecute(Sender: TObject);
begin
  dbedtBayar.SetFocus;
end;

procedure TfrmMain.dbedtJumlah_BarangKeyPress(Sender: TObject;
  var Key: Char);
begin
  if DM.tbl_Temp_Item_Penjualan.State <> dsedit then
     DM.tbl_Temp_Item_Penjualan.Edit;
  if Key=#13 then
  begin
    key:=#0;
    dm.tbl_Temp_Item_Penjualan.Tag := 1;
    dm.tbl_Temp_Item_Penjualan.UpdateRecord;
    dm.tbl_Temp_Item_Penjualan.Tag := 0;
  end;
end;

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if not(AllowSystemClose) then
     Action := Forms.caNone;
end;

procedure TfrmMain.btnT_CetakClick(Sender: TObject);
begin
  if not(DM.tbl_Temp_Item_Penjualan.Active) then Exit;
  if dm.tbl_Temp_Item_Penjualan.RecordCount < 1 then Exit;

  if DM.tbl_Temp_Penjualan.FieldValues['Bayar'] <= 0 then
  begin
    dbedtBayar.SelectAll;
    dbedtBayar.SetFocus;
    Exit;
  end;

  PreCetak;
  Cetak;
// Update Tabel Penjualan, Item_Penjualan, Barang
  UpdatePenjualan;
  Transaksi_Baru;
end;

end.
