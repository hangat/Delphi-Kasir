program D10_Toko_006;

{%ToDo 'D10_Toko_006.todo'}

uses
  Forms,
  Windows,
  uDM in 'uDM.pas' {DM: TDataModule},
  uMain in 'uMain.pas' {frmMain},
  uLogin in 'uLogin.pas' {frmLogin},
  uAdmin in 'uAdmin.pas' {frmAdmin},
  uShared in 'uShared.pas',
  uCariBarang in 'uCariBarang.pas' {frmCariBarang};

{$R *.res}

var
  Mutex : THandle;
  mode  : Integer; // 0:normal, 1:admin, 2:kasir

begin
  mode :=2;

  Mutex := CreateMutex(nil, True, 'KASIR');
  if (Mutex = 0) OR (GetLastError = ERROR_ALREADY_EXISTS) then
  begin
    // code to searh for, and activate
    // the previous (first) instance
  end
  else
  begin
    Application.Initialize;
    Application.Title := '.:. Kasir - Penjualan .:.';

    case mode of
     0: begin
          if TfrmLogin.Execute then
          begin
              Application.CreateForm(TDM, DM);
//              Application.CreateForm(TfrmMain, frmMain);
              if TfrmLogin.GetAkses > 0 then
              begin
                Application.CreateForm(TfrmAdmin, frmAdmin);
              end
              else
              begin
                Application.CreateForm(TfrmMain, frmMain);
              end;
              Application.Run;
          end
          else
          begin
              Application.MessageBox('You are not authorized to use the application.','Error');
          end;
        end;
     1: begin
              Application.CreateForm(TDM, DM);
              Application.CreateForm(TfrmAdmin, frmAdmin);
              Application.Run;
        end;
     2: begin
              Application.CreateForm(TDM, DM);
              Application.CreateForm(TfrmMain, frmMain);
              Application.CreateForm(TfrmCariBarang, frmCariBarang);
              Application.Run;
        end;
    end;


    if Mutex <> 0 then CloseHandle(Mutex);
  end;

end.
