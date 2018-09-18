unit uCariBarang;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Grids, DBGrids, ExtCtrls, DB, ADODB, Buttons, IniFiles,
  ActnList;

type
  TfrmCariBarang = class(TForm)
    cn: TADOConnection;
    ds_qry_CariBarang: TDataSource;
    qry_CariBarang: TADOQuery;
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
    stat_CariBarang: TStatusBar;
    dbgrd_Cari: TDBGrid;
    edt_Cari1: TEdit;
    btn_Batal: TButton;
    btn_Kembali: TButton;
    actlst1: TActionList;
    act_Isi_Barcode: TAction;
    act_Pilih_Data_Grid: TAction;
    act_Batal: TAction;
    act_Kembali: TAction;
    act_Batal_1: TAction;
    act_Kembali_1: TAction;
    procedure edt_Cari1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure dbgrd_CariTitleClick(Column: TColumn);
    procedure FormDestroy(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure dbgrd_CariKeyPress(Sender: TObject; var Key: Char);
    procedure edt_Cari1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgrd_CariDblClick(Sender: TObject);
    procedure act_Isi_BarcodeExecute(Sender: TObject);
    procedure act_Pilih_Data_GridExecute(Sender: TObject);
    procedure act_BatalExecute(Sender: TObject);
    procedure act_KembaliExecute(Sender: TObject);
    procedure act_Batal_1Execute(Sender: TObject);
  private
    { Private declarations }
    procedure CariBarang(Q:TADOQuery; T:TEdit);
    procedure Init;
    procedure ReadConfig(isRead:Boolean);
    function DBConnect(C : TADOConnection):Boolean;
  public
    { Public declarations }
  end;

var
  frmCariBarang: TfrmCariBarang;

implementation

{$R *.dfm}
function TfrmCariBarang.DBConnect(C : TADOConnection):Boolean;
var mydb : string;
begin
  Result := False;
  mydb := ChangeFileExt(Application.ExeName,'.accdb');
  try
    c.Close;
    c.ConnectionString  := 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source="' +
      mydb + '";Persist Security Info=False';
    c.Open;
    Result := True;
  except
    on E: Exception do
      ShowMessage('Error Connection : ' + #13#10 + E.Message);
  end;
end;

procedure TfrmCariBarang.ReadConfig(isRead:Boolean);
var IniFile: string;
    FConfig: TIniFile;

    procedure ReadConfig;
    var i:Integer;
    begin
      frmCariBarang.Icon.LoadFromFile(ExtractFilePath(Application.ExeName)+'\items.ico');
      frmCariBarang.Width := FConfig.ReadInteger('WINDOW','Form_Width',frmCariBarang.Width);
      frmCariBarang.Height := FConfig.ReadInteger('WINDOW','Form_Height',frmCariBarang.Height);
      i:=0;
      i:=FConfig.ReadInteger('WINDOW','Form_State',i);
      case i of
        0: frmCariBarang.WindowState := wsNormal;
        1: frmCariBarang.WindowState := wsMinimized;
        2: frmCariBarang.WindowState := wsMaximized;
      end;

      for i:=0 to dbgrd_Cari.Columns.Count-1 do
        dbgrd_Cari.Columns[i].Width := FConfig.ReadInteger('GRID_CARI','Width_Column_' + IntToStr(i),dbgrd_Cari.Columns[i].Width);

    end;

    procedure WriteConfig;
    var i:Integer;
    begin
      FConfig.WriteInteger('WINDOW','Form_Width',frmCariBarang.Width);
      FConfig.WriteInteger('WINDOW','Form_Height',frmCariBarang.Height);
      case frmCariBarang.WindowState of
        wsNormal: i:=0;
        wsMinimized: i:=1;
        wsMaximized: i:=2;
      end;
      FConfig.WriteInteger('WINDOW','Form_State',i);
      for i:=0 to dbgrd_Cari.Columns.Count-1 do
        FConfig.WriteInteger('GRID_CARI','Width_Column_' + IntToStr(i),dbgrd_Cari.Columns[i].Width);
    end;

begin
  IniFile := ChangeFileExt(application.ExeName , '.CBI');
  FConfig := TIniFile.Create(IniFile);

  if FileExists(IniFile) then
  begin
    if isRead then ReadConfig else WriteConfig;
  end
  else
  begin
    WriteConfig;
  end;

  FreeAndNil(FConfig);
end;


procedure TfrmCariBarang.CariBarang(Q:TADOQuery; T:TEdit);
var SQL:string;
begin
  SQL:='Select * From Barang';
  if Length(Trim(T.Text))>0 then
     SQL := SQL + ' Where (Barcode Like "%' + T.Text + '%") OR (Nama_Barang Like "%' + T.Text + '%")';

  Q.Close;
  Q.SQL.Clear;
  Q.SQL.Add(SQL);
  Q.Open;
end;

procedure TfrmCariBarang.edt_Cari1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    CariBarang(qry_CariBarang,edt_Cari1);
    stat_CariBarang.Panels[1].Text:= IntToStr(qry_CariBarang.RecordCount);
  end;

//  if Key= vk_down then dbgrd_Cari.SetFocus; //panah bawah ascii=26


end;

procedure TfrmCariBarang.Init;
var i:Integer;
begin
  if not(DBConnect(cn)) then Exit;
  if not(qry_CariBarang.Active) then qry_CariBarang.Open;
  for i:=0 to dbgrd_Cari.Columns.Count-1 do
    dbgrd_Cari.Columns[i].Title.Alignment := taCenter;
  ReadConfig(True);
end;

procedure TfrmCariBarang.FormCreate(Sender: TObject);
begin
  init;
end;

procedure TfrmCariBarang.dbgrd_CariTitleClick(Column: TColumn);
var
  DataSet: TDataSet;
begin
    DataSet := Column.Field.DataSet;
    if DataSet is TCustomADODataSet then
    with TCustomADODataSet(DataSet) do
    begin
      if (Pos(Column.Field.FieldName, Sort) = 1) and (Pos(' DESC', Sort) = 0) then
        Sort := Column.Field.FieldName + ' DESC'
      else
        Sort := Column.Field.FieldName + ' ASC';
    end;
end;

procedure TfrmCariBarang.FormDestroy(Sender: TObject);
begin
  ReadConfig(False);
end;

procedure TfrmCariBarang.btn2Click(Sender: TObject);
begin
  close;
end;

procedure TfrmCariBarang.dbgrd_CariKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    btn_Kembali.Click;
  end;
  if Key=#27 then
  begin
    Key:=#0;
    btn_Batal.Click;
  end;

end;

procedure TfrmCariBarang.edt_Cari1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_down then dbgrd_Cari.SetFocus;
end;

procedure TfrmCariBarang.dbgrd_CariDblClick(Sender: TObject);
begin
    btn_Kembali.Click;
end;

procedure TfrmCariBarang.act_Isi_BarcodeExecute(Sender: TObject);
begin
  edt_Cari1.SelectAll;
  edt_Cari1.SetFocus;
end;

procedure TfrmCariBarang.act_Pilih_Data_GridExecute(Sender: TObject);
begin
  dbgrd_Cari.SetFocus;
end;

procedure TfrmCariBarang.act_BatalExecute(Sender: TObject);
begin
  btn_Batal.Click;
end;

procedure TfrmCariBarang.act_KembaliExecute(Sender: TObject);
begin
  btn_Kembali.Click;
end;

procedure TfrmCariBarang.act_Batal_1Execute(Sender: TObject);
begin
  btn_Batal.Click;
end;

end.
