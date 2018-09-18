object frmAdmin: TfrmAdmin
  Left = 308
  Top = 133
  Width = 925
  Height = 651
  Caption = 'Admin Kasir'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMenuLeft: TPanel
    Left = 0
    Top = 0
    Width = 97
    Height = 586
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 0
    object btnSales: TSpeedButton
      Left = 8
      Top = 8
      Width = 81
      Height = 81
      GroupIndex = 1
      Down = True
      Caption = 'Sales'
      Flat = True
      Layout = blGlyphTop
      OnClick = btnSalesClick
    end
    object btnCustomers: TSpeedButton
      Left = 8
      Top = 88
      Width = 81
      Height = 81
      GroupIndex = 1
      Caption = 'Customers'
      Flat = True
      Layout = blGlyphTop
      OnClick = btnCustomersClick
    end
    object btnProducts: TSpeedButton
      Left = 8
      Top = 168
      Width = 81
      Height = 81
      GroupIndex = 1
      Caption = 'Products'
      Flat = True
      Layout = blGlyphTop
      OnClick = btnProductsClick
    end
    object btnRegisters: TSpeedButton
      Left = 8
      Top = 248
      Width = 81
      Height = 81
      GroupIndex = 1
      Caption = 'Registers'
      Flat = True
      Layout = blGlyphTop
      OnClick = btnRegistersClick
    end
    object btnUsers: TSpeedButton
      Left = 8
      Top = 328
      Width = 81
      Height = 81
      GroupIndex = 1
      Caption = 'Users'
      Flat = True
      Layout = blGlyphTop
      OnClick = btnUsersClick
    end
    object btnStatistics: TSpeedButton
      Left = 8
      Top = 408
      Width = 81
      Height = 81
      Caption = 'Statistics'
      Flat = True
      Layout = blGlyphTop
      OnClick = btnStatisticsClick
    end
  end
  object pgcMain: TPageControl
    Left = 97
    Top = 0
    Width = 820
    Height = 586
    ActivePage = tsSales
    Align = alClient
    Style = tsFlatButtons
    TabOrder = 1
    object tsSales: TTabSheet
      Caption = 'Sales'
      object pnl3: TPanel
        Left = 0
        Top = 0
        Width = 812
        Height = 22
        Align = alTop
        TabOrder = 0
        object btn1: TSpeedButton
          Left = 40
          Top = 0
          Width = 65
          Height = 22
          Caption = 'Summaries'
          Flat = True
        end
        object lbl1: TLabel
          Left = 5
          Top = 5
          Width = 29
          Height = 13
          Caption = 'View :'
        end
        object btn2: TSpeedButton
          Left = 104
          Top = 0
          Width = 65
          Height = 22
          Caption = 'By Products'
          Flat = True
        end
        object lbl2: TLabel
          Left = 179
          Top = 6
          Width = 33
          Height = 13
          Caption = 'Show :'
        end
        object btn3: TSpeedButton
          Left = 216
          Top = 0
          Width = 145
          Height = 22
          Caption = 'Sale By Current Registers'
          Flat = True
        end
      end
      object pnl7: TPanel
        Left = 0
        Top = 22
        Width = 812
        Height = 533
        Align = alClient
        BevelOuter = bvLowered
        TabOrder = 1
        object spl5: TSplitter
          Left = 217
          Top = 1
          Width = 5
          Height = 531
          Color = clBtnFace
          ParentColor = False
        end
        object pnl18: TPanel
          Left = 222
          Top = 1
          Width = 589
          Height = 531
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          object pgc_Transaksi_Detail_Rekap: TPageControl
            Left = 0
            Top = 0
            Width = 589
            Height = 512
            ActivePage = ts_Rekap
            Align = alClient
            TabOrder = 1
            object ts_Transaksi_Detail: TTabSheet
              Caption = '.:. Transaksi Detail .:.'
              object spl8: TSplitter
                Left = 0
                Top = 145
                Width = 581
                Height = 3
                Cursor = crVSplit
                Align = alTop
              end
              object pnlSales_Transaksi_Detail_Top1: TPanel
                Left = 0
                Top = 0
                Width = 581
                Height = 145
                Align = alTop
                BorderWidth = 3
                TabOrder = 0
                object pnl_Sales_Sum: TPanel
                  Left = 4
                  Top = 4
                  Width = 573
                  Height = 22
                  Align = alTop
                  BevelOuter = bvNone
                  TabOrder = 0
                  object pnl9: TPanel
                    Left = 0
                    Top = 0
                    Width = 89
                    Height = 22
                    Align = alLeft
                    BevelOuter = bvNone
                    Caption = 'Summaries'
                    TabOrder = 0
                  end
                end
                object dbgrd_Sales_Transaction: TDBGrid
                  Left = 4
                  Top = 26
                  Width = 573
                  Height = 115
                  Align = alClient
                  BorderStyle = bsNone
                  DataSource = DM.ds_qry_Penjualan
                  Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
                  ReadOnly = True
                  TabOrder = 1
                  TitleFont.Charset = DEFAULT_CHARSET
                  TitleFont.Color = clWindowText
                  TitleFont.Height = -11
                  TitleFont.Name = 'Tahoma'
                  TitleFont.Style = []
                  OnTitleClick = dbgrd_Sales_TransactionTitleClick
                  Columns = <
                    item
                      Expanded = False
                      FieldName = 'No_Resi'
                      Title.Alignment = taCenter
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'Waktu'
                      Title.Alignment = taCenter
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'Grand_Total'
                      Title.Alignment = taCenter
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'Total_Harga_Dasar'
                      Title.Alignment = taCenter
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'Total_Laba'
                      Title.Alignment = taCenter
                      Visible = True
                    end>
                end
              end
              object pnlSales_Transaksi_Detail_Client1: TPanel
                Left = 0
                Top = 148
                Width = 581
                Height = 336
                Align = alClient
                TabOrder = 1
                object pnl_Sales_Detail: TPanel
                  Left = 1
                  Top = 1
                  Width = 579
                  Height = 22
                  Align = alTop
                  BevelOuter = bvNone
                  TabOrder = 0
                  object pnl20: TPanel
                    Left = 0
                    Top = 0
                    Width = 89
                    Height = 22
                    Align = alLeft
                    BevelOuter = bvNone
                    Caption = 'Detail '
                    TabOrder = 0
                  end
                  object stat_Sales_Detail: TStatusBar
                    Left = 89
                    Top = 0
                    Width = 490
                    Height = 22
                    Align = alClient
                    Panels = <
                      item
                        Width = 50
                      end
                      item
                        Width = 50
                      end
                      item
                        Width = 50
                      end
                      item
                        Width = 50
                      end
                      item
                        Width = 50
                      end
                      item
                        Width = 50
                      end>
                  end
                end
                object dbgrd_Detail_Transactions: TDBGrid
                  Left = 1
                  Top = 23
                  Width = 579
                  Height = 312
                  Align = alClient
                  BorderStyle = bsNone
                  DataSource = DM.ds_tbl_Item_Penjualan_2
                  Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
                  ReadOnly = True
                  TabOrder = 1
                  TitleFont.Charset = DEFAULT_CHARSET
                  TitleFont.Color = clWindowText
                  TitleFont.Height = -11
                  TitleFont.Name = 'Tahoma'
                  TitleFont.Style = []
                  OnDrawDataCell = dbgrd_Detail_TransactionsDrawDataCell
                  OnTitleClick = dbgrd_Detail_TransactionsTitleClick
                  Columns = <
                    item
                      Expanded = False
                      FieldName = 'Barcode'
                      Title.Alignment = taCenter
                      Width = 64
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'Nama_Barang'
                      Title.Alignment = taCenter
                      Width = 108
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'Jumlah_Barang'
                      Title.Alignment = taCenter
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'Subtotal'
                      Title.Alignment = taCenter
                      Visible = True
                    end>
                end
              end
            end
            object ts_Rekap: TTabSheet
              Caption = '.:. Rekap .:.'
              ImageIndex = 1
              object spl6: TSplitter
                Left = 0
                Top = 88
                Width = 581
                Height = 3
                Cursor = crVSplit
                Align = alTop
              end
              object pnl_Sales_Rekap_Top: TPanel
                Left = 0
                Top = 0
                Width = 581
                Height = 88
                Align = alTop
                BorderWidth = 3
                TabOrder = 0
                object pnl8: TPanel
                  Left = 4
                  Top = 4
                  Width = 573
                  Height = 22
                  Align = alTop
                  BevelOuter = bvNone
                  TabOrder = 0
                  object pnl19: TPanel
                    Left = 0
                    Top = 0
                    Width = 89
                    Height = 22
                    Align = alLeft
                    BevelOuter = bvNone
                    Caption = 'Rekap-Transaksi'
                    TabOrder = 0
                  end
                end
                object dbgrd_Rekap_Transaksi: TDBGrid
                  Left = 4
                  Top = 26
                  Width = 573
                  Height = 58
                  Align = alClient
                  BorderStyle = bsNone
                  Ctl3D = True
                  DataSource = DM.ds_qry_Rekap_Transaksi
                  Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
                  ParentCtl3D = False
                  ReadOnly = True
                  TabOrder = 1
                  TitleFont.Charset = DEFAULT_CHARSET
                  TitleFont.Color = clWindowText
                  TitleFont.Height = -11
                  TitleFont.Name = 'Tahoma'
                  TitleFont.Style = []
                  OnTitleClick = dbgrd_Rekap_TransaksiTitleClick
                  Columns = <
                    item
                      Expanded = False
                      FieldName = 'Transaksi'
                      Title.Alignment = taCenter
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'Harga_Dasar'
                      Title.Alignment = taCenter
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'Harga_Jual'
                      Title.Alignment = taCenter
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'Laba'
                      Title.Alignment = taCenter
                      Visible = True
                    end>
                end
              end
              object pnl_Sales_Bottom: TPanel
                Left = 0
                Top = 91
                Width = 581
                Height = 393
                Align = alClient
                TabOrder = 1
                object pnl_Sales_Rekap: TPanel
                  Left = 1
                  Top = 1
                  Width = 579
                  Height = 22
                  Align = alTop
                  BevelOuter = bvNone
                  TabOrder = 0
                  object pnl22: TPanel
                    Left = 0
                    Top = 0
                    Width = 89
                    Height = 22
                    Align = alLeft
                    BevelOuter = bvNone
                    Caption = 'Rekap - Barang'
                    TabOrder = 0
                  end
                  object stat_Sales_Rekap: TStatusBar
                    Left = 89
                    Top = 0
                    Width = 490
                    Height = 22
                    Align = alClient
                    Panels = <
                      item
                        Width = 50
                      end
                      item
                        Width = 50
                      end
                      item
                        Width = 50
                      end
                      item
                        Width = 50
                      end
                      item
                        Width = 50
                      end
                      item
                        Width = 50
                      end>
                  end
                end
                object dbgrd2: TDBGrid
                  Left = 1
                  Top = 23
                  Width = 579
                  Height = 369
                  Align = alClient
                  BorderStyle = bsNone
                  DataSource = DM.ds_tbl_RekapBarang
                  Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
                  ReadOnly = True
                  TabOrder = 1
                  TitleFont.Charset = DEFAULT_CHARSET
                  TitleFont.Color = clWindowText
                  TitleFont.Height = -11
                  TitleFont.Name = 'Tahoma'
                  TitleFont.Style = []
                  OnDrawDataCell = dbgrd_Detail_TransactionsDrawDataCell
                  OnTitleClick = dbgrd2TitleClick
                  Columns = <
                    item
                      Expanded = False
                      FieldName = 'Barcode'
                      Title.Alignment = taCenter
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'Nama_Barang'
                      Title.Alignment = taCenter
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'Harga'
                      Title.Alignment = taCenter
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'Jumlah_Barang'
                      Title.Alignment = taCenter
                      Visible = True
                    end>
                end
              end
            end
          end
          object stat_Penjualan: TStatusBar
            Left = 0
            Top = 512
            Width = 589
            Height = 19
            Panels = <
              item
                Alignment = taRightJustify
                Text = 'Jumlah Transaksi : '
                Width = 100
              end
              item
                Alignment = taCenter
                Text = '0123456789'
                Width = 70
              end
              item
                Alignment = taRightJustify
                Text = 'Jumlah Detail :'
                Width = 80
              end
              item
                Alignment = taCenter
                Text = '0123456789'
                Width = 70
              end
              item
                Text = 'Sum. Grand Total :'
                Width = 100
              end
              item
                Alignment = taCenter
                Text = '0123456789'
                Width = 100
              end
              item
                Width = 50
              end>
          end
        end
        object pgc_Sales_Transaction: TPageControl
          Left = 1
          Top = 1
          Width = 216
          Height = 531
          ActivePage = ts19
          Align = alLeft
          Style = tsFlatButtons
          TabOrder = 0
          object ts19: TTabSheet
            Caption = 'Transactions'
            object dbgrd_Transactions_Left: TDBGrid
              Left = 0
              Top = 170
              Width = 208
              Height = 330
              Align = alClient
              BorderStyle = bsNone
              DataSource = DM.ds_qry_Penjualan
              ReadOnly = True
              TabOrder = 2
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              Visible = False
              OnTitleClick = dbgrd_Transactions_LeftTitleClick
              Columns = <
                item
                  Expanded = False
                  Title.Alignment = taCenter
                  Width = 188
                  Visible = True
                end>
            end
            object grp2: TGroupBox
              Left = 0
              Top = 121
              Width = 208
              Height = 49
              Align = alTop
              Caption = ' Order By '
              Color = clBtnFace
              ParentColor = False
              TabOrder = 1
              Visible = False
              DesignSize = (
                208
                49)
              object cbbTransactionField: TComboBox
                Left = 8
                Top = 16
                Width = 193
                Height = 21
                Anchors = [akLeft, akTop, akRight]
                ItemHeight = 13
                TabOrder = 0
                Text = 'cbbTransactionField'
                OnChange = cbbTransactionFieldChange
              end
            end
            object pnl21: TPanel
              Left = 0
              Top = 0
              Width = 208
              Height = 121
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 0
              DesignSize = (
                208
                121)
              object lbl12: TLabel
                Left = 8
                Top = 38
                Width = 31
                Height = 13
                Caption = 'From :'
              end
              object lbl13: TLabel
                Left = 8
                Top = 62
                Width = 19
                Height = 13
                Caption = 'To :'
              end
              object btn_Filter: TSpeedButton
                Left = 8
                Top = 88
                Width = 193
                Height = 25
                Anchors = [akLeft, akTop, akRight]
                Caption = 'Filter'
                Flat = True
                OnClick = btn_FilterClick
              end
              object dtp_From: TDateTimePicker
                Left = 48
                Top = 38
                Width = 153
                Height = 21
                Anchors = [akLeft, akTop, akRight]
                BevelInner = bvNone
                BevelOuter = bvNone
                Date = 36526.699439375000000000
                Time = 36526.699439375000000000
                Enabled = False
                TabOrder = 1
                OnChange = dtp_FromChange
              end
              object dtp_To: TDateTimePicker
                Left = 48
                Top = 62
                Width = 153
                Height = 21
                Anchors = [akLeft, akTop, akRight]
                BevelInner = bvNone
                BevelOuter = bvNone
                Date = 43354.699439375000000000
                Time = 43354.699439375000000000
                Enabled = False
                TabOrder = 2
                OnChange = dtp_ToChange
              end
              object cbb_Date: TComboBox
                Left = 8
                Top = 8
                Width = 193
                Height = 21
                Anchors = [akLeft, akTop, akRight]
                ItemHeight = 13
                ItemIndex = 0
                TabOrder = 0
                Text = 'All Time'
                OnChange = cbb_DateChange
                Items.Strings = (
                  'All Time'
                  'Today'
                  'This Week'
                  'This Month'
                  'This Year'
                  'Custom')
              end
            end
          end
          object ts20: TTabSheet
            Caption = 'By Date'
            ImageIndex = 1
            object dbgrdTransactions2: TDBGrid
              Left = 0
              Top = 0
              Width = 208
              Height = 500
              Align = alClient
              BorderStyle = bsNone
              DataSource = DM.ds_qry_Penjualan
              ReadOnly = True
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              OnTitleClick = dbgrdTransactions2TitleClick
              Columns = <
                item
                  Expanded = False
                  Title.Alignment = taCenter
                  Width = 188
                  Visible = True
                end>
            end
          end
        end
      end
    end
    object tsCustomers: TTabSheet
      Caption = 'Customers'
      ImageIndex = 1
      object pnlCustomers: TPanel
        Left = 0
        Top = 0
        Width = 812
        Height = 555
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object spl1: TSplitter
          Left = 201
          Top = 0
          Height = 555
          Color = clBtnFace
          ParentColor = False
        end
        object pgcSearchCustomers: TPageControl
          Left = 0
          Top = 0
          Width = 201
          Height = 555
          ActivePage = ts10
          Align = alLeft
          Style = tsFlatButtons
          TabOrder = 0
          object ts10: TTabSheet
            Caption = 'Entry'
            object scrlbx1: TScrollBox
              Left = 0
              Top = 0
              Width = 193
              Height = 524
              Align = alClient
              BorderStyle = bsNone
              Color = clBtnFace
              ParentColor = False
              TabOrder = 0
              DesignSize = (
                193
                524)
              object lbl3: TLabel
                Left = 8
                Top = 8
                Width = 24
                Height = 13
                Caption = 'Kode'
                FocusControl = dbedtKode
              end
              object lbl4: TLabel
                Left = 8
                Top = 48
                Width = 64
                Height = 13
                Caption = 'Nama_Depan'
                FocusControl = dbedtNama_Depan
              end
              object lbl5: TLabel
                Left = 8
                Top = 88
                Width = 76
                Height = 13
                Caption = 'Nama_Belakang'
                FocusControl = dbedtNama_Belakang
              end
              object lbl6: TLabel
                Left = 8
                Top = 128
                Width = 36
                Height = 13
                Caption = 'Kelamin'
              end
              object lbl7: TLabel
                Left = 8
                Top = 168
                Width = 33
                Height = 13
                Caption = 'Alamat'
                FocusControl = dbedtAlamat
              end
              object lbl8: TLabel
                Left = 8
                Top = 208
                Width = 20
                Height = 13
                Caption = 'Telp'
                FocusControl = dbedtTelp
              end
              object lbl9: TLabel
                Left = 8
                Top = 248
                Width = 24
                Height = 13
                Caption = 'Email'
                FocusControl = dbedtEmail
              end
              object dbedtKode: TDBEdit
                Left = 8
                Top = 24
                Width = 154
                Height = 21
                Anchors = [akLeft, akTop, akRight]
                DataField = 'Kode'
                DataSource = DM.ds_tbl_Pelanggan
                TabOrder = 0
              end
              object dbedtNama_Depan: TDBEdit
                Left = 8
                Top = 64
                Width = 154
                Height = 21
                Anchors = [akLeft, akTop, akRight]
                DataField = 'Nama_Depan'
                DataSource = DM.ds_tbl_Pelanggan
                TabOrder = 1
              end
              object dbedtNama_Belakang: TDBEdit
                Left = 8
                Top = 104
                Width = 154
                Height = 21
                Anchors = [akLeft, akTop, akRight]
                DataField = 'Nama_Belakang'
                DataSource = DM.ds_tbl_Pelanggan
                TabOrder = 2
              end
              object dbedtAlamat: TDBEdit
                Left = 8
                Top = 184
                Width = 154
                Height = 21
                Anchors = [akLeft, akTop, akRight]
                DataField = 'Alamat'
                DataSource = DM.ds_tbl_Pelanggan
                TabOrder = 4
              end
              object dbedtTelp: TDBEdit
                Left = 8
                Top = 224
                Width = 154
                Height = 21
                Anchors = [akLeft, akTop, akRight]
                DataField = 'Telp'
                DataSource = DM.ds_tbl_Pelanggan
                TabOrder = 5
              end
              object dbedtEmail: TDBEdit
                Left = 8
                Top = 264
                Width = 154
                Height = 21
                Anchors = [akLeft, akTop, akRight]
                DataField = 'Email'
                DataSource = DM.ds_tbl_Pelanggan
                TabOrder = 6
              end
              object dbcbbKelamin: TDBComboBox
                Left = 8
                Top = 144
                Width = 154
                Height = 21
                Anchors = [akLeft, akTop, akRight]
                DataField = 'Kelamin'
                DataSource = DM.ds_tbl_Pelanggan
                ItemHeight = 13
                Items.Strings = (
                  'Pilih'
                  'Laki-laki'
                  'Perempuan')
                TabOrder = 3
              end
            end
          end
          object ts11: TTabSheet
            Caption = 'Search'
            ImageIndex = 1
            object grp1: TGroupBox
              Left = 0
              Top = 0
              Width = 193
              Height = 113
              Align = alTop
              Caption = ' Creteria '
              Color = clBtnFace
              ParentColor = False
              TabOrder = 0
              DesignSize = (
                193
                113)
              object btn4: TSpeedButton
                Left = 8
                Top = 83
                Width = 177
                Height = 22
                Anchors = [akLeft, akTop, akRight]
                Caption = 'Search...'
                Flat = True
              end
              object cbb_CariPelanggan: TComboBox
                Left = 8
                Top = 35
                Width = 177
                Height = 21
                Anchors = [akLeft, akTop, akRight]
                ItemHeight = 13
                TabOrder = 1
                Text = 'cbb_CariPelanggan'
              end
              object edt_CariPelanggan: TEdit
                Left = 8
                Top = 59
                Width = 177
                Height = 21
                Anchors = [akLeft, akTop, akRight]
                TabOrder = 2
                Text = 'edt_CariPelanggan'
              end
              object chk1: TCheckBox
                Left = 8
                Top = 16
                Width = 65
                Height = 17
                Caption = 'Enable'
                TabOrder = 0
              end
            end
          end
        end
        object pnlGridCustomers: TPanel
          Left = 204
          Top = 0
          Width = 608
          Height = 555
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          object pnl4: TPanel
            Left = 0
            Top = 0
            Width = 818
            Height = 41
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object dbnvgrCustomers: TDBNavigator
              Left = 5
              Top = 4
              Width = 185
              Height = 33
              DataSource = DM.ds_tbl_Pelanggan
              VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
              Flat = True
              TabOrder = 0
            end
          end
          object dbgrdCustomers: TDBGrid
            Left = 0
            Top = 41
            Width = 818
            Height = 514
            Align = alClient
            BorderStyle = bsNone
            DataSource = DM.ds_tbl_Pelanggan
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnTitleClick = dbgrdCustomersTitleClick
          end
        end
      end
    end
    object tsProducts: TTabSheet
      Caption = 'Products'
      ImageIndex = 2
      object pgcProducts: TPageControl
        Left = 0
        Top = 0
        Width = 812
        Height = 555
        ActivePage = ts13
        Align = alClient
        Style = tsFlatButtons
        TabOrder = 0
        object ts1: TTabSheet
          Caption = 'Products'
          object pnl_Barang: TPanel
            Left = 0
            Top = 0
            Width = 804
            Height = 524
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object pgcSearch_Barang: TPageControl
              Left = 0
              Top = 0
              Width = 804
              Height = 524
              ActivePage = ts_Entry_Barang
              Align = alClient
              Style = tsFlatButtons
              TabOrder = 0
              OnChange = pgcSearch_BarangChange
              object ts_Entry_Barang: TTabSheet
                Caption = 'Entry'
                object spl2: TSplitter
                  Left = 225
                  Top = 27
                  Height = 466
                end
                object pnl_Grid_Baru: TPanel
                  Left = 228
                  Top = 27
                  Width = 568
                  Height = 466
                  Align = alClient
                  BevelOuter = bvNone
                  TabOrder = 2
                  object dbgrd_Barang: TDBGrid
                    Left = 0
                    Top = 0
                    Width = 778
                    Height = 447
                    Align = alClient
                    BorderStyle = bsNone
                    DataSource = DM.ds_tbl_Barang
                    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
                    TabOrder = 0
                    TitleFont.Charset = DEFAULT_CHARSET
                    TitleFont.Color = clWindowText
                    TitleFont.Height = -11
                    TitleFont.Name = 'Tahoma'
                    TitleFont.Style = []
                    OnTitleClick = dbgrd_BarangTitleClick
                  end
                  object stat_Barang: TStatusBar
                    Left = 0
                    Top = 447
                    Width = 778
                    Height = 19
                    Panels = <
                      item
                        Alignment = taRightJustify
                        Text = 'Jumlah Data:  '
                        Width = 90
                      end
                      item
                        Alignment = taCenter
                        Text = '0123456789'
                        Width = 70
                      end
                      item
                        Width = 50
                      end>
                  end
                end
                object pnl1: TPanel
                  Left = 0
                  Top = 0
                  Width = 796
                  Height = 27
                  Align = alTop
                  BevelOuter = bvNone
                  TabOrder = 0
                  object btn_B_Baru: TSpeedButton
                    Left = 0
                    Top = 0
                    Width = 49
                    Height = 27
                    Caption = 'Baru'
                    Flat = True
                    OnClick = btn_B_BaruClick
                  end
                  object btn_B_Hapus: TSpeedButton
                    Left = 50
                    Top = 0
                    Width = 49
                    Height = 27
                    Caption = 'Hapus'
                    Flat = True
                    OnClick = btn_B_HapusClick
                  end
                  object btn_B_Batal: TSpeedButton
                    Left = 148
                    Top = 0
                    Width = 49
                    Height = 27
                    Caption = 'Batal'
                    Enabled = False
                    Flat = True
                    OnClick = btn_B_BatalClick
                  end
                  object btn_B_Simpan: TSpeedButton
                    Left = 197
                    Top = 0
                    Width = 49
                    Height = 27
                    Caption = 'Simpan'
                    Enabled = False
                    Flat = True
                    OnClick = btn_B_SimpanClick
                  end
                  object btn_B_Edit: TSpeedButton
                    Left = 99
                    Top = 0
                    Width = 49
                    Height = 27
                    Caption = 'Edit'
                    Flat = True
                    OnClick = btn_B_EditClick
                  end
                  object btn_B_Import: TSpeedButton
                    Left = 264
                    Top = 2
                    Width = 65
                    Height = 25
                    Caption = 'Import'
                    OnClick = btn_B_ImportClick
                  end
                  object pb1: TProgressBar
                    Left = 336
                    Top = 8
                    Width = 201
                    Height = 16
                    TabOrder = 0
                    Visible = False
                  end
                end
                object pgc_Barang_Baru: TPageControl
                  Left = 0
                  Top = 27
                  Width = 225
                  Height = 466
                  ActivePage = ts_Barang_Edit
                  Align = alLeft
                  Style = tsFlatButtons
                  TabOrder = 1
                  object ts_Barang_Baru: TTabSheet
                    Caption = 'Baru'
                    TabVisible = False
                    object scrlbx_Barang_Baru: TScrollBox
                      Left = 0
                      Top = 0
                      Width = 217
                      Height = 456
                      Align = alClient
                      BevelInner = bvSpace
                      BevelOuter = bvNone
                      BorderStyle = bsNone
                      Color = clBtnFace
                      ParentColor = False
                      TabOrder = 0
                      DesignSize = (
                        217
                        456)
                      object lbl_B1: TLabel
                        Left = 8
                        Top = 8
                        Width = 39
                        Height = 13
                        Caption = 'Barcode'
                        FocusControl = dbedtBarcode
                      end
                      object lbl_B2: TLabel
                        Left = 8
                        Top = 32
                        Width = 67
                        Height = 13
                        Caption = 'Nama_Barang'
                        FocusControl = dbedtNama_Barang
                      end
                      object lbl_B3: TLabel
                        Left = 8
                        Top = 56
                        Width = 53
                        Height = 13
                        Caption = 'Merk_Type'
                        FocusControl = dbedtMerk_Type
                      end
                      object lbl_B4: TLabel
                        Left = 8
                        Top = 80
                        Width = 34
                        Height = 13
                        Caption = 'Satuan'
                        FocusControl = dbedtSatuan
                      end
                      object lbl_B5: TLabel
                        Left = 8
                        Top = 104
                        Width = 26
                        Height = 13
                        Caption = 'Biaya'
                        FocusControl = dbedtBiaya
                      end
                      object lbl_B6: TLabel
                        Left = 8
                        Top = 128
                        Width = 29
                        Height = 13
                        Caption = 'Harga'
                        FocusControl = dbedtHarga
                      end
                      object lbl_B7: TLabel
                        Left = 8
                        Top = 152
                        Width = 60
                        Height = 13
                        Caption = 'Jumlah_Stok'
                        FocusControl = dbedtJumlah_Stok
                      end
                      object lbl_B8: TLabel
                        Left = 8
                        Top = 176
                        Width = 31
                        Height = 13
                        Caption = 'Diskon'
                        FocusControl = dbedtDiskon
                      end
                      object lbl_B9: TLabel
                        Left = 8
                        Top = 200
                        Width = 26
                        Height = 13
                        Caption = 'Pajak'
                        FocusControl = dbedtPajak
                      end
                      object lbl_B10: TLabel
                        Left = 8
                        Top = 224
                        Width = 40
                        Height = 13
                        Caption = 'Kategori'
                        FocusControl = dbedtKategori
                      end
                      object lbl_B11: TLabel
                        Left = 8
                        Top = 248
                        Width = 56
                        Height = 13
                        Caption = 'Keterangan'
                        FocusControl = dbedtKeterangan
                      end
                      object lbl_B12: TLabel
                        Left = 8
                        Top = 272
                        Width = 42
                        Height = 13
                        Caption = 'Suplayer'
                        FocusControl = dblkcbbSuplayer
                      end
                      object dbedtBarcode: TDBEdit
                        Left = 80
                        Top = 8
                        Width = 121
                        Height = 21
                        Anchors = [akLeft, akTop, akRight]
                        DataField = 'Barcode'
                        DataSource = DM.ds_Temp_Barang
                        TabOrder = 0
                        OnKeyPress = dbedtBarcodeKeyPress
                      end
                      object dbedtNama_Barang: TDBEdit
                        Left = 80
                        Top = 32
                        Width = 121
                        Height = 21
                        Anchors = [akLeft, akTop, akRight]
                        DataField = 'Nama_Barang'
                        DataSource = DM.ds_Temp_Barang
                        TabOrder = 1
                        OnKeyPress = dbedtNama_BarangKeyPress
                      end
                      object dbedtMerk_Type: TDBEdit
                        Left = 80
                        Top = 56
                        Width = 121
                        Height = 21
                        Anchors = [akLeft, akTop, akRight]
                        DataField = 'Merk_Type'
                        DataSource = DM.ds_Temp_Barang
                        TabOrder = 2
                        OnKeyPress = dbedtMerk_TypeKeyPress
                      end
                      object dbedtSatuan: TDBEdit
                        Left = 80
                        Top = 80
                        Width = 121
                        Height = 21
                        Anchors = [akLeft, akTop, akRight]
                        DataField = 'Satuan'
                        DataSource = DM.ds_Temp_Barang
                        TabOrder = 3
                        OnKeyPress = dbedtSatuanKeyPress
                      end
                      object dbedtBiaya: TDBEdit
                        Left = 80
                        Top = 104
                        Width = 121
                        Height = 21
                        Anchors = [akLeft, akTop, akRight]
                        DataField = 'Biaya'
                        DataSource = DM.ds_Temp_Barang
                        TabOrder = 4
                        OnKeyPress = dbedtBiayaKeyPress
                      end
                      object dbedtHarga: TDBEdit
                        Left = 80
                        Top = 128
                        Width = 121
                        Height = 21
                        Anchors = [akLeft, akTop, akRight]
                        DataField = 'Harga'
                        DataSource = DM.ds_Temp_Barang
                        TabOrder = 5
                        OnKeyPress = dbedtHargaKeyPress
                      end
                      object dbedtJumlah_Stok: TDBEdit
                        Left = 80
                        Top = 152
                        Width = 121
                        Height = 21
                        Anchors = [akLeft, akTop, akRight]
                        DataField = 'Jumlah_Stok'
                        DataSource = DM.ds_Temp_Barang
                        TabOrder = 6
                        OnKeyPress = dbedtJumlah_StokKeyPress
                      end
                      object dbedtDiskon: TDBEdit
                        Left = 80
                        Top = 176
                        Width = 121
                        Height = 21
                        Anchors = [akLeft, akTop, akRight]
                        DataField = 'Diskon'
                        DataSource = DM.ds_Temp_Barang
                        TabOrder = 7
                        OnKeyPress = dbedtDiskonKeyPress
                      end
                      object dbedtPajak: TDBEdit
                        Left = 80
                        Top = 200
                        Width = 121
                        Height = 21
                        Anchors = [akLeft, akTop, akRight]
                        DataField = 'Pajak'
                        DataSource = DM.ds_Temp_Barang
                        TabOrder = 8
                        OnKeyPress = dbedtPajakKeyPress
                      end
                      object dbedtKategori: TDBEdit
                        Left = 80
                        Top = 224
                        Width = 121
                        Height = 21
                        Anchors = [akLeft, akTop, akRight]
                        DataField = 'Kategori'
                        DataSource = DM.ds_Temp_Barang
                        TabOrder = 9
                        OnKeyPress = dbedtKategoriKeyPress
                      end
                      object dbedtKeterangan: TDBEdit
                        Left = 80
                        Top = 248
                        Width = 121
                        Height = 21
                        Anchors = [akLeft, akTop, akRight]
                        DataField = 'Keterangan'
                        DataSource = DM.ds_Temp_Barang
                        TabOrder = 10
                        OnKeyPress = dbedtKeteranganKeyPress
                      end
                      object dblkcbbSuplayer: TDBLookupComboBox
                        Left = 80
                        Top = 272
                        Width = 121
                        Height = 21
                        Anchors = [akLeft, akTop, akRight]
                        DataField = 'Suplayer'
                        DataSource = DM.ds_Temp_Barang
                        TabOrder = 11
                        OnKeyPress = dblkcbbSuplayerKeyPress
                      end
                    end
                  end
                  object ts_Barang_Edit: TTabSheet
                    Caption = 'Edit'
                    ImageIndex = 1
                    TabVisible = False
                    object scrlbx_Barang_Edit: TScrollBox
                      Left = 0
                      Top = 0
                      Width = 217
                      Height = 456
                      Align = alClient
                      BevelInner = bvSpace
                      BevelOuter = bvNone
                      BorderStyle = bsNone
                      Color = clBtnFace
                      ParentColor = False
                      TabOrder = 0
                      DesignSize = (
                        217
                        456)
                      object lbl_E1: TLabel
                        Left = 8
                        Top = 8
                        Width = 39
                        Height = 13
                        Caption = 'Barcode'
                        FocusControl = dbedtBarcode2
                      end
                      object lbl_E2: TLabel
                        Left = 8
                        Top = 32
                        Width = 67
                        Height = 13
                        Caption = 'Nama_Barang'
                        FocusControl = dbedtNama_Barang2
                      end
                      object lbl_E3: TLabel
                        Left = 8
                        Top = 56
                        Width = 53
                        Height = 13
                        Caption = 'Merk_Type'
                        FocusControl = dbedtMerk_Type2
                      end
                      object lbl_E4: TLabel
                        Left = 8
                        Top = 80
                        Width = 34
                        Height = 13
                        Caption = 'Satuan'
                        FocusControl = dbedtSatuan2
                      end
                      object lbl_E5: TLabel
                        Left = 8
                        Top = 104
                        Width = 26
                        Height = 13
                        Caption = 'Biaya'
                        FocusControl = dbedtBiaya2
                      end
                      object lbl_E6: TLabel
                        Left = 8
                        Top = 128
                        Width = 29
                        Height = 13
                        Caption = 'Harga'
                        FocusControl = dbedtHarga2
                      end
                      object lbl_E7: TLabel
                        Left = 8
                        Top = 152
                        Width = 60
                        Height = 13
                        Caption = 'Jumlah_Stok'
                        FocusControl = dbedtJumlah_Stok2
                      end
                      object lbl_E8: TLabel
                        Left = 8
                        Top = 176
                        Width = 31
                        Height = 13
                        Caption = 'Diskon'
                        FocusControl = dbedtDiskon2
                      end
                      object lbl_E9: TLabel
                        Left = 8
                        Top = 200
                        Width = 26
                        Height = 13
                        Caption = 'Pajak'
                        FocusControl = dbedtPajak2
                      end
                      object lbl_E10: TLabel
                        Left = 8
                        Top = 224
                        Width = 40
                        Height = 13
                        Caption = 'Kategori'
                        FocusControl = dbedtKategori2
                      end
                      object lbl_E11: TLabel
                        Left = 8
                        Top = 248
                        Width = 56
                        Height = 13
                        Caption = 'Keterangan'
                        FocusControl = dbedtKeterangan2
                      end
                      object lbl_E12: TLabel
                        Left = 8
                        Top = 272
                        Width = 42
                        Height = 13
                        Caption = 'Suplayer'
                        FocusControl = dblkcbbSuplayer2
                      end
                      object dbedtBarcode2: TDBEdit
                        Left = 80
                        Top = 8
                        Width = 121
                        Height = 21
                        Anchors = [akLeft, akTop, akRight]
                        DataField = 'Barcode'
                        DataSource = DM.ds_tbl_Barang
                        ReadOnly = True
                        TabOrder = 0
                      end
                      object dbedtNama_Barang2: TDBEdit
                        Left = 80
                        Top = 32
                        Width = 121
                        Height = 21
                        Anchors = [akLeft, akTop, akRight]
                        DataField = 'Nama_Barang'
                        DataSource = DM.ds_tbl_Barang
                        ReadOnly = True
                        TabOrder = 1
                      end
                      object dbedtMerk_Type2: TDBEdit
                        Left = 80
                        Top = 56
                        Width = 121
                        Height = 21
                        Anchors = [akLeft, akTop, akRight]
                        DataField = 'Merk_Type'
                        DataSource = DM.ds_tbl_Barang
                        ReadOnly = True
                        TabOrder = 2
                      end
                      object dbedtSatuan2: TDBEdit
                        Left = 80
                        Top = 80
                        Width = 121
                        Height = 21
                        Anchors = [akLeft, akTop, akRight]
                        DataField = 'Satuan'
                        DataSource = DM.ds_tbl_Barang
                        ReadOnly = True
                        TabOrder = 3
                      end
                      object dbedtBiaya2: TDBEdit
                        Left = 80
                        Top = 104
                        Width = 121
                        Height = 21
                        Anchors = [akLeft, akTop, akRight]
                        DataField = 'Biaya'
                        DataSource = DM.ds_tbl_Barang
                        ReadOnly = True
                        TabOrder = 4
                      end
                      object dbedtHarga2: TDBEdit
                        Left = 80
                        Top = 128
                        Width = 121
                        Height = 21
                        Anchors = [akLeft, akTop, akRight]
                        DataField = 'Harga'
                        DataSource = DM.ds_tbl_Barang
                        ReadOnly = True
                        TabOrder = 5
                      end
                      object dbedtJumlah_Stok2: TDBEdit
                        Left = 80
                        Top = 152
                        Width = 121
                        Height = 21
                        Anchors = [akLeft, akTop, akRight]
                        DataField = 'Jumlah_Stok'
                        DataSource = DM.ds_tbl_Barang
                        ReadOnly = True
                        TabOrder = 6
                      end
                      object dbedtDiskon2: TDBEdit
                        Left = 80
                        Top = 176
                        Width = 121
                        Height = 21
                        Anchors = [akLeft, akTop, akRight]
                        DataField = 'Diskon'
                        DataSource = DM.ds_tbl_Barang
                        ReadOnly = True
                        TabOrder = 7
                      end
                      object dbedtPajak2: TDBEdit
                        Left = 80
                        Top = 200
                        Width = 121
                        Height = 21
                        Anchors = [akLeft, akTop, akRight]
                        DataField = 'Pajak'
                        DataSource = DM.ds_tbl_Barang
                        ReadOnly = True
                        TabOrder = 8
                      end
                      object dbedtKategori2: TDBEdit
                        Left = 80
                        Top = 224
                        Width = 121
                        Height = 21
                        Anchors = [akLeft, akTop, akRight]
                        DataField = 'Kategori'
                        DataSource = DM.ds_tbl_Barang
                        ReadOnly = True
                        TabOrder = 9
                      end
                      object dbedtKeterangan2: TDBEdit
                        Left = 80
                        Top = 248
                        Width = 121
                        Height = 21
                        Anchors = [akLeft, akTop, akRight]
                        DataField = 'Keterangan'
                        DataSource = DM.ds_tbl_Barang
                        ReadOnly = True
                        TabOrder = 10
                      end
                      object dblkcbbSuplayer2: TDBLookupComboBox
                        Left = 80
                        Top = 272
                        Width = 121
                        Height = 21
                        Anchors = [akLeft, akTop, akRight]
                        DataField = 'Suplayer'
                        DataSource = DM.ds_tbl_Barang
                        ReadOnly = True
                        TabOrder = 11
                      end
                    end
                  end
                end
              end
              object ts_Search_Barang: TTabSheet
                Caption = 'Search'
                ImageIndex = 1
                object spl7: TSplitter
                  Left = 217
                  Top = 0
                  Height = 493
                end
                object pnl_Products_Search: TPanel
                  Left = 0
                  Top = 0
                  Width = 217
                  Height = 493
                  Align = alLeft
                  BevelOuter = bvNone
                  TabOrder = 0
                  object pnl_K22: TPanel
                    Left = 0
                    Top = 64
                    Width = 217
                    Height = 57
                    Align = alTop
                    BevelOuter = bvNone
                    TabOrder = 1
                    Visible = False
                    object edt_K2: TEdit
                      Left = 116
                      Top = 27
                      Width = 89
                      Height = 21
                      TabOrder = 3
                      OnKeyPress = edt_K2KeyPress
                    end
                    object rb_DanP: TRadioButton
                      Left = 12
                      Top = 3
                      Width = 49
                      Height = 17
                      Caption = 'Dan'
                      Checked = True
                      TabOrder = 0
                      TabStop = True
                    end
                    object rb_AtauP: TRadioButton
                      Left = 60
                      Top = 3
                      Width = 49
                      Height = 17
                      Caption = 'Atau'
                      TabOrder = 1
                    end
                    object cbb_Cari2: TComboBox
                      Left = 7
                      Top = 27
                      Width = 105
                      Height = 21
                      Style = csDropDownList
                      ItemHeight = 13
                      ItemIndex = 1
                      TabOrder = 2
                      Text = 'Nama Barang'
                      Items.Strings = (
                        'Barcode'
                        'Nama Barang')
                    end
                  end
                  object pnl_K1: TPanel
                    Left = 0
                    Top = 0
                    Width = 217
                    Height = 64
                    Align = alTop
                    BevelOuter = bvNone
                    TabOrder = 0
                    object btn_Cari_Barang: TSpeedButton
                      Left = 116
                      Top = 8
                      Width = 89
                      Height = 22
                      Caption = 'Search...'
                      Flat = True
                      OnClick = btn_Cari_BarangClick
                    end
                    object chk_Simple_Search: TCheckBox
                      Left = 8
                      Top = 8
                      Width = 72
                      Height = 17
                      Alignment = taLeftJustify
                      Caption = 'Simple'
                      Checked = True
                      State = cbChecked
                      TabOrder = 0
                      OnClick = chk_Simple_SearchClick
                    end
                    object cbb_Cari1: TComboBox
                      Left = 7
                      Top = 32
                      Width = 105
                      Height = 21
                      Style = csDropDownList
                      ItemHeight = 13
                      ItemIndex = 0
                      TabOrder = 1
                      Text = 'Barcode'
                      Items.Strings = (
                        'Barcode'
                        'Nama Barang')
                    end
                    object edt_K1: TEdit
                      Left = 116
                      Top = 32
                      Width = 89
                      Height = 21
                      TabOrder = 2
                      OnKeyPress = edt_K1KeyPress
                    end
                  end
                end
                object pnl2: TPanel
                  Left = 220
                  Top = 0
                  Width = 576
                  Height = 493
                  Align = alClient
                  BevelOuter = bvNone
                  TabOrder = 1
                  object dbgrd1: TDBGrid
                    Left = 0
                    Top = 0
                    Width = 870
                    Height = 495
                    Align = alClient
                    BorderStyle = bsNone
                    DataSource = DM.ds_CariBarang
                    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
                    TabOrder = 0
                    TitleFont.Charset = DEFAULT_CHARSET
                    TitleFont.Color = clWindowText
                    TitleFont.Height = -11
                    TitleFont.Name = 'Tahoma'
                    TitleFont.Style = []
                    OnTitleClick = dbgrd_BarangTitleClick
                  end
                  object stat_Barang2: TStatusBar
                    Left = 0
                    Top = 495
                    Width = 870
                    Height = 19
                    Panels = <
                      item
                        Alignment = taRightJustify
                        Text = 'Jumlah Data:  '
                        Width = 90
                      end
                      item
                        Alignment = taCenter
                        Text = '0123456789'
                        Width = 70
                      end
                      item
                        Width = 50
                      end>
                  end
                end
              end
            end
          end
        end
        object ts2: TTabSheet
          Caption = 'Stock Transactions '
          ImageIndex = 1
          TabVisible = False
        end
        object ts3: TTabSheet
          Caption = 'Suppliers'
          ImageIndex = 2
          object pnlSuppliers: TPanel
            Left = 0
            Top = 0
            Width = 804
            Height = 524
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object spl3: TSplitter
              Left = 233
              Top = 0
              Height = 524
            end
            object pgc_Suppliers: TPageControl
              Left = 0
              Top = 0
              Width = 233
              Height = 524
              ActivePage = ts15
              Align = alLeft
              Style = tsFlatButtons
              TabOrder = 0
              object ts15: TTabSheet
                Caption = 'Entry'
                object scrlbx3: TScrollBox
                  Left = 0
                  Top = 0
                  Width = 225
                  Height = 493
                  Align = alClient
                  BevelInner = bvSpace
                  BevelOuter = bvNone
                  BorderStyle = bsNone
                  Color = clBtnFace
                  ParentColor = False
                  TabOrder = 0
                  DesignSize = (
                    225
                    493)
                  object lbl14: TLabel
                    Left = 16
                    Top = 8
                    Width = 90
                    Height = 13
                    Caption = 'Nama_Perusahaan'
                    FocusControl = dbedtNama_Perusahaan
                  end
                  object lbl15: TLabel
                    Left = 16
                    Top = 48
                    Width = 65
                    Height = 13
                    Caption = 'Nama_Agensi'
                    FocusControl = dbedtNama_Agensi
                  end
                  object lbl16: TLabel
                    Left = 16
                    Top = 88
                    Width = 92
                    Height = 13
                    Caption = 'No_Rekening_Bank'
                    FocusControl = dbedtNo_Rekening_Bank
                  end
                  object lbl17: TLabel
                    Left = 16
                    Top = 128
                    Width = 33
                    Height = 13
                    Caption = 'Alamat'
                    FocusControl = dbedtAlamat1
                  end
                  object lbl18: TLabel
                    Left = 16
                    Top = 168
                    Width = 22
                    Height = 13
                    Caption = 'Kota'
                    FocusControl = dbedtKota
                  end
                  object lbl19: TLabel
                    Left = 16
                    Top = 208
                    Width = 37
                    Height = 13
                    Caption = 'Provinsi'
                    FocusControl = dbedtProvinsi
                  end
                  object lbl20: TLabel
                    Left = 16
                    Top = 248
                    Width = 20
                    Height = 13
                    Caption = 'Telp'
                    FocusControl = dbedtTelp1
                  end
                  object lbl21: TLabel
                    Left = 16
                    Top = 288
                    Width = 24
                    Height = 13
                    Caption = 'Email'
                    FocusControl = dbedtEmail1
                  end
                  object lbl22: TLabel
                    Left = 16
                    Top = 328
                    Width = 56
                    Height = 13
                    Caption = 'Keterangan'
                    FocusControl = dbedtKeterangan1
                  end
                  object dbedtNama_Perusahaan: TDBEdit
                    Left = 16
                    Top = 24
                    Width = 196
                    Height = 21
                    Anchors = [akLeft, akTop, akRight]
                    DataField = 'Nama_Perusahaan'
                    DataSource = DM.ds_Suplayer
                    TabOrder = 0
                  end
                  object dbedtNama_Agensi: TDBEdit
                    Left = 16
                    Top = 64
                    Width = 196
                    Height = 21
                    Anchors = [akLeft, akTop, akRight]
                    DataField = 'Nama_Agensi'
                    DataSource = DM.ds_Suplayer
                    TabOrder = 1
                  end
                  object dbedtNo_Rekening_Bank: TDBEdit
                    Left = 16
                    Top = 104
                    Width = 196
                    Height = 21
                    Anchors = [akLeft, akTop, akRight]
                    DataField = 'No_Rekening_Bank'
                    DataSource = DM.ds_Suplayer
                    TabOrder = 2
                  end
                  object dbedtAlamat1: TDBEdit
                    Left = 16
                    Top = 144
                    Width = 196
                    Height = 21
                    Anchors = [akLeft, akTop, akRight]
                    DataField = 'Alamat'
                    DataSource = DM.ds_Suplayer
                    TabOrder = 3
                  end
                  object dbedtKota: TDBEdit
                    Left = 16
                    Top = 184
                    Width = 196
                    Height = 21
                    Anchors = [akLeft, akTop, akRight]
                    DataField = 'Kota'
                    DataSource = DM.ds_Suplayer
                    TabOrder = 4
                  end
                  object dbedtProvinsi: TDBEdit
                    Left = 16
                    Top = 224
                    Width = 196
                    Height = 21
                    Anchors = [akLeft, akTop, akRight]
                    DataField = 'Provinsi'
                    DataSource = DM.ds_Suplayer
                    TabOrder = 5
                  end
                  object dbedtTelp1: TDBEdit
                    Left = 16
                    Top = 264
                    Width = 196
                    Height = 21
                    Anchors = [akLeft, akTop, akRight]
                    DataField = 'Telp'
                    DataSource = DM.ds_Suplayer
                    TabOrder = 6
                  end
                  object dbedtEmail1: TDBEdit
                    Left = 16
                    Top = 304
                    Width = 196
                    Height = 21
                    Anchors = [akLeft, akTop, akRight]
                    DataField = 'Email'
                    DataSource = DM.ds_Suplayer
                    TabOrder = 7
                  end
                  object dbedtKeterangan1: TDBEdit
                    Left = 16
                    Top = 344
                    Width = 196
                    Height = 21
                    Anchors = [akLeft, akTop, akRight]
                    DataField = 'Keterangan'
                    DataSource = DM.ds_Suplayer
                    TabOrder = 8
                  end
                end
              end
              object ts16: TTabSheet
                Caption = 'Search'
                ImageIndex = 1
                object pnl_Kriteria: TPanel
                  Left = 0
                  Top = 0
                  Width = 225
                  Height = 493
                  Align = alClient
                  BevelOuter = bvNone
                  TabOrder = 0
                  object pnl_K0: TPanel
                    Left = 0
                    Top = 0
                    Width = 225
                    Height = 89
                    Align = alTop
                    BevelOuter = bvNone
                    TabOrder = 0
                    DesignSize = (
                      225
                      89)
                    object btn_Cari_Suppliers: TSpeedButton
                      Left = 88
                      Top = 8
                      Width = 129
                      Height = 22
                      Anchors = [akLeft, akTop, akRight]
                      Caption = 'Search...'
                      Flat = True
                      OnClick = btn_Cari_SuppliersClick
                    end
                    object cbb_CariSup1: TComboBox
                      Left = 8
                      Top = 32
                      Width = 209
                      Height = 21
                      Style = csDropDownList
                      Anchors = [akLeft, akTop, akRight]
                      ItemHeight = 13
                      ItemIndex = 0
                      TabOrder = 0
                      Text = 'Barcode'
                      Items.Strings = (
                        'Barcode'
                        'Nama Barang')
                    end
                    object edt_CariSup1: TEdit
                      Left = 8
                      Top = 56
                      Width = 209
                      Height = 21
                      Anchors = [akLeft, akTop, akRight]
                      TabOrder = 1
                    end
                  end
                end
              end
            end
            object pnl10: TPanel
              Left = 236
              Top = 0
              Width = 568
              Height = 524
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 1
              object pnl11: TPanel
                Left = 0
                Top = 0
                Width = 778
                Height = 41
                Align = alTop
                BevelOuter = bvNone
                TabOrder = 0
                object dbnvgr2: TDBNavigator
                  Left = 5
                  Top = 4
                  Width = 156
                  Height = 33
                  DataSource = DM.ds_qry_Suplayer
                  VisibleButtons = [nbInsert, nbDelete, nbPost, nbCancel]
                  Flat = True
                  TabOrder = 0
                end
              end
              object dbgrd_Suppliers: TDBGrid
                Left = 0
                Top = 41
                Width = 778
                Height = 483
                Align = alClient
                DataSource = DM.ds_qry_Suplayer
                Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
                TabOrder = 1
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'Tahoma'
                TitleFont.Style = []
                OnTitleClick = dbgrd_SuppliersTitleClick
              end
            end
          end
        end
        object ts4: TTabSheet
          Caption = 'Expiration Date Control'
          ImageIndex = 3
          TabVisible = False
        end
        object ts5: TTabSheet
          Caption = 'Inventory'
          ImageIndex = 4
          TabVisible = False
        end
        object ts14: TTabSheet
          Caption = 'Import -Export'
          ImageIndex = 5
          TabVisible = False
          object pnl12: TPanel
            Left = 0
            Top = 0
            Width = 913
            Height = 417
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
          end
        end
        object ts13: TTabSheet
          Caption = 'Stock Opname'
          ImageIndex = 6
          object pnl5: TPanel
            Left = 0
            Top = 0
            Width = 804
            Height = 524
            Align = alClient
            BevelOuter = bvLowered
            TabOrder = 0
            object spl9: TSplitter
              Left = 241
              Top = 1
              Height = 522
            end
            object pnl23: TPanel
              Left = 1
              Top = 1
              Width = 240
              Height = 522
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 0
              DesignSize = (
                240
                522)
              object shp1: TShape
                Left = 3
                Top = 166
                Width = 233
                Height = 123
                Brush.Color = clBtnFace
                Pen.Color = clBlue
                Pen.Width = 2
              end
              object Label11: TLabel
                Left = 8
                Top = 80
                Width = 38
                Height = 13
                Caption = 'Tanggal'
                FocusControl = DBEdit10
              end
              object Label12: TLabel
                Left = 8
                Top = 120
                Width = 48
                Height = 13
                Caption = 'Karyawan'
                FocusControl = DBLookupComboBox1
              end
              object Label13: TLabel
                Left = 8
                Top = 168
                Width = 39
                Height = 13
                Caption = 'Barcode'
                FocusControl = DBLookupComboBox2
              end
              object Label14: TLabel
                Left = 8
                Top = 208
                Width = 67
                Height = 13
                Caption = 'Nama_Barang'
                FocusControl = DBLookupComboBox3
              end
              object Label15: TLabel
                Left = 8
                Top = 248
                Width = 67
                Height = 13
                Caption = 'Stock_Aplikasi'
                FocusControl = DBLookupComboBox4
              end
              object Label16: TLabel
                Left = 8
                Top = 296
                Width = 69
                Height = 13
                Caption = 'Stock_Gudang'
                FocusControl = DBEdit11
              end
              object Label17: TLabel
                Left = 8
                Top = 336
                Width = 29
                Height = 13
                Caption = 'Selisih'
                FocusControl = DBEdit12
              end
              object Label18: TLabel
                Left = 8
                Top = 376
                Width = 56
                Height = 13
                Caption = 'Keterangan'
                FocusControl = DBEdit13
              end
              object dtp1: TDateTimePicker
                Left = 8
                Top = 96
                Width = 225
                Height = 21
                Anchors = [akLeft, akTop, akRight]
                Date = 43360.479688067130000000
                Time = 43360.479688067130000000
                TabOrder = 4
              end
              object pnl24: TPanel
                Left = 0
                Top = 0
                Width = 240
                Height = 33
                Align = alTop
                TabOrder = 0
              end
              object dbnvgr1: TDBNavigator
                Left = 0
                Top = 33
                Width = 240
                Height = 31
                DataSource = DM.ds_tbl_Stock_Opname
                VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
                Align = alTop
                TabOrder = 1
              end
              object DBEdit10: TDBEdit
                Left = 8
                Top = 96
                Width = 208
                Height = 21
                Anchors = [akLeft, akTop, akRight]
                DataField = 'Tanggal'
                DataSource = DM.ds_tbl_Stock_Opname
                TabOrder = 3
              end
              object DBLookupComboBox1: TDBLookupComboBox
                Left = 8
                Top = 136
                Width = 224
                Height = 21
                Anchors = [akLeft, akTop, akRight]
                DataField = 'Karyawan'
                DataSource = DM.ds_tbl_Stock_Opname
                TabOrder = 5
              end
              object DBLookupComboBox2: TDBLookupComboBox
                Left = 8
                Top = 184
                Width = 224
                Height = 21
                Anchors = [akLeft, akTop, akRight]
                DataField = 'Barcode'
                DataSource = DM.ds_tbl_Stock_Opname
                TabOrder = 6
              end
              object DBLookupComboBox3: TDBLookupComboBox
                Left = 8
                Top = 224
                Width = 224
                Height = 21
                Anchors = [akLeft, akTop, akRight]
                DataField = 'Nama_Barang'
                DataSource = DM.ds_tbl_Stock_Opname
                TabOrder = 7
              end
              object DBLookupComboBox4: TDBLookupComboBox
                Left = 8
                Top = 264
                Width = 224
                Height = 21
                DataField = 'Stock_Aplikasi'
                DataSource = DM.ds_tbl_Stock_Opname
                TabOrder = 8
              end
              object DBEdit11: TDBEdit
                Left = 8
                Top = 312
                Width = 224
                Height = 21
                Anchors = [akLeft, akTop, akRight]
                DataField = 'Stock_Gudang'
                DataSource = DM.ds_tbl_Stock_Opname
                TabOrder = 9
                OnChange = DBEdit11Change
                OnKeyPress = DBEdit11KeyPress
              end
              object DBEdit12: TDBEdit
                Left = 8
                Top = 352
                Width = 224
                Height = 21
                Anchors = [akLeft, akTop, akRight]
                DataField = 'Selisih'
                DataSource = DM.ds_tbl_Stock_Opname
                TabOrder = 10
              end
              object DBEdit13: TDBEdit
                Left = 8
                Top = 392
                Width = 224
                Height = 21
                Anchors = [akLeft, akTop, akRight]
                DataField = 'Keterangan'
                DataSource = DM.ds_tbl_Stock_Opname
                TabOrder = 11
              end
              object chk2: TCheckBox
                Left = 168
                Top = 80
                Width = 65
                Height = 17
                Alignment = taLeftJustify
                Anchors = [akTop, akRight]
                Caption = 'Sekarang'
                Checked = True
                State = cbChecked
                TabOrder = 2
                Visible = False
              end
            end
            object dbgrd3: TDBGrid
              Left = 244
              Top = 1
              Width = 559
              Height = 522
              Align = alClient
              DataSource = DM.ds_tbl_Stock_Opname
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
            end
          end
        end
      end
    end
    object tsRegister: TTabSheet
      Caption = 'Register'
      ImageIndex = 3
      object pnl6: TPanel
        Left = 0
        Top = 0
        Width = 812
        Height = 41
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
      end
      object pgcRegisters: TPageControl
        Left = 0
        Top = 41
        Width = 812
        Height = 514
        ActivePage = ts12
        Align = alClient
        Style = tsFlatButtons
        TabOrder = 1
        object ts6: TTabSheet
          Caption = 'Current Register'
          TabVisible = False
        end
        object ts7: TTabSheet
          Caption = 'Previouse Registers '
          ImageIndex = 1
          TabVisible = False
        end
        object ts8: TTabSheet
          Caption = 'Check Payment Method'
          ImageIndex = 2
          TabVisible = False
        end
        object ts9: TTabSheet
          Caption = 'Bank Note Counter'
          ImageIndex = 3
          TabVisible = False
        end
        object ts12: TTabSheet
          Caption = 'Configuration'
          ImageIndex = 4
          object scrlbx4: TScrollBox
            Left = 0
            Top = 0
            Width = 297
            Height = 483
            Align = alLeft
            Color = clBtnFace
            ParentColor = False
            TabOrder = 0
            object lbl10: TLabel
              Left = 8
              Top = 8
              Width = 56
              Height = 13
              Caption = 'Nama_Toko'
              FocusControl = dbedtNama_Toko1
            end
            object lbl11: TLabel
              Left = 8
              Top = 48
              Width = 33
              Height = 13
              Caption = 'Alamat'
              FocusControl = dbedtAlamat3
            end
            object lbl23: TLabel
              Left = 8
              Top = 88
              Width = 65
              Height = 13
              Caption = 'Kota_Provinsi'
              FocusControl = dbedtKota_Provinsi1
            end
            object lbl24: TLabel
              Left = 8
              Top = 128
              Width = 20
              Height = 13
              Caption = 'Telp'
              FocusControl = dbedtTelp3
            end
            object lbl25: TLabel
              Left = 8
              Top = 168
              Width = 23
              Height = 13
              Caption = 'Logo'
              FocusControl = dbedtLogo1
            end
            object btn_DB_PilihLogo: TSpeedButton
              Left = 8
              Top = 208
              Width = 73
              Height = 22
              Caption = 'Browse..'
              OnClick = btn_DB_PilihLogoClick
            end
            object img_Pilih: TImage
              Left = 8
              Top = 232
              Width = 73
              Height = 73
              Proportional = True
            end
            object btn7: TSpeedButton
              Left = 212
              Top = 208
              Width = 73
              Height = 22
              Caption = 'Update'
              OnClick = btn_UpdateClick
            end
            object dbedtNama_Toko1: TDBEdit
              Left = 8
              Top = 24
              Width = 273
              Height = 21
              DataField = 'Nama_Toko'
              DataSource = DM.ds_tbl_Konfigurasi
              TabOrder = 0
              OnChange = edtNama_TokoChange
            end
            object dbedtAlamat3: TDBEdit
              Left = 8
              Top = 64
              Width = 273
              Height = 21
              DataField = 'Alamat'
              DataSource = DM.ds_tbl_Konfigurasi
              TabOrder = 1
              OnChange = edtNama_TokoChange
            end
            object dbedtKota_Provinsi1: TDBEdit
              Left = 8
              Top = 104
              Width = 273
              Height = 21
              DataField = 'Kota_Provinsi'
              DataSource = DM.ds_tbl_Konfigurasi
              TabOrder = 2
              OnChange = edtNama_TokoChange
            end
            object dbedtTelp3: TDBEdit
              Left = 8
              Top = 144
              Width = 273
              Height = 21
              DataField = 'Telp'
              DataSource = DM.ds_tbl_Konfigurasi
              TabOrder = 3
              OnChange = edtNama_TokoChange
            end
            object dbedtLogo1: TDBEdit
              Left = 8
              Top = 184
              Width = 273
              Height = 21
              Color = clInactiveCaption
              DataField = 'Logo'
              DataSource = DM.ds_tbl_Konfigurasi
              ReadOnly = True
              TabOrder = 4
              OnChange = edtNama_TokoChange
            end
          end
        end
      end
    end
    object tsUsers: TTabSheet
      Caption = 'Users'
      ImageIndex = 4
      object pnlUsers: TPanel
        Left = 0
        Top = 0
        Width = 812
        Height = 555
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object spl4: TSplitter
          Left = 232
          Top = 0
          Width = 5
          Height = 555
          Color = clBtnFace
          ParentColor = False
        end
        object pnl13: TPanel
          Left = 237
          Top = 0
          Width = 575
          Height = 555
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          object dbgrdUsers: TDBGrid
            Left = 0
            Top = 27
            Width = 785
            Height = 509
            Align = alClient
            DataSource = DM.ds_tbl_Karyawan
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnTitleClick = dbgrdUsersTitleClick
          end
          object stat_Users: TStatusBar
            Left = 0
            Top = 536
            Width = 785
            Height = 19
            Panels = <
              item
                Alignment = taRightJustify
                Text = 'Jumlah Data:  '
                Width = 200
              end
              item
                Alignment = taCenter
                Text = '0123456789'
                Width = 70
              end
              item
                Width = 50
              end>
          end
          object pnl14: TPanel
            Left = 0
            Top = 0
            Width = 785
            Height = 27
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object dbnvgrUsers: TDBNavigator
              Left = 1
              Top = 0
              Width = 111
              Height = 27
              DataSource = DM.ds_tbl_Karyawan
              VisibleButtons = [nbInsert, nbDelete, nbPost]
              Flat = True
              TabOrder = 0
            end
            object chkUsers: TCheckBox
              Left = 120
              Top = 2
              Width = 57
              Height = 24
              Caption = 'Simple'
              Checked = True
              State = cbChecked
              TabOrder = 1
            end
          end
        end
        object pgc_Users: TPageControl
          Left = 0
          Top = 0
          Width = 232
          Height = 555
          ActivePage = ts17
          Align = alLeft
          Style = tsFlatButtons
          TabOrder = 0
          object ts17: TTabSheet
            Caption = 'Entry'
            object scrlbxUsers: TScrollBox
              Left = 0
              Top = 0
              Width = 224
              Height = 524
              Align = alClient
              BevelInner = bvSpace
              BevelOuter = bvNone
              BorderStyle = bsNone
              Color = clBtnFace
              ParentColor = False
              TabOrder = 0
              DesignSize = (
                224
                524)
              object Label1: TLabel
                Left = 8
                Top = 8
                Width = 24
                Height = 13
                Caption = 'Kode'
                FocusControl = DBEdit1
              end
              object Label2: TLabel
                Left = 8
                Top = 48
                Width = 64
                Height = 13
                Caption = 'Nama_Depan'
                FocusControl = DBEdit2
              end
              object Label3: TLabel
                Left = 8
                Top = 88
                Width = 76
                Height = 13
                Caption = 'Nama_Belakang'
                FocusControl = DBEdit3
              end
              object Label4: TLabel
                Left = 8
                Top = 128
                Width = 36
                Height = 13
                Caption = 'Kelamin'
                FocusControl = DBEdit4
              end
              object Label5: TLabel
                Left = 8
                Top = 168
                Width = 33
                Height = 13
                Caption = 'Alamat'
                FocusControl = DBEdit5
              end
              object Label6: TLabel
                Left = 8
                Top = 208
                Width = 20
                Height = 13
                Caption = 'Telp'
                FocusControl = DBEdit6
              end
              object Label7: TLabel
                Left = 8
                Top = 248
                Width = 24
                Height = 13
                Caption = 'Email'
                FocusControl = DBEdit7
              end
              object Label8: TLabel
                Left = 8
                Top = 288
                Width = 58
                Height = 13
                Caption = 'Nama_Login'
                FocusControl = DBEdit8
              end
              object Label9: TLabel
                Left = 8
                Top = 328
                Width = 46
                Height = 13
                Caption = 'Password'
                FocusControl = DBEdit9
              end
              object Label10: TLabel
                Left = 8
                Top = 368
                Width = 28
                Height = 13
                Caption = 'Akses'
              end
              object DBEdit1: TDBEdit
                Left = 8
                Top = 24
                Width = 193
                Height = 21
                Anchors = [akLeft, akTop, akRight]
                DataField = 'Kode'
                DataSource = DM.ds_tbl_Karyawan
                TabOrder = 0
              end
              object DBEdit2: TDBEdit
                Left = 8
                Top = 64
                Width = 193
                Height = 21
                Anchors = [akLeft, akTop, akRight]
                DataField = 'Nama_Depan'
                DataSource = DM.ds_tbl_Karyawan
                TabOrder = 1
              end
              object DBEdit3: TDBEdit
                Left = 8
                Top = 104
                Width = 193
                Height = 21
                Anchors = [akLeft, akTop, akRight]
                DataField = 'Nama_Belakang'
                DataSource = DM.ds_tbl_Karyawan
                TabOrder = 2
              end
              object DBEdit4: TDBEdit
                Left = 8
                Top = 144
                Width = 193
                Height = 21
                Anchors = [akLeft, akTop, akRight]
                DataField = 'Kelamin'
                DataSource = DM.ds_tbl_Karyawan
                TabOrder = 3
              end
              object DBEdit5: TDBEdit
                Left = 8
                Top = 184
                Width = 193
                Height = 21
                Anchors = [akLeft, akTop, akRight]
                DataField = 'Alamat'
                DataSource = DM.ds_tbl_Karyawan
                TabOrder = 4
              end
              object DBEdit6: TDBEdit
                Left = 8
                Top = 224
                Width = 193
                Height = 21
                Anchors = [akLeft, akTop, akRight]
                DataField = 'Telp'
                DataSource = DM.ds_tbl_Karyawan
                TabOrder = 5
              end
              object DBEdit7: TDBEdit
                Left = 8
                Top = 264
                Width = 193
                Height = 21
                Anchors = [akLeft, akTop, akRight]
                DataField = 'Email'
                DataSource = DM.ds_tbl_Karyawan
                TabOrder = 6
              end
              object DBEdit8: TDBEdit
                Left = 8
                Top = 304
                Width = 193
                Height = 21
                Anchors = [akLeft, akTop, akRight]
                DataField = 'Nama_Login'
                DataSource = DM.ds_tbl_Karyawan
                TabOrder = 7
              end
              object DBEdit9: TDBEdit
                Left = 8
                Top = 344
                Width = 193
                Height = 21
                Anchors = [akLeft, akTop, akRight]
                DataField = 'Password'
                DataSource = DM.ds_tbl_Karyawan
                TabOrder = 8
              end
              object dbcbbAkses: TDBComboBox
                Left = 8
                Top = 384
                Width = 193
                Height = 21
                Anchors = [akLeft, akTop, akRight]
                DataField = 'Akses'
                DataSource = DM.ds_tbl_Karyawan
                ItemHeight = 13
                Items.Strings = (
                  '0'
                  '1'
                  '2'
                  '3'
                  '4'
                  '5'
                  '6'
                  '7'
                  '8'
                  '9')
                TabOrder = 9
              end
            end
          end
          object ts18: TTabSheet
            Caption = 'Search'
            ImageIndex = 1
            object pnl15: TPanel
              Left = 0
              Top = 0
              Width = 224
              Height = 524
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 0
              object pnl16: TPanel
                Left = 0
                Top = 89
                Width = 224
                Height = 80
                Align = alTop
                BevelOuter = bvNone
                TabOrder = 1
                Visible = False
                DesignSize = (
                  224
                  80)
                object edt4: TEdit
                  Left = 8
                  Top = 51
                  Width = 209
                  Height = 21
                  Anchors = [akLeft, akTop, akRight]
                  TabOrder = 3
                end
                object rb3: TRadioButton
                  Left = 12
                  Top = 3
                  Width = 49
                  Height = 17
                  Caption = 'Dan'
                  Checked = True
                  TabOrder = 0
                  TabStop = True
                end
                object rb4: TRadioButton
                  Left = 60
                  Top = 3
                  Width = 49
                  Height = 17
                  Caption = 'Atau'
                  TabOrder = 1
                end
                object cbb4: TComboBox
                  Left = 8
                  Top = 27
                  Width = 209
                  Height = 21
                  Style = csDropDownList
                  Anchors = [akLeft, akTop, akRight]
                  ItemHeight = 13
                  ItemIndex = 1
                  TabOrder = 2
                  Text = 'Nama Barang'
                  Items.Strings = (
                    'Barcode'
                    'Nama Barang')
                end
              end
              object pnl17: TPanel
                Left = 0
                Top = 0
                Width = 224
                Height = 89
                Align = alTop
                BevelOuter = bvNone
                TabOrder = 0
                DesignSize = (
                  224
                  89)
                object chk3: TCheckBox
                  Left = 8
                  Top = 8
                  Width = 65
                  Height = 17
                  Alignment = taLeftJustify
                  Caption = 'Simple'
                  Checked = True
                  State = cbChecked
                  TabOrder = 1
                end
                object cbb5: TComboBox
                  Left = 8
                  Top = 32
                  Width = 209
                  Height = 21
                  Style = csDropDownList
                  Anchors = [akLeft, akTop, akRight]
                  ItemHeight = 13
                  ItemIndex = 0
                  TabOrder = 2
                  Text = 'Barcode'
                  Items.Strings = (
                    'Barcode'
                    'Nama Barang')
                end
                object edt5: TEdit
                  Left = 8
                  Top = 56
                  Width = 209
                  Height = 21
                  Anchors = [akLeft, akTop, akRight]
                  TabOrder = 3
                end
                object btn6: TButton
                  Left = 142
                  Top = 4
                  Width = 75
                  Height = 25
                  Anchors = [akTop, akRight]
                  Caption = '&Cari'
                  TabOrder = 0
                end
              end
            end
          end
        end
      end
    end
    object tsStatistics: TTabSheet
      Caption = 'Statistics'
      ImageIndex = 5
    end
  end
  object stat1: TStatusBar
    Left = 0
    Top = 586
    Width = 917
    Height = 19
    Panels = <
      item
        Width = 150
      end
      item
        Width = 50
      end>
  end
  object mm1: TMainMenu
    Left = 8
    Top = 112
    object File1: TMenuItem
      Caption = '&File'
      object New1: TMenuItem
        Caption = '&New'
      end
      object Open1: TMenuItem
        Caption = '&Open...'
      end
      object Save1: TMenuItem
        Caption = '&Save'
      end
      object SaveAs1: TMenuItem
        Caption = 'Save &As...'
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Print1: TMenuItem
        Caption = '&Print...'
      end
      object PrintSetup1: TMenuItem
        Caption = 'P&rint Setup...'
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Exit1: TMenuItem
        Caption = 'E&xit'
      end
    end
    object Edit1: TMenuItem
      Caption = '&Edit'
      object Undo1: TMenuItem
        Caption = '&Undo'
        ShortCut = 16474
      end
      object Repeatcommand1: TMenuItem
        Caption = '&Repeat <command>'
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object Cut1: TMenuItem
        Caption = 'Cu&t'
        ShortCut = 16472
      end
      object Copy1: TMenuItem
        Caption = '&Copy'
        ShortCut = 16451
      end
      object Paste1: TMenuItem
        Caption = '&Paste'
        ShortCut = 16470
      end
      object PasteSpecial1: TMenuItem
        Caption = 'Paste &Special...'
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object Find1: TMenuItem
        Caption = '&Find...'
      end
      object Replace1: TMenuItem
        Caption = 'R&eplace...'
      end
      object GoTo1: TMenuItem
        Caption = '&Go To...'
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object Links1: TMenuItem
        Caption = 'Lin&ks...'
      end
      object Object1: TMenuItem
        Caption = '&Object'
      end
    end
    object Help1: TMenuItem
      Caption = '&Help'
      object Contents1: TMenuItem
        Caption = '&Contents'
      end
      object SearchforHelpOn1: TMenuItem
        Caption = '&Search for Help On...'
      end
      object HowtoUseHelp1: TMenuItem
        Caption = '&How to Use Help'
      end
      object About1: TMenuItem
        Caption = '&About...'
      end
    end
  end
  object dlgOpen1: TOpenDialog
    DefaultExt = '*.xlsx; *.xls'
    Filter = 'Excel Files (*.xlsx, *.xls)|*.xlsx; *.xls'
    Left = 5
    Top = 70
  end
  object dlgOpenPic1: TOpenPictureDialog
    Left = 4
    Top = 27
  end
end
