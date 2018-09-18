unit uLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, ADODB;

type
  TfrmLogin = class(TForm)
    pnl1: TPanel;
    pnl2: TPanel;
    lbl1: TLabel;
    edtName: TEdit;
    lbl2: TLabel;
    edtPassword: TEdit;
    btnLogin: TButton;
    qryQ: TADOQuery;
    con1: TADOConnection;
    procedure btnLoginClick(Sender: TObject);
    procedure edtNameKeyPress(Sender: TObject; var Key: Char);
    procedure edtPasswordKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    class function Execute : boolean;
    class function GetAkses : Byte;
    class function GetID : Integer;

  end;

var
  frmLogin: TfrmLogin;

implementation

uses cHash, uShared;
{$R *.dfm}

var
  LoAkses:Byte;
  LoID:Integer;

class function TfrmLogin.GetID : Integer;
begin
//  Result := uShared.Akses;
  Result := LoID;// uShared.Akses;
end;

class function TfrmLogin.GetAkses : Byte;
begin
//  Result := uShared.Akses;
  Result := LoAkses;// uShared.Akses;
end;


class function TfrmLogin.Execute: boolean;
begin
  with TfrmLogin.Create(nil) do
  try
    Result := ShowModal = mrOk;
  finally
    Free;
  end;
end;


procedure TfrmLogin.btnLoginClick(Sender: TObject);
Var //Q  : TAdoquery;
    SQL: string;
    PWD:string;
    P  :string;
//    L  :TStringList;
begin
//  L := TStringList.Create;
  qryQ.SQL.Clear;
  P:='''';
  PWD := edtPassword.Text;
  PWD :=MD5DigestToHex(CalcMD5(PWD));
  SQL:= 'Select ID, Akses from Karyawan Where Nama_Login =' + P + edtName.Text + P+ ' and Password = '+ P + PWD + P;
  qryQ.SQL.Add(SQL);
  qryQ.Open;
  if qryQ.RecordCount > 0 then
  begin
    //sukses
//    Akses := StrToInt(qryQ.FieldValues['Akses']);
    LoAkses := StrToInt(qryQ.FieldValues['Akses']);
    LoID := StrToInt(qryQ.FieldValues['ID']);

    uShared.Akses:=LoAkses;
    uShared.ID:=LoID;
    ModalResult := mrOK
  end
  else
  begin
    ModalResult := mrAbort;
  end;

end;


procedure TfrmLogin.edtNameKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    edtPassword.SetFocus;
  end;
end;

procedure TfrmLogin.edtPasswordKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    btnLogin.SetFocus;
  end;

end;

procedure TfrmLogin.FormCreate(Sender: TObject);
var con:string;
begin
 con:='Provider=Microsoft.ACE.OLEDB.12.0;Data Source=' + ChangeFileExt(Application.ExeName,'.accdb') + ';Persist Security Info=False';
 con1.Close;
 con1.ConnectionString:=con;
 con1.Open;
end;

end.
