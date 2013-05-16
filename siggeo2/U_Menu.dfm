object frmMenu: TfrmMenu
  Left = 190
  Top = 117
  BorderIcons = []
  BorderStyle = bsSingle
  ClientHeight = 556
  ClientWidth = 798
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object bsSkinMainMenuBar1: TbsSkinMainMenuBar
    Left = 0
    Top = 0
    Width = 798
    Height = 23
    TabOrder = 0
    SkinData = bsSkinData1
    SkinDataName = 'mainmenubar'
    ScrollMenu = True
    UseSkinFont = True
    DefItemFont.Charset = DEFAULT_CHARSET
    DefItemFont.Color = clBtnText
    DefItemFont.Height = 14
    DefItemFont.Name = 'Arial'
    DefItemFont.Style = []
    DefaultWidth = 0
    DefaultHeight = 23
    PopupToUp = False
    BusinessSkinForm = bsBusinessSkinForm1
    MainMenu = MainMenu1
    Align = alTop
  end
  object pnStatus: TbsSkinPanel
    Left = 0
    Top = 493
    Width = 798
    Height = 63
    TabOrder = 1
    SkinData = bsSkinData1
    SkinDataName = 'panel'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = True
    RealHeight = -1
    AutoEnabledControls = True
    CheckedMode = False
    Checked = False
    DefaultAlignment = taLeftJustify
    DefaultCaptionHeight = 22
    BorderStyle = bvFrame
    CaptionMode = False
    RollUpMode = False
    RollUpState = False
    NumGlyphs = 1
    Spacing = 2
    Align = alBottom
    object bsSkinBevel5: TbsSkinBevel
      Left = 4
      Top = 3
      Width = 352
      Height = 28
      SkinDataName = 'bevel'
      DividerMode = False
    end
    object bsSkinBevel1: TbsSkinBevel
      Left = 10
      Top = 8
      Width = 170
      Height = 18
      SkinDataName = 'bevel'
      DividerMode = False
    end
    object lblX: TbsSkinStdLabel
      Left = 24
      Top = 10
      Width = 10
      Height = 13
      UseSkinFont = True
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = -11
      DefaultFont.Name = 'MS Sans Serif'
      DefaultFont.Style = []
      SkinDataName = 'stdlabel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Caption = 'X:'
      ParentFont = False
    end
    object lblY: TbsSkinStdLabel
      Left = 104
      Top = 10
      Width = 10
      Height = 13
      UseSkinFont = True
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = -11
      DefaultFont.Name = 'MS Sans Serif'
      DefaultFont.Style = []
      SkinDataName = 'stdlabel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Caption = 'Y:'
      ParentFont = False
    end
    object bsSkinBevel3: TbsSkinBevel
      Left = 183
      Top = 8
      Width = 168
      Height = 18
      SkinDataName = 'bevel'
      DividerMode = False
    end
    object lblCoord: TbsSkinStdLabel
      Left = 186
      Top = 11
      Width = 162
      Height = 13
      UseSkinFont = True
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = -11
      DefaultFont.Name = 'MS Sans Serif'
      DefaultFont.Style = []
      SkinDataName = 'stdlabel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      AutoSize = False
      ParentFont = False
    end
    object bsSkinBevel6: TbsSkinBevel
      Left = 4
      Top = 35
      Width = 352
      Height = 25
      SkinDataName = 'bevel'
      DividerMode = False
    end
    object bsSkinBevel7: TbsSkinBevel
      Left = 62
      Top = 38
      Width = 63
      Height = 18
      SkinDataName = 'bevel'
      DividerMode = False
    end
    object lblSegRegua: TbsSkinStdLabel
      Left = 69
      Top = 41
      Width = 51
      Height = 13
      UseSkinFont = True
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = -11
      DefaultFont.Name = 'MS Sans Serif'
      DefaultFont.Style = []
      SkinData = bsSkinData1
      SkinDataName = 'stdlabel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Caption = '                 '
      ParentFont = False
    end
    object bsSkinStdLabel4: TbsSkinStdLabel
      Left = 10
      Top = 40
      Width = 51
      Height = 13
      UseSkinFont = True
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = -11
      DefaultFont.Name = 'MS Sans Serif'
      DefaultFont.Style = []
      SkinDataName = 'stdlabel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Caption = 'Segmento:'
      ParentFont = False
    end
    object bsSkinStdLabel3: TbsSkinStdLabel
      Left = 126
      Top = 41
      Width = 48
      Height = 13
      UseSkinFont = True
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = -11
      DefaultFont.Name = 'MS Sans Serif'
      DefaultFont.Style = []
      SkinDataName = 'stdlabel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Caption = 'Tamanho:'
      ParentFont = False
    end
    object bsSkinBevel8: TbsSkinBevel
      Left = 177
      Top = 38
      Width = 65
      Height = 18
      SkinDataName = 'bevel'
      DividerMode = False
    end
    object lblRegua: TbsSkinStdLabel
      Left = 180
      Top = 41
      Width = 57
      Height = 13
      UseSkinFont = True
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = -11
      DefaultFont.Name = 'MS Sans Serif'
      DefaultFont.Style = []
      SkinData = bsSkinData1
      SkinDataName = 'stdlabel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      AutoSize = False
      ParentFont = False
    end
    object bsSkinStdLabel6: TbsSkinStdLabel
      Left = 243
      Top = 41
      Width = 43
      Height = 13
      UseSkinFont = True
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = -11
      DefaultFont.Name = 'MS Sans Serif'
      DefaultFont.Style = []
      SkinDataName = 'stdlabel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Caption = 'Unidade:'
      ParentFont = False
    end
    object bsSkinBevel9: TbsSkinBevel
      Left = 287
      Top = 38
      Width = 64
      Height = 18
      SkinDataName = 'bevel'
      DividerMode = False
    end
    object lblUnidadeMapa: TbsSkinStdLabel
      Left = 291
      Top = 41
      Width = 54
      Height = 13
      UseSkinFont = True
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = -11
      DefaultFont.Name = 'MS Sans Serif'
      DefaultFont.Style = []
      SkinData = bsSkinData1
      SkinDataName = 'stdlabel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      AutoSize = False
      Caption = '                         '
      ParentFont = False
    end
    object Image1: TImage
      Left = 603
      Top = 1
      Width = 194
      Height = 61
      Cursor = crHandPoint
      Align = alRight
      Picture.Data = {
        0A544A504547496D616765FC130000FFD8FFE000104A46494600010101006000
        600000FFE1001645786966000049492A0008000000000000000000FFDB004300
        080606070605080707070909080A0C140D0C0B0B0C1912130F141D1A1F1E1D1A
        1C1C20242E2720222C231C1C2837292C30313434341F27393D38323C2E333432
        FFDB0043010909090C0B0C180D0D1832211C2132323232323232323232323232
        3232323232323232323232323232323232323232323232323232323232323232
        3232323232FFC0001108006C012603012200021101031101FFC4001F00000105
        01010101010100000000000000000102030405060708090A0BFFC400B5100002
        010303020403050504040000017D010203000411051221314106135161072271
        14328191A1082342B1C11552D1F02433627282090A161718191A25262728292A
        3435363738393A434445464748494A535455565758595A636465666768696A73
        7475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9
        AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4
        E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F010003010101010101010101
        0000000000000102030405060708090A0BFFC400B51100020102040403040705
        040400010277000102031104052131061241510761711322328108144291A1B1
        C109233352F0156272D10A162434E125F11718191A262728292A35363738393A
        434445464748494A535455565758595A636465666768696A737475767778797A
        82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6
        B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2
        F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F7EC8F5A323D457956A3
        A9B69F6FE7399186EDB80D595FF0972F410CE49E803F5AEE58193574CF39E631
        4ECD1ED591EB55EE2F6DED94992400FA679AF3A8BCF9635799E4466193187FBB
        F53528185C038151F55F32FEB9E46A6A3ACCD71704C2E55074C1AA7FDA579FF3
        D9BF3AAF8A5DB5D0A9412B58E69569B77B9646A979FF003D9BF334A355BC1FF2
        D9BFEFA3557154353D5ADB4B8C1989695BEE44BD5BFC05354A2F644BAD35F68D
        B5D5AF73812B1FC4D6D6927519E4124AE7CAF726BCC5BC52929F9EDE454FEE86
        FE7528F16A01810CC07FBD4E784935A2B0431AA2F5773DAB23D68FA578BC5E2B
        596544F2E61B982E77D74F63E22B7D0A569AF3CE75906D50833CD734F0538A3A
        618F849F647A1515C7AFC44D25BFE595CFFDF03FC6A55F1EE96DD22B8FFBE07F
        8D63F57ABFCA747D6A8FF31D5D15CD2F8D74E6E91CFF00F7C8FF001A957C5D60
        DD239BFEF91FE353EC6A762962293EA74145622F89ECDBA24BF90FF1A957C416
        8DFC12FE54BD9C974295583EA6B5159CBACDBB7457FCAA55D4617E81BF2A9E56
        529265CA2A249D1FA66A4EB48A168A28A0028A28A0028A28A0028A28A0028A28
        A0028A28A0028A28A0028A28A00F19F12FFC833FEDA8FEB595E18B1175A934EE
        3296E3201FEF1E9FD7F4AD5F137FC833FEDA0FEB53784A0D9A3993BCB2B367E9
        C7F4AF7B9AD48F9B51E6AA6CEDA5DB526DA5DB5CD73AAC47B68DB526297145C2
        C62EABAEDA698AC99F36E7B44A7A7FBDE95C45C5C4D7972F7370DBA573F801E8
        2BA8F10787ACE1D3EE2F6D63314D1FEF1B0C4861DFAD7260E466BAF0EA2D5D6E
        71E21C93B3D828A28AE93989AD3FE3EE1FF7D7F9D7A8E8FA358EB370F15FC5E6
        222EE51B88C1FC2BCB6D3FE3F21FFAE8BFCEBD87C27FF1FD3FFD73FEB5C58D6D
        42E8EDC0C54AA59A2E0F03F87C74B23FF7F5FF00C69FFF00087E831FFCBA63FE
        DAB7F8D5ED63548749B092E663F2A0E9DCFB57976A3E34D52F6563149E4479E1
        5793F9D79F4615EB6D2D3D4F4B11530D87D25157F43D10786F414FF961FF0091
        5BFC6A48F41D173F2C3FF911BFC6BC89B5AD4DCE4DF5C7E0E455ED1757D43FB6
        2D15AF27643280CA6424115D12C1D5516DCCE6863E84A4A2A07AB2E81A6A8E20
        3FF7DB7F8D3FFB1EC107FA9C7FC08D5B8A41F67573D319AE07C53E3478677B2D
        3986F5E1E4FEEFB0AE2A50A9565CB13D0AD3A3423CD2475ED069909E401FF023
        52C4B60DF731FF007D57884F797372E5E79E4909FEF3669D6DA85DD9B87B7B99
        2323D1B8AEDFECE95BE23CE59AC2FF000687BC244807CA3F5A7E428C9E05703E
        17F1A35D4A9677D8129E11C746AEAF5CB968345B99A36C30898823B715C13A32
        84F9247A74F110A94F9E3B17CDCC20E0C828FB543FF3D05785B6ABA83B65AFAE
        09FF00AEAD48354D4074BDB8FF00BFAD5DBFD9B2FE63CFFED687F29EEC2E223F
        F2D053C3AB74606BC2975BD4D3A5F4FF008B9357AD3C5DABDAB86FB479ABE8E2
        A6597545B3454735A4F74CF68A2B91F0F78CEDF542209879571FDD2783F435D6
        AB0619078AE2A94E54DDA48F469558D48F341DD0EA28A2A0D028A28A0028A28A
        0028A28A0028A28A00F19F137FC833FEDA0FEB5A5E1A4C787AD3DC31FF00C79A
        B37C4DFF0020CFFB683FAD6C787403E1FB3C74D9FD4D7B551DA9AF53E7E92FDE
        BF43436D2EDF6A7EDCF4A1402CC195801D0F1CD73731D5619803190C4640F946
        7AD3CE1780B8F76A9004E983F5A5651B3EF6E3DAA6E52895A7892E6DDE099434
        4E36B291D6B82D6FC39369624B985BCCB5CE71B794AF43DB4D96149A368E45DC
        8C3041AD29D5707746556929AD4F272B1ADB47233B979776C551C0C7A9A676AB
        BAD5BB5A6B335A168CA43CA08D36801B9FCEA957A74DF346E79938F2CAC4D69F
        F1F70FFBEBFCEBD83C27FF001FD3FF00D73FEB5E3F69FF001F70FF00BEBFCEBD
        83C27FF1FD3FFD73FEB5C98EF80ECC07F1114FC7F2432ADBDB4D762DD4B6EE51
        9B763E9F5AE17EC3A7FF00D0563FFBF2FF00E15D2FC47DCDAA5B0009C21FE75C
        56C6FEE9FCAAB070B515A9963E77AF2BA35A1D1E0B81986FFCC1EA96F21FE95A
        1A5E80C9A9DBBACF2315901C7D9E45FD48AA7A4EBD3697088C5A89003D49C574
        BA1F8B64BDD522B692CD6357CFCFBBA7159D695749E9A1A61E187938EBAFA1D5
        6B5742C3C3EF234A222171BC8CED278E95E4CD6762CC58EAC849E72617FF000A
        F49F1CFCFE1772B93CAF4FF7857936C6FEE9FCAA7011F71CAFD4D3349FEF146D
        D0D8B3D0E0BF90C76DA923B0193FB97FF0A6DD68F6D653B4371A92238EC617FF
        000AB1E1EBE6D321BCB8F2B7B285214F19ACFD5750B8D56F0DC4D18538C0551C
        015D11751D571BFBA8E492A4A8A95BDE6491DAD94522C89ABC6194E41F25FAFE
        55E97753A5E784E7769308D037CF8E836F5C579184727EE9FCABD51A0687C137
        08472B6ACBFF008ED73E36294A1A9D797C9F2CECB4B1E75F62B0FF00A0AC7FF7
        E5FF00C29F16996733848B525763FC2B039FE9599B1BFBA7F2ADDF092675C50E
        BC6C3D7F0AEBAADC20E49EC70D18C6A54506B71ADE1CD8326E5F1FF5EB27F855
        56B0B15621B5540476303FF857B525AC0625F9074AE27C7BA1C0B642FE140244
        601B03A835C5471AE73519753D0C465EA9C1CE1D0E312D6CA370E9ABA2B29C82
        217E3F4AF4FF000BEB31EA16823F3D6678FE5670A5727E86BC7B637F74FE55D6
        7812E1E0D5248F90ACA1BF23FF00D7AD71B454A9F35F630CBEBB8D5504B467AC
        D148A72A0D2D78A7D1051451400514514005145140051451401E33E25FF9067F
        DB41FD6A9F86FC44BA785B1BBFF8F72DF2483F809EC7DAAEF88D59F4E0A8A598
        CA3007E35CA3489664846125D741B7911FBE7D6BDF8C54A9D99F32E4E152E8F5
        CC6178FCE936D79A7FC24DAC8B58ADE3B9489234081950163818E49CD674F757
        9779FB4DE5C4D9ECF21C7E5582C24FA9D2F190E88F5A12445F67989BFF00BBBB
        9A7EDAF26D20A5AEB167305036CCB93ED9E6BD7B6D655A9FB2691B50AAAAA6EC
        47B6918AA233B90AAA3249EC2A6DBED599E20D45348D1A6BA7B7F3D4613CBCE0
        1DC71CFB7358AD5D8D9E8AECF33D46FF00FB5756B9BE09B5246C20FF0064702A
        BD350019C26C0492141CED1E94EAF6A0AD148F0E72E69364B69FF1F90FFD745F
        E75EC3E13FF8FE9FFEB9FF005AF1EB4FF8FC87FEBA2FF3AF61F09FFC7F4FFF00
        5CFF00AD71E3BE03B701FC4461F8FEFEF2CF58852DAEA6855A2C911B919E6B93
        FEDBD57FE82377FF007F9BFC6BB3F8830D9ADFDACD76970772155311007EBF5A
        E3B3A3FF0072FBFEFA5FF0A785E57495D19E37995797BC5AB697C457681A0B9B
        D753D0F9C7FC6B5F44B4F103EAD0FDB24BA36E33BFCC9491D38E335069DE26B0
        D3A158D2DEE5C28C02CCB5AB65E36B79AF22856DA552EC172587158D575ACD72
        2B1BD05874E2F9DDF437BC5F24B6BE1592486478E45DB8643823E615E61FDB7A
        AFFD046EFF00EFF37F8D7A778AE5826F0A4AF3890C595CF96467A8F5AF33CE8F
        FDCBEFFBE97FC29E012F66EEAFA8B33BFB55676D0B16BA9EA135ADD48F7B70CF
        1AA9463212579ED559357D5E460A97F78CC7B0958D6FF85A2B09EF244B749B04
        0DC262A47E95E89168D671E196255FA2E2A6A62214A725CA551C24ABD38CB9AC
        70FE1DD2F5BBB9D66BEBDBA587FE79B4ADF37D6BB1D651AD7C3779E592AE90B3
        295E0838AD58E248861540AA5AE843A1DE8901D9E4BEEDBD71B4D70BAAEA544D
        9E946846952714CF1AFEDAD57FE82375FF007F9BFC6B57C39A9DF5CEB3147717
        93CA98276BC848ACCCE8FF00DCBDFF00BED7FC2AF693369D05F096DD6E83AA93
        FBC65C63F0AF62B463ECDDA2783877255A379753D8A139853E95C8F8F758FB16
        9D1DBDBCCC973237051B0540EA6B164F1EAB422348EE23C0C646DCD73B7579A7
        5E4ED3DCB5FC923756675FF0AE1C3E0E6A6A535B1E962B1D0941C29BD595BFB6
        B54FFA08DD7FDFE6FF001AE87C23797D7BAA37DA2EA799117EEBC858035839D1
        FF00B97DFF007D2FF85773E0DD2E18C79F0A4AAB261BF7B8DDFA574E2E508D36
        ADB9C78084E5593BDD23BA4E117E94EA3B515E29F44145145001451450014514
        5001451450078D78919974DCAB153E60E41C7AD71CAA14702BB6D76D66BBB1F2
        E04DCFBC1C66B9BFEC3D47FE7DCFFDF42BE8A8B4A3A9F2D5537233A8AD1FEC3D
        47FE7DCFFDF428FEC3D47FE7DCFF00DF42B5E78F732E597621D2ED5EF354B6B7
        8C64BC8BD3B0CF27F2AF60DB5C8782AC3EC77130B8B4905D30F965E0AAAFA7B1
        AED7657978CA9CD3B763D7C152B42FDCC2F13EAA746D0A7B98C8139F921C8CFC
        E7A7E5C9FC2BCD6F756D53548D52FEF5E541CEC0A147E2140CD74FE385BAD535
        782C2DA3DF15AAEF939FE36E9F90FE75CFFF00616A3FF3EE7FEFA15BE161151E
        696E73E32A49CB963B19D4568FF61EA3FF003EE7FEFA147F61EA3FF3EE7FEFA1
        5DBCF1EE7072BEC53B4FF8FC87FEBA2FF3AF61F09FFC7F4FFF005CFF00AD7975
        BE8B7E97313B41855704FCC2BBCB0F1059F87A569EF1652920D8BE5AE4E7F3AE
        3C5AE785A3A9DB836A13BCB4474BE29D086B9A59897E59A33BA363EB5E417763
        73613B43730BC6EBD88AF4B1F12F443FF2CEEFFEFD8FF1AAD73E37F0DDE0DB2D
        BDC30F7881FEB5CD869D7A2B95C6E8E9C5D3C3D77CCA76679AD5BD3013AA5B63
        AF982BAE6D67C22E73F617FF00C075FF001A920D6BC2D0C8B225A48ACBD08817
        FC6BAA7889CA2D72339218584649FB446AF89B8F03CF91CE53FF004215E5B5EA
        4FE33D067B6304904F2467AABC4A41FD6B35F50F0AC8D916247B790B5861AA4E
        8C395C19D38CA54EBCD494D2D0CAF03AB1BE98819FBBFD6BD617EE0FA570F61A
        E787EC5898209533D76C4A3FAD6B0F1AE967A2DC7FDF03FC6B971119D5A8E7CA
        7661654E8D2507247495435B5DDA1DF0F581FF00F41359A3C65A61FE19FF00EF
        81FE34378B34C950AB4731561820A0FF001AC5529A77B1B4AB53945AE63C6EAF
        696A5AE250A093E537F2AF4292E3C3D2B6459EDFA42B4F867D0E26252DD81231
        C442BD39E2E4E36E467914F0318CB9B9D1E5952450CB33058A3673E8A335E98D
        17879882B62A3E90AD5BB79B4787EE42E07A04029CB1CD2D2211CBA2DEB3391D
        07C213DC4C935E26147213FC6BD3AC6D12D210AA00E2A845ACE9F18C247201FE
        E8A986BB687F864FFBE6BCDAD52A5595E47AB429D2A31E581A945668D6AD8FF0
        C9F95386AF6E7B3FE558F2B37E78F73428AA435380F40FF95385FC47B37E5459
        95CC8B7455717719FEF7E54F13A1F5A4325A29A1C1A75001451450063FFC237A
        6E7FD537FDF668FF00846F4DFF009E6FFF007D9AD7A5ABF693EE67EC61D8C8FF
        00846F4DFF009E6FFF007D9A3FE11BD37FE79BFF00DF66B5E8A3DA4FB8BD8D3E
        C8C73A4DBD9216B742377DEC9CD412B2410BCAFC2A29626B6E75CC2C2B9AD6B3
        29B6D3D3EFDCBFCDFEE0E4FF004A149BDC7C896886E8BE1EB5B9B57BEBB8D8CF
        72C646F9BA67B569FF00C237A6FF00CF37FF00BECD6A43188A148D780A3029F4
        7B49F70F650EC64FFC237A6FFCF37FFBECD1FF0008DE9BFF003CDFFEFB35AF45
        1ED27DC5EC69F64647FC237A6FFCF37FFBECD56BBF0768F7A8AB3C0EC14E47EF
        08ADFA0535566B660E8D37F651CBFF00C2BEF0F8FF0097593FEFEB7F8D28F006
        81FF003ED27FDFD35D4514FDBD5FE664FD5A8FF2A3981E02D047FCBB3FFDFD6A
        70F026843FE5DDFF00EFE3574B451EDEA7F330FAB52FE547383C0FA20FF9777F
        FBF8DFE34A3C15A28FF9777FFBF86BA2A297B6A9FCCC7F57A5FCA8E7C783B461
        FF002C1BFEFE1A70F086903A42DFF7D9ADDA5A3DAD4EE3F614FF0095187FF089
        E923A42DFF007D9A70F0B6963FE58B7FDF66B6A8A5ED67DC3D8D3FE54638F0CE
        983FE5937FDF6697FE11CD347FCB26FF00BECD6BD251ED27DC7ECA1D8CBFF847
        F4F1D236FF00BECD38683603FE599FFBE8D69D14B9E5DC7ECE1D8CD1A2590FF9
        667FEFA34E1A359FFCF33FF7D1AD0A28E69770E48F6287F64DA0FE03FF007D1A
        70D32D47443FF7D1ABB40A5763E58F62A0D3EDC7F07EA69C2CA01D17F5AB3486
        8BB1D9110B688745FD69C2141D0549452188140A5A28A0028A28A0028A28A002
        8A28A006B8CA9AE7B4E85AF3C497578E3F77001145FD7F5CD7447A1A8E186385
        4EC5C6E3934012D145140051451400514514005145140094B451400514514009
        452D14005252D14005145140051451400514514005145140094B451400514514
        005145140051451401FFD9}
      Stretch = True
      OnClick = Image1Click
    end
    object lblGeoprocessamento: TRzLabel
      Left = 610
      Top = 7
      Width = 152
      Height = 13
      Cursor = crHandPoint
      Caption = 'Equipe Geoprocessamento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      OnClick = lblGeoprocessamentoClick
    end
    object bsSkinBevel10: TbsSkinBevel
      Left = 357
      Top = 3
      Width = 237
      Height = 28
      SkinDataName = 'bevel'
      DividerMode = False
    end
    object RzLabel1: TRzLabel
      Left = 12
      Top = 10
      Width = 12
      Height = 13
      AutoSize = False
      Caption = 'X:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object RzLabel2: TRzLabel
      Left = 92
      Top = 10
      Width = 12
      Height = 13
      AutoSize = False
      Caption = 'Y:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object bsSkinBevel2: TbsSkinBevel
      Left = 357
      Top = 34
      Width = 236
      Height = 26
      SkinDataName = 'bevel'
      DividerMode = False
    end
    object lblInfo: TsEdit
      Left = 360
      Top = 6
      Width = 232
      Height = 21
      ReadOnly = True
      TabOrder = 0
      SkinData.SkinSection = 'EDIT'
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.Active = False
    end
  end
  object pnMapa: TbsSkinPanel
    Left = 0
    Top = 56
    Width = 798
    Height = 437
    TabOrder = 2
    SkinData = bsSkinData1
    SkinDataName = 'panel'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = True
    RealHeight = -1
    AutoEnabledControls = True
    CheckedMode = False
    Checked = False
    DefaultAlignment = taLeftJustify
    DefaultCaptionHeight = 22
    BorderStyle = bvFrame
    CaptionMode = False
    RollUpMode = False
    RollUpState = False
    NumGlyphs = 1
    Spacing = 2
    Align = alClient
    object Map1: TMap
      Left = 1
      Top = 1
      Width = 796
      Height = 435
      ParentColor = False
      Align = alClient
      TabOrder = 0
      OnMouseUp = Map1MouseUp
      OnMouseMove = Map1MouseMove
      OnMouseDown = Map1MouseDown
      OnDblClick = Map1DblClick
      OnAfterLayerDraw = Map1AfterLayerDraw
      OnAfterTrackingLayerDraw = Map1AfterTrackingLayerDraw
      ControlData = {
        0000020045520000F52C0000E1000000FFFFFF00010001000000102700000100
        00000000000000000000000000000100FFFFFF0000020000000000}
    end
    object pnMapa2: TbsSkinExPanel
      Left = 545
      Top = 91
      Width = 235
      Height = 137
      TabOrder = 1
      SkinData = bsSkinData1
      SkinDataName = 'expanel'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      DefaultWidth = 0
      DefaultHeight = 0
      UseSkinFont = True
      NumGlyphs = 1
      Spacing = 2
      RealWidth = 0
      RealHeight = 0
      ShowRollButton = True
      ShowCloseButton = True
      DefaultCaptionHeight = 21
      RollState = False
      RollKind = rkRollVertical
      Caption = '   Mini-Mapa '
      PopupMenu = ppMapa
      OnChangeRollState = pnMapa2ChangeRollState
      object Map2: TMap
        Left = 1
        Top = 21
        Width = 233
        Height = 115
        ParentColor = False
        Align = alClient
        TabOrder = 0
        OnMouseDown = Map2MouseDown
        OnAfterLayerDraw = Map2AfterLayerDraw
        ControlData = {
          0000020015180000E30B0000E1000000FFFFFF00010001010000102700000100
          00000000000000000000000000000100FFFFFF0000020000000000}
      end
    end
    object pnLegenda: TbsSkinExPanel
      Left = 6
      Top = 8
      Width = 227
      Height = 385
      TabOrder = 2
      SkinData = bsSkinData1
      SkinDataName = 'expanel'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      DefaultWidth = 0
      DefaultHeight = 0
      UseSkinFont = True
      NumGlyphs = 1
      Spacing = 2
      RealWidth = 0
      RealHeight = 0
      ShowRollButton = True
      ShowCloseButton = True
      DefaultCaptionHeight = 21
      RollState = False
      RollKind = rkRollVertical
      Caption = '    Legenda'
      PopupMenu = popLegenda
      OnMouseDown = pnLegendaMouseDown
      OnChangeRollState = pnLegendaChangeRollState
      object MapLegend1: TMapLegend
        Left = 1
        Top = 21
        Width = 225
        Height = 363
        Align = alClient
        BevelWidth = 2
        BorderWidth = 5
        Caption = 'MapLegend1'
        Color = 14540253
        Enabled = True
        TabOrder = 0
        MouseButtonMove = mbLeft
        ColorHI = clBlack
        ColorLO = clBlack
        ButtonAlign = alClient
        CornerDimension = 10
        CornerColor = clAppWorkSpace
        MaxWidth = 0
        MaxHeight = 0
        MinWidth = 0
        MinHeight = 0
        BorderHeight = 5
        ShowPopupMenu = True
        OnLayerDblClick = MapLegend1LayerDblClick
        OnAfterSetLayerVisible = MapLegend1AfterSetLayerVisible
        LegendAllow = [Docking, DragDroping]
      end
    end
    object pnEscala: TbsSkinExPanel
      Left = 521
      Top = 7
      Width = 258
      Height = 73
      TabOrder = 3
      Visible = False
      SkinData = bsSkinData1
      SkinDataName = 'expanel'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      DefaultWidth = 0
      DefaultHeight = 0
      UseSkinFont = True
      NumGlyphs = 1
      Spacing = 2
      RealWidth = 0
      RealHeight = 0
      ShowRollButton = True
      ShowCloseButton = True
      DefaultCaptionHeight = 21
      RollState = False
      RollKind = rkRollVertical
      Caption = '  Escala do Mapa'
      PopupMenu = ppEscala
      OnChangeRollState = pnEscalaChangeRollState
      object bsSkinBevel4: TbsSkinBevel
        Left = 1
        Top = 21
        Width = 256
        Height = 51
        Align = alClient
        SkinData = bsSkinData1
        SkinDataName = 'bevel'
        DividerMode = False
      end
      object bsSkinStdLabel8: TbsSkinStdLabel
        Left = 61
        Top = 26
        Width = 10
        Height = 13
        UseSkinFont = True
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = -11
        DefaultFont.Name = 'MS Sans Serif'
        DefaultFont.Style = []
        SkinDataName = 'stdlabel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Caption = 'Y:'
        ParentFont = False
      end
      object ScaleBar1: TScaleBar
        Left = 1
        Top = 21
        Width = 256
        Height = 51
        Align = alClient
        TabOrder = 0
        ControlData = {
          93B20000C8000000030008000BF25747200000005F0065007800740065006E00
          74007800751A0000030008000AF25747200000005F0065007800740065006E00
          740079004505000003000900267525BE240000006200610063006B0063006F00
          6C006F0072000F00008000000D00040075F30DBC3C00000066006F006E007400
          0352E30B918FCE119DE300AA004BB851010000009001444201000D4D53205361
          6E732053657269660300080091F746CB60FFFFFF6D006100700075006E006900
          7400730002000000}
      end
    end
  end
  object bsSkinControlBar1: TbsSkinControlBar
    Left = 0
    Top = 23
    Width = 798
    Height = 33
    SkinDataName = 'controlbar'
    SkinData = bsSkinData1
    SkinBevel = False
    Align = alTop
    AutoDrag = False
    AutoSize = True
    RowSnap = False
    TabOrder = 3
    object bsSkinToolBar1: TbsSkinToolBar
      Left = 11
      Top = 2
      Width = 54
      Height = 25
      TabOrder = 0
      SkinData = bsSkinData1
      SkinDataName = 'toolpanel'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      DefaultWidth = 0
      DefaultHeight = 0
      UseSkinFont = True
      RealHeight = -1
      AutoEnabledControls = True
      CheckedMode = False
      Checked = False
      DefaultAlignment = taLeftJustify
      DefaultCaptionHeight = 22
      BorderStyle = bvNone
      CaptionMode = False
      RollUpMode = False
      RollUpState = False
      NumGlyphs = 1
      Spacing = 2
      Caption = 'bsSkinToolBar1'
      CanScroll = False
      HotScroll = False
      ScrollOffset = 0
      ScrollTimerInterval = 50
      WidthWithCaptions = 0
      WidthWithoutCaptions = 0
      AutoShowHideCaptions = False
      ShowCaptions = False
      Flat = False
      Images = ImageList2
      object bsSkinSpeedButton1: TbsSkinSpeedButton
        Left = 0
        Top = 0
        Width = 25
        Height = 25
        Hint = 'Salvar Projeto'
        SkinData = bsSkinData1
        SkinDataName = 'toolbutton'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 14
        DefaultFont.Name = 'Arial'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
        WidthWithCaption = 0
        WidthWithoutCaption = 0
        ImageIndex = 7
        RepeatMode = False
        RepeatInterval = 100
        Transparent = False
        Flat = False
        AllowAllUp = False
        ShowHint = True
        ParentShowHint = False
        Down = False
        GroupIndex = 0
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        OnClick = bsSkinSpeedButton1Click
      end
      object bsSkinSpeedButton4: TbsSkinSpeedButton
        Left = 25
        Top = 0
        Width = 25
        Height = 25
        Hint = 'Imprimir View'
        SkinData = bsSkinData1
        SkinDataName = 'toolbutton'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 14
        DefaultFont.Name = 'Arial'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
        WidthWithCaption = 0
        WidthWithoutCaption = 0
        ImageIndex = 14
        RepeatMode = False
        RepeatInterval = 100
        Transparent = False
        Flat = False
        AllowAllUp = False
        ShowHint = True
        ParentShowHint = False
        Down = False
        GroupIndex = 0
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        OnClick = bsSkinSpeedButton4Click
      end
    end
    object bsSkinToolBar3: TbsSkinToolBar
      Left = 78
      Top = 2
      Width = 323
      Height = 25
      TabOrder = 1
      SkinData = bsSkinData1
      SkinDataName = 'toolpanel'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      DefaultWidth = 0
      DefaultHeight = 0
      UseSkinFont = True
      RealHeight = -1
      AutoEnabledControls = True
      CheckedMode = False
      Checked = False
      DefaultAlignment = taLeftJustify
      DefaultCaptionHeight = 22
      BorderStyle = bvNone
      CaptionMode = False
      RollUpMode = False
      RollUpState = False
      NumGlyphs = 1
      Spacing = 2
      Caption = 'bsSkinToolBar1'
      CanScroll = False
      HotScroll = False
      ScrollOffset = 0
      ScrollTimerInterval = 50
      WidthWithCaptions = 0
      WidthWithoutCaptions = 0
      AutoShowHideCaptions = False
      ShowCaptions = False
      Flat = False
      Images = ImageList2
      object btIdentify: TbsSkinSpeedButton
        Left = 0
        Top = 0
        Width = 25
        Height = 25
        Hint = 'Identificador'
        SkinData = bsSkinData1
        SkinDataName = 'toolbutton'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 14
        DefaultFont.Name = 'Arial'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
        WidthWithCaption = 0
        WidthWithoutCaption = 0
        ImageIndex = 22
        RepeatMode = False
        RepeatInterval = 100
        Transparent = False
        Flat = False
        AllowAllUp = False
        ShowHint = True
        ParentShowHint = False
        Down = False
        GroupIndex = 1
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        OnClick = btIdentifyClick
      end
      object btSelect: TbsSkinSpeedButton
        Left = 62
        Top = 0
        Width = 25
        Height = 25
        Hint = 'Sele'#231#227'o de Gr'#225'ficos'
        SkinData = bsSkinData1
        SkinDataName = 'toolbutton'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 14
        DefaultFont.Name = 'Arial'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
        WidthWithCaption = 0
        WidthWithoutCaption = 0
        ImageIndex = 20
        RepeatMode = False
        RepeatInterval = 100
        Transparent = False
        Flat = False
        AllowAllUp = False
        ShowHint = True
        ParentShowHint = False
        Down = False
        GroupIndex = 1
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        OnClick = btSelectClick
      end
      object btSelectSh: TbsSkinSpeedButton
        Left = 112
        Top = 0
        Width = 25
        Height = 25
        Hint = 'Sele'#231#227'o de Temas'
        SkinData = bsSkinData1
        SkinDataName = 'toolbutton'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 14
        DefaultFont.Name = 'Arial'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
        WidthWithCaption = 0
        WidthWithoutCaption = 0
        ImageIndex = 30
        RepeatMode = False
        RepeatInterval = 100
        Transparent = False
        Flat = False
        AllowAllUp = False
        ShowHint = True
        ParentShowHint = False
        Down = False
        GroupIndex = 1
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        OnClick = btSelectShClick
      end
      object btPan: TbsSkinSpeedButton
        Left = 137
        Top = 0
        Width = 25
        Height = 25
        Hint = 'Pan'
        SkinData = bsSkinData1
        SkinDataName = 'toolbutton'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 14
        DefaultFont.Name = 'Arial'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
        WidthWithCaption = 0
        WidthWithoutCaption = 0
        ImageIndex = 21
        RepeatMode = False
        RepeatInterval = 100
        Transparent = False
        Flat = False
        AllowAllUp = False
        ShowHint = True
        ParentShowHint = False
        Down = False
        GroupIndex = 1
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        OnClick = btPanClick
      end
      object btMenor: TbsSkinSpeedButton
        Left = 187
        Top = 0
        Width = 25
        Height = 25
        Hint = 'Zoom Menor'
        SkinData = bsSkinData1
        SkinDataName = 'toolbutton'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 14
        DefaultFont.Name = 'Arial'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
        WidthWithCaption = 0
        WidthWithoutCaption = 0
        ImageIndex = 18
        RepeatMode = False
        RepeatInterval = 100
        Transparent = False
        Flat = False
        AllowAllUp = False
        ShowHint = True
        ParentShowHint = False
        Down = False
        GroupIndex = 1
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        OnClick = btMenorClick
      end
      object btMaior: TbsSkinSpeedButton
        Left = 162
        Top = 0
        Width = 25
        Height = 25
        Hint = 'Zoom Maior'
        SkinData = bsSkinData1
        SkinDataName = 'toolbutton'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 14
        DefaultFont.Name = 'Arial'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
        WidthWithCaption = 0
        WidthWithoutCaption = 0
        ImageIndex = 19
        RepeatMode = False
        RepeatInterval = 100
        Transparent = False
        Flat = False
        AllowAllUp = False
        ShowHint = True
        ParentShowHint = False
        Down = False
        GroupIndex = 1
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        OnClick = btMaiorClick
      end
      object btRegua: TbsSkinSpeedButton
        Left = 212
        Top = 0
        Width = 25
        Height = 25
        Hint = 'R'#233'gua'
        SkinData = bsSkinData1
        SkinDataName = 'toolbutton'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 14
        DefaultFont.Name = 'Arial'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
        WidthWithCaption = 0
        WidthWithoutCaption = 0
        ImageIndex = 10
        RepeatMode = False
        RepeatInterval = 100
        Transparent = False
        Flat = False
        AllowAllUp = False
        ShowHint = True
        ParentShowHint = False
        Down = False
        GroupIndex = 1
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        OnClick = btReguaClick
      end
      object btVertex: TbsSkinSpeedButton
        Left = 87
        Top = 0
        Width = 25
        Height = 25
        Hint = 'Editar Vertices de Um Gr'#225'fico Selecionado'
        SkinData = bsSkinData1
        SkinDataName = 'toolbutton'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 14
        DefaultFont.Name = 'Arial'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
        WidthWithCaption = 0
        WidthWithoutCaption = 0
        ImageIndex = 0
        RepeatMode = False
        RepeatInterval = 100
        Transparent = False
        Flat = False
        AllowAllUp = False
        ShowHint = True
        ParentShowHint = False
        Down = False
        GroupIndex = 1
        ShowCaption = True
        Glyph.Data = {
          06030000424D06030000000000003600000028000000100000000F0000000100
          180000000000D002000000000000000000000000000000000000C8D0D4C8D0D4
          C8D0D4C8D0D4000000C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
          D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4000000000000C8D0D4C8
          D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
          C8D0D4C8D0D4000000C8D0D4000000C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
          D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4000000C8D0D4C8D0D400
          0000C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
          C8D0D4C8D0D4000000C8D0D4C8D0D4C8D0D40000000000000000000000000000
          00000000C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4000000C8D0D4C8D0D4C8
          D0D4C8D0D4C8D0D4C8D0D4C8D0D4000000C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
          C8D0D4C8D0D4000000C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4000000C8D0
          D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4000000C8D0D4C8D0D4C8
          D0D4C8D0D4C8D0D4000000C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
          C8D0D4C8D0D4000000C8D0D4C8D0D4C8D0D4C8D0D4000000C8D0D4C8D0D4C8D0
          D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4000000C8D0D4C8D0D4C8
          D0D4000000C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
          C8D0D4C8D0D4000000C8D0D4C8D0D4000000C8D0D4C8D0D4C8D0D4C8D0D4C8D0
          D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4000000C8D0D4000000C8
          D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
          C8D0D4C8D0D4000000000000C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
          D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4000000C8D0D4C8D0D4C8
          D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
          C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
          D4C8D0D4C8D0D4C8D0D4}
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        OnClick = btVertexClick
      end
      object bsSkinMenuSpeedButton2: TbsSkinMenuSpeedButton
        Left = 25
        Top = 0
        Width = 37
        Height = 25
        Hint = 'Tabela'
        SkinData = bsSkinData1
        SkinDataName = 'toolmenubutton'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 14
        DefaultFont.Name = 'Arial'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
        WidthWithCaption = 0
        WidthWithoutCaption = 0
        ImageIndex = 43
        RepeatMode = False
        RepeatInterval = 100
        Transparent = False
        Flat = False
        AllowAllUp = False
        PopupMenu = pmTabelas
        ShowHint = True
        ParentShowHint = False
        Down = True
        GroupIndex = 0
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        OnClick = bsSkinMenuSpeedButton2Click
        SkinPopupMenu = pmTabelas
        TrackButtonMode = False
      end
      object btConfigGraf: TbsSkinMenuSpeedButton
        Left = 273
        Top = 0
        Width = 35
        Height = 25
        Hint = 'Configura'#231#227'o de Gr'#225'ficos'
        SkinData = bsSkinData1
        SkinDataName = 'toolmenubutton'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 14
        DefaultFont.Name = 'Arial'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
        WidthWithCaption = 0
        WidthWithoutCaption = 0
        ImageIndex = 0
        RepeatMode = False
        RepeatInterval = 100
        Transparent = False
        Flat = False
        AllowAllUp = False
        ShowHint = True
        ParentShowHint = False
        Down = True
        GroupIndex = 0
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        Enabled = False
        OnClick = btConfigGrafClick
        SkinPopupMenu = pmGraficos
        TrackButtonMode = False
      end
      object btGrafico: TbsSkinMenuSpeedButton
        Left = 237
        Top = 0
        Width = 36
        Height = 25
        Hint = 'Desenhar Gr'#225'ficos'
        SkinData = bsSkinData1
        SkinDataName = 'toolmenubutton'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 14
        DefaultFont.Name = 'Arial'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
        WidthWithCaption = 0
        WidthWithoutCaption = 0
        ImageIndex = 16
        RepeatMode = False
        RepeatInterval = 100
        Transparent = False
        Flat = False
        AllowAllUp = False
        Down = False
        GroupIndex = 1
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        Layout = blGlyphRight
        SkinPopupMenu = ppGraficos
        TrackButtonMode = False
      end
    end
    object bsSkinToolBar5: TbsSkinToolBar
      Left = 415
      Top = 2
      Width = 322
      Height = 25
      TabOrder = 2
      SkinData = bsSkinData1
      SkinDataName = 'toolpanel'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      DefaultWidth = 0
      DefaultHeight = 0
      UseSkinFont = True
      RealHeight = -1
      AutoEnabledControls = True
      CheckedMode = False
      Checked = False
      DefaultAlignment = taLeftJustify
      DefaultCaptionHeight = 22
      BorderStyle = bvRaised
      CaptionMode = False
      RollUpMode = False
      RollUpState = False
      NumGlyphs = 1
      Spacing = 2
      Caption = 'bsSkinToolBar1'
      DragMode = dmAutomatic
      CanScroll = False
      HotScroll = True
      ScrollOffset = 0
      ScrollTimerInterval = 50
      WidthWithCaptions = 0
      WidthWithoutCaptions = 0
      AutoShowHideCaptions = False
      ShowCaptions = False
      Flat = False
      Images = ImageList2
      object btFull: TbsSkinSpeedButton
        Left = 1
        Top = 1
        Width = 25
        Height = 23
        Hint = 'Full Extent do Mapa'
        SkinData = bsSkinData1
        SkinDataName = 'toolbutton'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 14
        DefaultFont.Name = 'Arial'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
        WidthWithCaption = 0
        WidthWithoutCaption = 0
        ImageIndex = 32
        RepeatMode = False
        RepeatInterval = 100
        Transparent = False
        Flat = False
        AllowAllUp = False
        ShowHint = True
        ParentShowHint = False
        Down = False
        GroupIndex = 0
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        OnClick = btFullClick
      end
      object btAtivo: TbsSkinSpeedButton
        Left = 26
        Top = 1
        Width = 25
        Height = 23
        Hint = 'Extent do Tema Ativo'
        SkinData = bsSkinData1
        SkinDataName = 'toolbutton'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 14
        DefaultFont.Name = 'Arial'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
        WidthWithCaption = 0
        WidthWithoutCaption = 0
        ImageIndex = 31
        RepeatMode = False
        RepeatInterval = 100
        Transparent = False
        Flat = False
        AllowAllUp = False
        ShowHint = True
        ParentShowHint = False
        Down = False
        GroupIndex = 0
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        OnClick = btAtivoClick
      end
      object btSelecionado: TbsSkinSpeedButton
        Left = 151
        Top = 1
        Width = 25
        Height = 23
        Hint = 'Zoom nos Shapes Selecionados'
        SkinData = bsSkinData1
        SkinDataName = 'toolbutton'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 14
        DefaultFont.Name = 'Arial'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
        WidthWithCaption = 0
        WidthWithoutCaption = 0
        ImageIndex = 17
        RepeatMode = False
        RepeatInterval = 100
        Transparent = False
        Flat = False
        AllowAllUp = False
        ShowHint = True
        ParentShowHint = False
        Down = False
        GroupIndex = 0
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        OnClick = btSelecionadoClick
      end
      object btLimpar: TbsSkinSpeedButton
        Left = 176
        Top = 1
        Width = 25
        Height = 23
        Hint = 'Limpar Sele'#231#227'o'
        SkinData = bsSkinData1
        SkinDataName = 'toolbutton'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 14
        DefaultFont.Name = 'Arial'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
        WidthWithCaption = 0
        WidthWithoutCaption = 0
        ImageIndex = 24
        RepeatMode = False
        RepeatInterval = 100
        Transparent = False
        Flat = False
        AllowAllUp = False
        ShowHint = True
        ParentShowHint = False
        Down = False
        GroupIndex = 0
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        OnClick = btLimparClick
      end
      object btAdd: TbsSkinSpeedButton
        Left = 251
        Top = 1
        Width = 25
        Height = 23
        Hint = 'Adicionar Camadas Locais'
        SkinData = bsSkinData1
        SkinDataName = 'toolbutton'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 14
        DefaultFont.Name = 'Arial'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
        WidthWithCaption = 0
        WidthWithoutCaption = 0
        ImageIndex = 42
        RepeatMode = False
        RepeatInterval = 100
        Transparent = False
        Flat = False
        AllowAllUp = False
        ShowHint = True
        ParentShowHint = False
        Down = False
        GroupIndex = 0
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        OnClick = btAddClick
      end
      object btQuery: TbsSkinSpeedButton
        Left = 201
        Top = 1
        Width = 25
        Height = 23
        Hint = 'Query'
        SkinData = bsSkinData1
        SkinDataName = 'toolbutton'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 14
        DefaultFont.Name = 'Arial'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
        WidthWithCaption = 0
        WidthWithoutCaption = 0
        ImageIndex = 11
        RepeatMode = False
        RepeatInterval = 100
        Transparent = False
        Flat = False
        AllowAllUp = False
        ShowHint = True
        ParentShowHint = False
        Down = False
        GroupIndex = 0
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        OnClick = btQueryClick
      end
      object btLocalizar: TbsSkinSpeedButton
        Left = 226
        Top = 1
        Width = 25
        Height = 23
        Hint = 'Localizar'
        SkinData = bsSkinData1
        SkinDataName = 'toolbutton'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 14
        DefaultFont.Name = 'Arial'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
        WidthWithCaption = 0
        WidthWithoutCaption = 0
        ImageIndex = 4
        RepeatMode = False
        RepeatInterval = 100
        Transparent = False
        Flat = False
        AllowAllUp = False
        ShowHint = True
        ParentShowHint = False
        Down = False
        GroupIndex = 0
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        OnClick = btLocalizarClick
      end
      object bsSkinMenuSpeedButton1: TbsSkinMenuSpeedButton
        Left = 276
        Top = 1
        Width = 37
        Height = 23
        Hint = 'Adicionar Camadas Remotas'
        SkinData = bsSkinData1
        SkinDataName = 'toolmenubutton'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 14
        DefaultFont.Name = 'Arial'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
        WidthWithCaption = 0
        WidthWithoutCaption = 0
        ImageIndex = 35
        RepeatMode = False
        RepeatInterval = 100
        Transparent = False
        Flat = False
        AllowAllUp = False
        ShowHint = True
        ParentShowHint = False
        Down = True
        GroupIndex = 0
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        OnClick = bsSkinMenuSpeedButton1Click
        SkinPopupMenu = ppConexao
        TrackButtonMode = False
      end
      object btZoomAnterior: TbsSkinSpeedButton
        Left = 101
        Top = 1
        Width = 25
        Height = 23
        Hint = 'Zoom Anterior'
        SkinData = bsSkinData1
        SkinDataName = 'toolbutton'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 14
        DefaultFont.Name = 'Arial'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
        WidthWithCaption = 0
        WidthWithoutCaption = 0
        ImageIndex = 8
        RepeatMode = False
        RepeatInterval = 100
        Transparent = False
        Flat = False
        AllowAllUp = False
        ShowHint = True
        ParentShowHint = False
        Down = False
        GroupIndex = 0
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        OnClick = btZoomAnteriorClick
      end
      object bsSkinSpeedButton2: TbsSkinSpeedButton
        Left = 126
        Top = 1
        Width = 25
        Height = 23
        Hint = 'Refazer Zoom'
        SkinData = bsSkinData1
        SkinDataName = 'toolbutton'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 14
        DefaultFont.Name = 'Arial'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
        WidthWithCaption = 0
        WidthWithoutCaption = 0
        ImageIndex = 38
        RepeatMode = False
        RepeatInterval = 100
        Transparent = False
        Flat = False
        AllowAllUp = False
        ShowHint = True
        ParentShowHint = False
        Down = False
        GroupIndex = 0
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        OnClick = bsSkinSpeedButton2Click
      end
      object btZoomMais: TbsSkinSpeedButton
        Left = 51
        Top = 1
        Width = 25
        Height = 23
        Hint = 'Zoom +'
        SkinData = bsSkinData1
        SkinDataName = 'toolbutton'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 14
        DefaultFont.Name = 'Arial'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
        WidthWithCaption = 0
        WidthWithoutCaption = 0
        ImageIndex = -1
        RepeatMode = False
        RepeatInterval = 100
        Transparent = False
        Flat = False
        AllowAllUp = False
        ShowHint = True
        ParentShowHint = False
        Down = False
        GroupIndex = 0
        ShowCaption = True
        Glyph.Data = {
          0E060000424D0E06000000000000360000002800000016000000160000000100
          180000000000D805000000000000000000000000000000000000E3DFE0E3DFE0
          E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DF
          E0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE00000E3DF
          E0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3
          DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0
          0000E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0
          E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DF
          E0E3DFE00000E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DF
          E0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3
          DFE0E3DFE0E3DFE00000E3DFE0E3DFE0E3DFE0E3DFE0808080E3DFE0E3DFE0E3
          DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0808080
          E3DFE0E3DFE0E3DFE0E3DFE00000E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0000000
          E3DFE0E3DFE0000000E3DFE0E3DFE0E3DFE0E3DFE0000000E3DFE0E3DFE00000
          00E3DFE0E3DFE0E3DFE0E3DFE0E3DFE00000E3DFE0E3DFE0E3DFE0E3DFE0E3DF
          E0E3DFE0000000000000000000E3DFE0E3DFE0E3DFE0E3DFE000000000000000
          0000E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE00000E3DFE0E3DFE0E3DFE0E3
          DFE0E3DFE0E3DFE0000000000000000000E3DFE0E3DFE0E3DFE0E3DFE0000000
          000000000000E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE00000E3DFE0E3DFE0
          E3DFE0E3DFE0E3DFE0000000000000000000000000E3DFE0E3DFE0E3DFE0E3DF
          E0000000000000000000000000E3DFE0E3DFE0E3DFE0E3DFE0E3DFE00000E3DF
          E0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3
          DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0
          0000E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0
          E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DF
          E0E3DFE00000E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DF
          E0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3
          DFE0E3DFE0E3DFE00000E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3
          DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0
          E3DFE0E3DFE0E3DFE0E3DFE00000E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0000000
          000000000000000000E3DFE0E3DFE0E3DFE0E3DFE00000000000000000000000
          00E3DFE0E3DFE0E3DFE0E3DFE0E3DFE00000E3DFE0E3DFE0E3DFE0E3DFE0E3DF
          E0E3DFE0000000000000000000E3DFE0E3DFE0E3DFE0E3DFE000000000000000
          0000E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE00000E3DFE0E3DFE0E3DFE0E3
          DFE0E3DFE0E3DFE0000000000000000000E3DFE0E3DFE0E3DFE0E3DFE0000000
          000000000000E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE00000E3DFE0E3DFE0
          E3DFE0E3DFE0E3DFE0000000E3DFE0E3DFE0000000E3DFE0E3DFE0E3DFE0E3DF
          E0000000E3DFE0E3DFE0000000E3DFE0E3DFE0E3DFE0E3DFE0E3DFE00000E3DF
          E0E3DFE0E3DFE0E3DFE0808080E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3
          DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0808080E3DFE0E3DFE0E3DFE0E3DFE0
          0000E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0
          E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DF
          E0E3DFE00000E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DF
          E0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3
          DFE0E3DFE0E3DFE00000E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3
          DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0
          E3DFE0E3DFE0E3DFE0E3DFE00000E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0
          E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DF
          E0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE00000}
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        OnClick = btZoomMaisClick
      end
      object btZoomMenos: TbsSkinSpeedButton
        Left = 76
        Top = 1
        Width = 25
        Height = 23
        Hint = 'Zoom -'
        SkinData = bsSkinData1
        SkinDataName = 'toolbutton'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 14
        DefaultFont.Name = 'Arial'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
        WidthWithCaption = 0
        WidthWithoutCaption = 0
        ImageIndex = -1
        RepeatMode = False
        RepeatInterval = 100
        Transparent = False
        Flat = False
        AllowAllUp = False
        ShowHint = True
        ParentShowHint = False
        Down = False
        GroupIndex = 0
        ShowCaption = True
        Glyph.Data = {
          0A070000424D0A07000000000000360000002800000019000000170000000100
          180000000000D406000000000000000000000000000000000000E3DFE0E3DFE0
          E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DF
          E0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3
          DFE0E3DFE000E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DF
          E0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3
          DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE000E3DFE0E3DFE0E3DFE0E3DFE0E3DF
          E0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3
          DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE000E3DF
          E0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3
          DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0
          E3DFE0E3DFE0E3DFE000E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3
          DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0
          E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE000E3DFE0E3DFE0E3DFE0E3
          DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0
          E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DF
          E000E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0000000000000000000000000
          E3DFE0E3DFE0E3DFE0E3DFE0000000000000000000000000E3DFE0E3DFE0E3DF
          E0E3DFE0E3DFE0E3DFE0E3DFE000E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0
          000000000000000000E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE00000000000
          00000000E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE000E3DFE0E3DFE0
          E3DFE0E3DFE0E3DFE0E3DFE0000000000000000000E3DFE0E3DFE0E3DFE0E3DF
          E0E3DFE0E3DFE0000000000000000000E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3
          DFE0E3DFE000E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0000000E3DFE0E3DF
          E0000000E3DFE0E3DFE0E3DFE0E3DFE0000000E3DFE0E3DFE0000000E3DFE0E3
          DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE000E3DFE0E3DFE0E3DFE0E3DFE0E3DF
          E0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0808080E3DFE0E3DFE0808080E3DFE0E3
          DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE000E3DF
          E0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3
          DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0
          E3DFE0E3DFE0E3DFE000E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3
          DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0
          E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE000E3DFE0E3DFE0E3DFE0E3
          DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0808080E3DFE0E3DFE0808080
          E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DF
          E000E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0000000E3DFE0E3DFE0000000
          E3DFE0E3DFE0E3DFE0E3DFE0000000E3DFE0E3DFE0000000E3DFE0E3DFE0E3DF
          E0E3DFE0E3DFE0E3DFE0E3DFE000E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0
          000000000000000000E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE00000000000
          00000000E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE000E3DFE0E3DFE0
          E3DFE0E3DFE0E3DFE0E3DFE0000000000000000000E3DFE0E3DFE0E3DFE0E3DF
          E0E3DFE0E3DFE0000000000000000000E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3
          DFE0E3DFE000E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE00000000000000000
          00000000E3DFE0E3DFE0E3DFE0E3DFE0000000000000000000000000E3DFE0E3
          DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE000E3DFE0E3DFE0E3DFE0E3DFE0E3DF
          E0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3
          DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE000E3DF
          E0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3
          DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0
          E3DFE0E3DFE0E3DFE000E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3
          DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0
          E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE000E3DFE0E3DFE0E3DFE0E3
          DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0
          E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DF
          E000E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0
          E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DF
          E0E3DFE0E3DFE0E3DFE0E3DFE000}
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        OnClick = btZoomMenosClick
      end
    end
  end
  object bsCompressedStoredSkin1: TbsCompressedStoredSkin
    CompressedFileName = 'ExOS.skn'
    Left = 264
    Top = 104
    CompressedData = {
      78DAEC7D094013C7F7FFC3288A403815BFF5A044C1D66FAF6FBFBDAD987AB5DA
      DA6AABB56A0FADDA43DADAD67A55ADC88DB7A020C88D2097E089A08228870A2A
      02CA11020488DC50018D78B4BFFFCCEC26D9CD01095234FF2F0F7677E6CD9BB7
      2F9F6CDECCCEBCD9E500A24933E33F03427F70009E41C764B4FD86363D1844F8
      2FCD0548E7525B3E501BA6FFFBBFFF8386FA7A109408203F2F1FAEE55E83CB39
      9721233D03D2CEA6416444242A2B416579A82C1795E540F6A54B70F1C2052493
      8E64CE42D4C1833096F73484ECF703FFBDDE70F99BFF42AEC31B90FF2B1F78A3
      464030E25FFD01E5574E84A20DEF41E1FAF740E8F2314C7C66384C183B1C5E1B
      3D0C84AEB3A1946C1F43C5F60550E4310FF25DE7C215A74F20DBF163B8B86936
      646D9C0599683BFACB7B7078C5BB10B57C0A447E3F1922D016FACD3B10B4940F
      A2ED0B41B4632154A0AD6CDB0228DD3A1F8A3D3F831BEEF3A0C0ED53B8E63217
      AE3ACD81B4DF3F8494B533E1F49A0F2069D5FB90B872069C40DB919FDF83D81F
      A741C8B2772010E9DBB7C81E443BBF80CADD5FA16D11547A2D86AA3D4BA0D27B
      094C7C76044C409FA16AEF3278157D862A9F6F813F6E2454EFFB1EAAFD1CA0DA
      FF4710EFFF09C4813F83386825DC0C590537C3D6424DF8EF5013B1016A23FF80
      B35BBE8754CFEFE0B8F35238BFFD4738E6B414E2377D0D717F2C8674AF9590B1
      673564F8AC43DBEF90E0F62364EEDB0829DEEB202BD0198E6E5F8D8E2E606733
      0AE16F0D3EEE7F40F8779340ECB3046D4BE1B531C3A02EF80738B7EB67C8DCEF
      0859412E486623EC457275213F4073D42A688E5E0D6D4736C198A74722FE46D8
      EEE9062101E87BF4F186B6A39BA01595B5A2A3E4943BDA3CE00E3ADE39ED01F7
      CFED84FBE777C23D74BC878E0F2FEC8160544F2040D74A3EBA56AEE54276F625
      C8C840D748DA5938752A198E1E3D020909F1508264F2904C2E92C9B99C039790
      5C3A923B8BE4CEA49C8193492721223202C909905C3E92BB86CA3350791AC41D
      3A0425E85ACD43D76A2EBA5673D0B57AE95236A4A3EBF52CBA5E93934FC1C183
      51C80E01922B81C2C242B871E30614141420BBD0F58D74E5E2EBF832AE87AEE3
      8B17212B2B0B323333910E6C6B1AD283ED3D0549494970F2E4493871E2044447
      474344440484858541606020ECDFBF1FB66DDB467E3F7A985E74FE970ED17F89
      CD89898968CF77767EF9BDE9BA43FFFAD7BBC86AF465EAE93DEBFCCEA4499326
      EB084D993A6DD52B18FA51A346E9BDF1ABFDB867ED9FD119B27FEE9DA9FF717E
      496FD1A2457ABFDABDF9E61B33DEFF4047E8FD196F8C1F37699AB3DECA952B3F
      5E39F3838FE6CCFB4C8768DECCB7DF717EC1D5D575E5BC8F3F9EB7F0CB45BA44
      5FCC9930C979F7EEDD7317CC9BF39DC3FA15BFE80E6D58E13063A28DBFBFBFC5
      C24F97F6D335FAF1C3E79C2323232D167CF4B5CED9EEF0D173CEA891B5F8ECB5
      653A67FBF7339F77AEAFAFB7F8ECCD6F74D6F67963BFEDB3BDCFF63EDBFB6CEF
      B3BDCFF63EDBFB6CEFB3BDCFF63EDBFB6CEFB3BDCFF63EDBFB6CEFB3BDCFF63E
      DBFB6CEFB3BDCFF63EDB7BD0F611A36C74D6F651362374D676BDB4B53A6B3B07
      7ED459DB07F017EBACED031DE7EAACED0669D375D6F6C160AFB3B61BF15FD659
      DBB98E763A6BBB69DA533A6BBB3998E8ACED967C8EEEFA777B7D9DB5DD4C9FAB
      B3B60FCF1DA2B3B6DBEE1BA9B3B6BFB0D856676D7F63DCF33A6BFBA4F65774D6
      F60FCEBCADB3B67FEA3245676D5F34F3039DB57DF9D0393A6BFB2A67DDEDCF2C
      FF7DA0CEDAFEE52F863A6BFBC7DFE96EFF7DDA220B9DB57DFC3C2B9DB5FDC50F
      875BCC7B4B376D1F3DD57AAEAEDA6EF5F6689DB5DDE8BF6375D67618F76F9DB5
      FD9615E8ACED7BCC75D7F6378D75D7F6B2813A6BBB8D533F98FBD99B3A68FB47
      FFB6F17387B99FCF5CA273B62F9F377E76BF1F60EE57F317EB9CED3F7E3EF369
      875930F7E79F7ED73DDB7FFAE1E9EBAFC0DCDF68FAE3B7DF36A23F94D828656D
      DC48761B5DFEA0B2B878A36A11451E23C7CCA828DCD80D4235674DF817F0AEE5
      5ED13DCABDC62B7E1F78570F65EB1E1DBACACB9900BCCB97E232FD3311C5651E
      3880F799FE07CCE2FCE3E2FC33CD5062D020C48A3B8E13C7338F23C1B8385522
      6C1E2B27CFA82CC4D94CA27750E671A4C91F6D668330C70C993328F380FFF14C
      290DCACCF2C7E271972EF3525E045EE2FE0C44B1C73232D07F6C866906FA0FCF
      38E63710A58E1D434944E1A6A6A6C7320885A3B40A11368F959367D41412CE31
      74FAF063D88AF0F063B17EC7C24D914886696CC6C081E15800959A22F3706986
      5FC60973DE611BE0E544A49FD7354A8FC8E1855900EF50D6B9344C47D3D8C4A5
      F647654965628828F054E6B82A0B8F327361E84F9625C97D8C5259F573598778
      7B07002F3043FFACAE917146206FE5CA95BC80F4D40129BE875342620E1F4E39
      9C3A2024E4B0AF6F4CC8800146A929888C62428C6262424206F81E46C901A921
      2131AA44D83C564E9E515968947A3835D52804A921BA528D8C060C381C63844E
      75189D33C6E8704ACC61C43CEC1B7318951F4E4D4116A4A607F01C1D1D79D9E7
      CE9C7E92E80CBD7546D1E7B289ED91474E25EB1A9D0ABDC4DBBB772FEF426A52
      54D2DEF8A0244EFC604E527CFC5E4ED2E0784E50521487333828686FD4C9A4A4
      A0C1417BF7260D8EDA1B34F824125625C2E6B172F28CCAC2780EB2626F103A7B
      52D2DEA8C1495151F127E3834EC673A2E2D1D938519CA493497B072303839282
      E207A3BA9CF8BD49A917A86BC6E48C61FFE0FEFD830DA313FAF7F731F449F009
      36F439E3E3E3131C7D2601A512A2FB07FB449FF1094E300C3634ECEF73469508
      9BC7CA3132AA0ACFE0939E21360407F7373C138CF886C13EFDCF9C890EF609EE
      8F8A0D7DFAA30A09C1E854C1C1D13EFD130CCF9850D7CCC18B59BA479106BC51
      A346F15CDDDD9E08B2941D2D2D650C94C4794BB73D4FED91E6F071882BEFD765
      4FF386EA2691DFAA15A6E1F48676C3E5F9E1248D93D2044B922DC2E23173F28C
      BA42A67A79525A874532162F2834F493612386D1841223A80C3A8C200C721C21
      2D1DC648A81491F29473236841E542995E79192D21131DC1A8318C3EE9270D0D
      0D6B478E1C396A14FEA76914C5A03692C7A5641B45E5558BB078CC9C3CA3BA50
      7A02AA84326414FD2F678C92594892A3D662DBC78C19636B6D6D8DF6E86FCC18
      EB31B6B6248D39D698618B8A3113EF91A0B5AD4A11164F41429A5159684DEADB
      5A8FC6BA111B2B24FAC6E03C3A1D3E31616249CC402CDBD1C4F6D75E7BFDB5D7
      5FB57BFDD5D75FC364F7DAAB9883E8D5D7E8BD1DC527F4FAEBAA45D83C564E9E
      51598835E27F72B4B3A3CE4189BFFAEA6BAFBEFE2A91C3155F7D5DAAE7F5D7EC
      88EDABD7AC5EBD86DAD6ACC189D58443F2984395533BEAA85284C553CA511995
      859406CA068614436E35B3407A4262FBBA759BD629D226A584527653673CE5DC
      267567507D8A4DCA36498B3711994DD876C7B59B51EBEA4876E8B099DA517F84
      4D27A50254425984C553CCC9326A0A654A36D302F4F9A46773948BD3026B1D91
      ED7A6B3D9C3CB6906D8B27DEA1B434E9E4E481F3140F273C9CD051BD888CC7CA
      31332A0A3D3DF1B9C999F139301FA7B15EAC96EC9CF0B991A8938727DA61DE5A
      BDE14EA0B76DEDB66DDBB76DDDBA75FBB66D3BD0711B4A6CDDB6031D7720263A
      60DEB6ED244D8AD588B078AC9C3CA3AA70FB56EAFC3881B828BD83A4F0612B29
      C099AD884732288D4AD66ED3FB7630E8E9ED5ABB6B9717A25D3B77EDDAB57B97
      D7AEDD5EBBBD308770F1613762EDDAE985C476EF260C6511368F9563645415EE
      DE895523E558FB4EC425A7D88DAC212743E7C646A1239641157779EDDCB5D64B
      4F6FEE42FCDC4EEFB56BBD758990B9C8EAE136D43347515687C89B7AE6A82DE8
      C1A499A30CA9E70FDB83E2F38AF5085F341820834B6DFD404EF879AB1DA08A4C
      1C6FA9E4731C452AF97A8E692AF9E0E8A81DBF8FFAA88FFAA88FFAA88FFAA88F
      748CB4ECEFA9E937EAA9E96772D4F44B073A3E54C9B7761C44DEE8F1B225957F
      B93FD543C63D653EE38D1E602A7FA3C7FF01B5497BC8F8ED0659F39F236FEEB8
      5E500005F82D0A57AFC215C4C76FF0C8C9CE86D4941448397306B2163C0F1716
      BC00173F7F112E7EF1125CFAF23F90B1F005B8F4D5CB90B3E45548FFF2BF70F9
      9B37E0CA776FC1D5E5E3E1EAF7E32177F9DB90B2E80DC8FDC11E2E7E3F011D27
      C0B51FEDE1DA4F13216F051FF27E7E07F27F9D0C052BA742C1AA69707DF5BB70
      63CD7B7063ED74285C37038AD6BF8FB60FE0E8D28990BFEE0328F9E32338E930
      0DE2BF7F17221C6642A09F2F9C39950CA79393A0A4A8100AAF1740D10624E738
      0B049B6783C0693694BA7C0202E74FA0D4750E9479CC03A1DBA77079D31CF0FA
      6626EC5DFF0384ED7086BCE4383819BE0FCAB72E800AF26690CFD1F17310EDFC
      128A3C1740E5AEAFA0CA6B3179B34795F7D7E0B9D01E5C3F7B1BDCE64F009779
      6F43C1F6C5B0F50B3E24AE9B0BDE4BA6428ACB22D8B1643AF87EFF21EC5EF63E
      ECFFF16338E6BC0C52E2C2E0C4E14350BD770954FB2C05B1EF32B8B9EF1BA8D9
      FF1D08BD9782DB8209501BB81C6A0296833B3A476D90037933476DD00F50E4FD
      0DD485AE800CB72F41B4FF0728F6F91E7CBE9B8ECE331544813F81D0FF07C8DA
      FE0DEC583A1D2E78FD08116B17C255FF35703DDC0902DCD640F8F63F4078F114
      04FAEF838B99E9501FFA13D485FC08F5612BA03EFC676888F815EA0FFC0A0D91
      BF4163F41A688A5E0B8D316BA129661D34C5FE0E55E1ABA0296E3DF8FCF0219C
      F7DF0019C1CEE0B1612514672543E0DE9D10E4EF0B074202A1E9D006688EDF08
      CD097F40F3E14DE0FDD347D0727433341FD90C2DC79CA1F9A813ECFF6D2E6C77
      F810FE3CE10A7F26BAC1CD84CD507BC4056E256F818BE1AE9019B1057638AE82
      AD9B5681DBFA5FC1F5F75FC0678B23145DBD0082BC6C101615A07AAEE0FDCB27
      B0E3C759702BC90376FE341B76AEF818BC7E9903BB7EFE045A4F6F835BA7B682
      F7AF736137E2B59ED90EAD293B60E7CF73A02D7527B4A2ADEDEC2E283CBA1B92
      039CE06CA83B24ED7782447F4738E1E708176377C1B9035B213D723B6445EF82
      1DAE1BA1F4EA7908D9B71B448557A0E85A36EC5D331FDAD27643E0C62FA1FDBC
      37B49DF382F6F43DD098B21B6E67FA427B860FDCBEE007D5493BA0397D1FDC4C
      D90397A3DDE05ADC16F074DE0881FBBC2134D00F620F8643809F0F54084BA0AC
      B4044A4B8AA04C580AC25201940A4AA0A8F006E45DCB858CF4F3E8B7781A2457
      42A0322B1A6E0AF3618BCB461014E6416870009C4D3D03A28A32F41BBE0CE7CF
      A59237ACE4E55D43BFF31CB874E9225CB972851A11D0FBE6FB595AD1379F50F5
      80D45FF9AB95A52997A315CD9B2BABBFF3AD67475B8F7AEA5F4F8D1A31C2BA4B
      1A31EA292B4B0BAC81AE1FB2F8BD896FBCF0C20B6F4DB09FF6EEF4F73AA7E9D3
      DF9D36F1AD7F8FB1E21205A8FE7EF7CD4B177DF0C1CCC54B9DDCDC3DB66CED9C
      B66DDBB6D5C365E9076FD89870387371FD10DF2DAE4EDF7EEBE4E2BECD3F282C
      FC78E714792A3935253268DB727B1B6C00C0B1E36101DB5C9D1C36BB7AF80685
      477635AB9D7AFE4671B1E046B2FF0F6FFF8BC3F9042029E55498AFCB774B7F5E
      F5FBC1A8CC8C0B5D505656E6A58AF2B29234BFC5634D39DF009C2C480DDFF6C3
      A21F57EF4AF78ECFBBAD015D6DBD242A2F4D769B3094330BE0F48DF3473C16CF
      59BDDEFBEAE1BABAC6FE5D506363436DDBB5D6F4F2A2C08F4693FA4505414E73
      56FCEEDDF4DA8001FAFAF7BB22FD014D7577DB9082E49F5E3745F5CF14A5FAAE
      FA6CED1483E6E6817FFFDD7560DEA0BF9BF59BEADB5A45C55B275AE2FA37225D
      E77C31F5DEE0BFFF1EA45968DFA0810F9AEE5EBB240CFEE05F08BFA4C2A09F3F
      FB62AA64F0A0419AC606FE3D70407F6440C4129B8F51FD34BF65EB36F8A0FA9A
      0717FEDDFC6ACDD54B11CB47A3FA89C91E133F8FAE36D4263871D0C0D76A132E
      4738D922FB13235DDFD8E9B5C96890360A060EA88BBF14E16487EB1F771EF74E
      ECCB465A45470ED47F35FEF201A7B1A8FE8970A767DE89BBA95DFDBFF5EBE273
      C21DA8FA0E63BB533F2FBBAFBECED6EFA7DF70F8625FFDBEFA7DF5FBEA3FF6FA
      76DDAB1FB6DC8ED45F6EAB75FB49EA077D674BEA7F3BE61DAF97B56BBF07E9D7
      DFBE10B864345D7F41CCDE3F0DB4F2DF031A1332B77FF0F4C7C4FE319F4FAA7A
      E52F2D0C40FD8F3AEFDDBFD95BE1FE4FF8E6E75F7A69F2572D068334AFDEFCDA
      B5F4B5CB5EB0C4F5235D5F78F13F1BC4FFFD4B530583FE46DD8FABBB7E996167
      8AFB6FA73CED47BE343C57FCDF168D340C3678386890FE1FEBD72E9B6883FBAF
      2753FC178D1EFE1C52F0D52B861AD09F927B2D8E53D6AFFDE5C3178691FEEFF9
      70B7372C873FF7E2A13D9BEEF8F8DCE9827C7C7CC45F7EF9FBEA1FBF7E6F9C15
      D5FF4ED93773B4D9F097FEF3D28643EDED955D50FB95431B3FFBE2B3398B174F
      7B86F4DFCF94DC08779BF0B4D990E12F7DFECEC235F3BBA0350B3E5FF729FFFD
      0FBF46F5ADF0FDC3D9D2D282806F278C1E6A36C4BCEBBB3E63530B2BDEB36F4F
      5FBC74C9B4679FB2988DEE9FAEDF2A3DE7EFF4DE9B6379A39E4277805DDCFDF1
      C63CFB86FDCC254E9B97BEF702EF577CFF957FEB56696A90C7E6251FCDC0AFA3
      ECE2FEEF83995F7FEB826EF3DC1D668E1FBB92DC3F5EBF75AB24ED7890BFEFB6
      AD5DD3B61DFBFC030202FCB7BA7C3D6D277DFF8A3E41D1F9E4C8E31A5264E4F1
      F0205FF76F3F97DD3FE75F17149E4BD13C9038F278987FC87EF9FDB79E5E62D2
      C9A3DAD08950E9FDFBA4993556EC11C357D0B698316278DCA2F311C39BE29B50
      5C5C82D257A0AEB60EAA2AAB40582A84C21B85E4BDC0D997B2C9BB7F4F9F3A05
      3E1F8C05EFF7EDE0F4E29721F1CBFFC0F12F5E82C30B5F04FF8F9E851328BF67
      E6337070DE0BE036CD16727E180F971CC683FBFA55B0D3DD19F66EF7848DEBD6
      40C03E1F38FCF94B90B9FC2D38B1E47548FDEE2DC85B3509AEAE7C072EFD3C11
      2EAD980805AB2643C1EAC910F3D56B50B0660A042D78053C673E0F97564E86FC
      75EFC295D553E1DC4FEF40F1C61950B8613A14AE9F0E37D0B1E0F7F72067D554
      C8FC653278CE7A119CDF7F1E8A904CD11FEF43D1A60FA0D8F123583FFD792871
      FA188A9D664389CB5C2871FD144ADCE681CBEC5761E5BB2F80C07D3EFCFADE7F
      A074DB227098F2226C98FD26384C7B19CAF738C0D2292FC3F2E9AFC1B1F59F83
      CBC22950E2F333C4AD9E0F65FEBF8128643D14FAAD818C9DBFC02F1FBF03094E
      DF81D70FF32072E337B06EE967B0E2F3D9B0DA61199CFC810F9E1FBFCC7AF771
      89CB6CB8B8EE7D2875FB040A906DA77F9B0E15DBE6A36D0108B7CC87802513A1
      D4733E5CD8F40988767F05455B1792D1CB32AF2510FDCB87C8863990BD75292C
      41F615ECF90112D62F80B05FE7C0918D5FC0913FBE84D3EEDF4069E05A70FFFA
      7D58BFF05DF8E6FDF1B071D187F0E39CA9707CEB4AD8B7FA6B70FBE92BD8B2EA
      3BD8E6B40182BF9D0C557BF0E8E822A8DEB70C6AFCBF85F01FA7C34D7414EFFB
      161A427F820CD7CF21EAB75920F2FF01C4A1BFC2EA7993E0B2CF4AF8EEC309F0
      FB17D3E1B72F3F821D1E2E10E8EB0D41FBFDC8082579F770D46A68885C051777
      7F0BAD091BA1E6E05A683DE2084DF14E702B711BAC5BFC11EC5CF925387E3B17
      BC905D7E5EDB2134D01F6222C3A1F5F0466838B41E6E9F7481D6134ED09EE802
      774E6F81B6E4AD9017BE11D62F7A1F24E77D61C3D733C177FD3270FE6101F86C
      FC0E025C57C2EEAD6E70EC5014DCC6EF344EDD0A1D6777C0DDB3DBA1236D27DC
      4DC3E91D702FD3076E1EDF02F72FED877B17F7C383EC40B811E701F72F874243
      9A1F141DD909073C7F86FAB3BE70F64C320885A5E49DC7B9B957C97B8FF1BB8D
      F17B8D6BEBEAA0B2AA0A4A8542B8515848DE657C293B1BC4376BA012FDBECACB
      2BA014FDC66EA0DF187E9F317E97711DAA5385EB949692F717E37717E3F71667
      A37AF89DC519191970EEDC39F29E62FC7EE263C78E417C7C3CC4C6C642545494
      EC3DC5414141E43DC57E7E7E809A1BD8B3670F787B7BC38E1D3BC8BB8B9BC446
      8665464537148F62594245B33900FD0F18A0741C204FF4489D82EA868682C1C2
      6AC5E3605942B94E7D97A45CC7A0CEC0A0B4AAAE54F158274B28D7E9DF25F54C
      9DCA419595024165BEE251204B28D7117549CA756A4A6A4A060E1C58A1749425
      94EB904E40793947F1582E4BF44C9DE29BFA37F58BF5F5158FF2848A3E352945
      FFE828136330F56FAAB4AD5CFACFB44BCE51719E51B995EAEB144ECE5551A77C
      D4E49508D39A8A9A8172780796540C24CC95FCDC1295757E53FF7DFE363957C5
      773A70D4E4B5E81A11E4A3EB4476B9086A07090873EDE4DC4A15D7CEA8C9BFAB
      BF3E7F9F9CABEA1A1D3579BDFA3AEB55D6E98F6C43BF2D8352E4E8643FB33A83
      AA3AC244B619A8ACF39BFADF35C240C56FBB6E147F25F2150DD583858532B721
      6C183C983011D60D2A7CC8A8C903289F3440EE9E285F85F6E83B55E1DE84D262
      957588C7537689466231F2B16537C48D653277DB28671AA918071ED09DF374E7
      F374855B814ADCBAF1FD74EB3AE8CEF5A6F5752DE8DEEFA73BBFD3CEFD812ADF
      DB0DBFD3B97F2B57EDDFBAF2A3C5FDFAA88FFAA88FFAE80920E3E63F8D6FB5B6
      B5DFBE23B9DB71EFFE83870FFF42F437227C7CF8F0C1FD7B1D7725776EB7B7B5
      DE32FEB3F93AAEB3DFDDCDF5F34D9B36BDFFFEFB53A72E9AFA26A1E79F7FFE2D
      4C13114D9B366DC68C0F3EF27572FAE2F32F871FC2759C67CEFC75FA8FEF4E99
      3279F2243EFF9D77DEB1B79FF0F6F8FFBEF2CA8B885E7AE9A517ECEC5E78E38D
      37ECFEF39FFF7C356EDC38175CC77AC4F0E16E6E2E2E2E0B17CEDFE03CCFC7E7
      D34F376EDC3877EEDC39733EFE78CD9A55AB366C98F5C9BA750B10B9BABAB91F
      EAEEE7E9A36E534BDC88CF3E5CDD1539F907B4C8AB8CFCECBDA196DC2EC864D8
      0CC791D24A2DB1B3AD9E3635331B42FED146F67887F6E48079E6165696C33EA3
      2BB5C4FEC1FBD7535D93CD68DEB8E7E94AD69BBF7BE5DF63103DF32C4DCF3C23
      4BE20C613C33668CEDD8D1E39EF70DC07546FCF1137FC2F8F1E35F7E793C4D28
      F532C9BD4CFEC653C9F1AFBEF6FA57CF7DE48FEBECDBFDABC3375F7FBDE4EBC5
      4BD0EEEB2568BF18FDA33F44244F36B45B6ABFECAB454EB8CEDE35DEBF2CFF5E
      23FAF1DBEF7E70247536EED94956166EF1F4F4DC42A7488E1CA52C4C2B7EFEC9
      83AE131EB88DA61D3BC8B683CAE03FCCC17B72D8FAEBEEEDBEE4F3CC8D08090C
      DCB52B7057A08CD81979DA7B9517A9137D223222213828283818ED82F051960C
      0A267F342F282464CF9A757EB84E4ACC85E3470FC42B529832272C213C74530A
      AE13E0967332F3D8D9B3873BA7A3683B92B0E1601CB976F69FC9B99495959E91
      919E9E9999712E3323033FED282323E31CCE9CC3B9F40C5474FE7C9A4F542C7D
      C1ED3F73F5DAE5EC8B5D51D68513C9B1B20B7BBFDBE9AB5D3ED5EA5A4EB25B2C
      E3071490722AA92B4A744DCD6BA62B4C9A2979991AB57F8D1EE57F076D8719A3
      FC692FC857CED18BE964A3FC8D0D0DD0505F0FF5757570E2C4093282D971B703
      24772470EBCF5BD0D4D80435376B405C2D065185888CFE0B4A04909F974F6600
      2EE75C8633A7CF4064442434223D2DCDCDD0DCD484EA35425D6D2DD4D6D4A0FA
      3751FD6AA8AAAC443A2AA0BCAC0CE92925B1C8853770BCE335A42B1710562416
      19CF2864656602FA82E05C5A1A89493E959C0C89C8BE13C78FC3F163C7E0505C
      1CC44447437454141C8C8C8403E1E110B07F3FECF1F606176767888F8E82E413
      C7A1303F0FC2438221C06F1F786DDF0AFBBC77437AEA19B872310BC2FCF682DB
      A60DB067862D5CFEFE75089BF31C04B8AE8313B1916456E2C4D7AFC1F5355321
      FBB7A9B0EBAB29E0F7EDFB70D0F9678872FD154EFD3C054A9C6743A1D32C28D9
      F219E4BBCE858415EF8268C74248FBFD4338BAEA437072F802766F58019B572C
      85C3FEDB2074A70B44EDF78690FDFB20272B1DC4BE4BA074F75720F6594A627F
      2BFDBF878095F3207CFD6238B9CF0562766E80E3E1BE10EAE50107F6ED825D5B
      DCE0E49143B07EED6A2829BC0E99EE0B495C6F73F42AB4AD868AA01564F4FCB2
      D73770CAF50B885937170E07EE049F2D9BC90879DBD14D10B9DF0B2E9C4F2531
      A63FFFE4001D1D774122B903B76EFD094D4D8DD0D0500F353537412442DF5379
      1919C51608D0F7547883C498E291ECE3C78FC1B16347E10EAAF727AA578FEAD4
      D6D5C24D54AF02D52B41F205D70BC888770E8E47457532323300FDAA20223202
      EE7674A0BA1254F716AADB80EAD590117111BA3E2A4422282B2F27A3E302748D
      9408046494FC3ABA4E0AAE5F27A3E557AE5E457A2F9351F30B172F42665616D2
      9D01E7CE9F87B3E87A398DAE97E453A7E06452121C43D7CB91A347E1201E0547
      D749685818EC0F0800DF7DFB60CFDEBDE0BD670FB8B9BBC35D74CDFF89AEF7FA
      FA06A8ABAB879BE89AAF46D77C05BAE6F1687C09BAE6F1687C0EBADEF1887C72
      F229080E0E41F8A1DF0AFA2C77EEDC81F6F676686B6B4358DE42BAFE84969616
      8427FA7CF8FA178BC9087E05BAFECBD0F55F82AEFDE2E262D9687E2EBAFEF18C
      5B4E4E0E19D1CFC29F095DFFA7D0E7403F7832AA7FE4C81148484820A3FA3131
      31B2517DE45A01395F32B2EFEFEF0FFBD067F3F5F5052F2F2FD8B56B176CDFBE
      1DB66EDD0AA85307BFFFFE3BB536E151A9A774D4210A68F8F3CEFD87F7EFFCD9
      10502725055EA73A6A6BF7D7DFBA2779B1CAAA7280E4DEADC05A443B6A6BEB6F
      3D7CFD41DB4B775EFF3BFD563D6275AAE3E6CD80F68E5A2BABA143879694D448
      F2026CD1D786780F5F1E37EEDF0DCFB7DCBAFF777BC0CD9B9DEA30AB6D7BB51F
      7ED6C960A4A764E8EDB6DA2BF1636ADBEE896D11D91DAD6F6CF9EFDF6DB57E9D
      EA18BDEBAE74E065D860A444F2A269B5E98BAFD954568A9EB6B636E1D98DDBF5
      9FBF7699768EC7DD7A0EA79F80C3E1E0C797580DAD91D456D54A9E1D3172A470
      F8534F0D1FF1F4E8FAE7EFDE1FDBA90E8BF3D623FA230DFD51A3022387590DBD
      6D6172F255947FAA7FFFFE23F1AA9431E39E7FDDA2531DAD6D959EC3FB231544
      47BFC1562FB49AB6EEEAD70F73888E1122BB71F75B3BD5F1B0D1F46921199623
      3A8659F11E263EE40D439F8ED631D2D3F499971E76AA6373BD6DE5C8FEC41054
      077D43FD367FB5191F880E4295B6F59B3BD531F98D674C3D9FA2470839827EC3
      DE9A3C65F25B564807A5A4FF48E1D3A66F4EEE54C7D4F7C6D98946F4A72D41DF
      D0BB53A74C7DD76A30F561300DF7AC7C676AA73AA6CF7F7EDC186B0A11F45D70
      38D3A6CF983E6DA815468483BF304EFF11D60BA677AAE3FD0FEC9FAF1FFDF408
      7C3108478E1C3171E6FB33DE9FB9082B21533202B447BC4E75CC9E35FF3FBBC6
      D9F14CACAD9F468E5BB460D6ECD9B3674DB32A193A7898749475DAACD99DEAF8
      F493B90BFFDBD2587FD40EFF4012A6CDFDE4D34F11CF015DF6565683F10F69C8
      1788D7A98EC58BBFFE6CFE845B2DCF37FC3B3171C382CFBE5E8C68C9D79F4DE3
      9794A0DFB295D5A26988B7A4531D4B972E5DF6CB370B27BDFDE7F81F177CF3CB
      B2A5142DFBE5DB2F7EFA79F0CF3F7DF12DE2FDBAB4531D2B7FFBEDB7D5ABD6AC
      5DB76EDDDA35AB56A3ECCADF56A27F166FE5CA3E7FAAD3FE14A91AF668FE14FF
      4605FD14FC2922A136FE9452C2F6A778A7853FA52C61FB53E2EE9FD2DC9F521F
      87E54F295E7FCDFD291157F0A784D7FF91FC298782A987FD69B33E939ABBE54F
      F5CF88A577B2B10744FADDF2A7FA6D559555B155B1D5A32B23C22AF5BBE54FF5
      5313E32ACA2E8D40BDD1B29863FADDF2A7FAA9678EC63D5D8EE9E011B90EADFC
      A97EEAD9C4C3874431E84E2E3A51AE432B7F8A74FCFB5802AA5619137342AE43
      2BD24FBD7DB2FE28AA76A832E6B85C8756FE14E96848AC3F1E5077F39088A143
      2B7FAA9F9A9A9CD4D0907472DC91EA00B90EADFCA97EDAADE6D3A79B5B5A4E9D
      AC3BDAA0DF2D7FAAFFF7D914097910F1D9668B16FD6EF953FDBFD3CF4929FD6F
      7DB63FA50621BAF4A76A7E73943FA57430FD29C579347F2AD5C1F2A76AECD0CA
      9FAAC1432B7FAADF62D17C967C2F9294B3721D5AF953FD86A375274FB5B4E08B
      E4569A7EB7FCA9FEB180EA23E34EE24B35393555BF5BFE54FFD871D1A19B7501
      C7EB131B6ECB7568E74F8F1D8FA93C84AA1DAD3FC9D0A19D3F3D762226A61255
      4B38F6EFB3A9DDF4A7C712B10B8B111D3A9CC8D0A19D3F3D76E420F1A64FC71D
      3D93DA4D7F7A2C06BBF41197CA2AE21253BBE94F2BC3222A4757A31606B5336D
      DDF4A7A203B1D2864E7CA67BFE54CD6FAEB7FBA72ACCD0DA9FAA68F615FC2974
      E94F5534FBECFEA92A7F0A6C7F4A9A7DE2DF64CD3EAB7F2A73CA8CFE2976864C
      7F4A9A7D22286BF6BBEA9F521E95E14F5534FB5AFB53AAD9AF8E8B9537FB5AFB
      53AAD9BF99102F6FF6B5F6A72A9A7D963FA53E7CE7FE5445B3CFF6A75805DB9F
      520F1361F85315CDBE823F05257F8A5530FDA98A66BF6B7F0A6C7FAAA299D3DA
      9FAAFBCDF5F6FDBE3A3BB4F1A7EAF0D0CA9D2A37FB5AFB5315CDBED6FE1437FB
      E4C29337FB5AFB53DCEC131DF2669FE14FE9D9A9AEFC2969F6E3136ECA9B7D86
      3F2517E43060FA535A2DCB9F92663F36AE5ADEEC33FBA7E47E1F98FE1448FF14
      58FE54B9D967F64F89B760F953A0063359FE54B9D967F853D97C9DDC9F02E9A3
      B1FDA972B3CFF0A7D2270F81DC9FCAD432FCA972B3CFF2A740FC29C8FD29ADA1
      3F30FCA972B3CFF2A740FC2930FD2950C3CC727FAAEE3727F3A7A47F0A4C7F0A
      C49F82E6F7FB524498FE94787690FB53757648FD29AD83E94F656A65FE544DBB
      DF893FA57530FC296AF7291EBBDDD7C69FE2761FF0EDBE42BBAF8D3FC5ED3EE0
      DB7D85765F1B7F8ADB7D38447D1A66BBAF953F45ED3EA5210698ED7E376EF771
      BB0FCC365B2B7F4ADA7DCA12A60EADFC2969F7291DCC765F2B7FAAA6DDD7AA7F
      AAA6DDA7FDA9943AEF9FAA69E798FE147B65B93F9592DC9FAAFBCD31FDA9A01F
      28FAD3FE42D0F47E1FE8FEA9923F452E45EE4FD5D941FB53BA7FCAF4A7745F91
      E94FD5E041F953A0FBA74C7F4AF74F99FE544DBB4FF9531980727F0A74FF94E1
      4F51BB4F4929B4FB943F95EB90F953198BD13F3D1600F8765FB1DD577BBF2FD3
      C1E89F1E3B0EF8765FB1DDD7E67E1FEBA09D21ABDDD7E67E1FB5FB94860460B5
      FB5AF953DCEE036EF781D5EE6BE54F71BB4F59C26AF7B5F2A7B8DDA774B0DA7D
      ADFCA99A76FF116FF7B5F6A7EA7E73BA381FA5EEB368337EAAAEEF40DFEFE36E
      06FAA9763E7EAA6ECC80BEDF279D4200E6FD3E19F964CDEFD36306A8EF00ACBE
      83F47E9F1E8465DCEFD36A59F7FBD2310360F51D64F7FBA4D7C4BADFA7BC07FB
      7E3FF130E93BB0C70C64FD53D2F562DFEF630EFB7E9F9E2A00F69801DD3FA50D
      67DDEF4B479499F7FB27E9663F46C5FD3EB929C786C8FBA7B45AD6FD3EEA3BA0
      26BF0E803566A07EFC147F100EDEC9FDA99A3103ADFCA99ABE8356FE544DDF41
      2B7FAAA6ADD4C69FAAFBCDF5F6FCBE3A3BB4F2A76AF0B872C5F6C469CBF6A0D3
      F5B6F17E666663C4B6F52F5AB6A7ECAABF19EFA7E99841754293E4C16B92F4BF
      EE372554234A687AA579CC30D3D3AFA0AC920E356306D5CFDD6EF977E30BB7DA
      D31F3EB7AFAAAAFADA7F4723DF5A6270E8E5E79475903103D4770076DFE16A6B
      3DAFBADAD4AEE1E5071DFEA218F35631F6AEC8B556BFECAFAC831E330076DFE1
      540B67F888E1C347F2C6DD4A7F61FBF69D6D9E1C01F12325CD3B55E820A3FCA0
      3066D061472DC71E69DA70E76E62E2DD96EA91B80FD56FD850DBBBCA3A4EC4C4
      006BAA80E858F1147615C87D3E5DDBB4E2AB775634D53EFD14A5E4A915CA3A12
      A3A9CFC21E3398CA1F4A291959BD61EA942953ED1B4C47520BC1174D55D671E4
      2000BA1503F698C1F4CF4B88D31270467D317DCA94E90BDF18C71B391C41D4FF
      F3E9CA3A548F194CF9660CFA65E19F27FF9B2933664CF9E0BD0D0D76A6D5D5BC
      89DF4C51D2A1A6EF3063D6476F19A01FA8ABED87B366209A35FFF5F65B2F34FE
      FBA56F67CDD0B4EF30FBE359DF2EB7EDC75FFEEDAC8F91F741D999E8473C61C1
      3728ABA843DD6F0E399C39F3E6CE9D3B6F0E763E9FB2B2BD19E7D8033A6A29CA
      45DDA15A2592B2C6CA52B9F242AA0AD6813B3DB6A4EB838E37A58439B6376D99
      2C2A6D7B93CDBB89758C31138F3133BB623666CC18B32B7E28113F062FD2405F
      9E59BC18FB24335C1A8FCACDB00C12BE72C50CD5B982D9E22B665847F52312D6
      51A54895555A11D6E16B6262636262E27B39C677ABAFAFE8B2686BCC6513DFAD
      977D4D44A2AD36313128657319956FB5B18911F9FA6E15897C4D90904884B226
      977D2F631D9526395B2A2A2AB85C2EDAA13F4238C125398A4D325CB2A34AB994
      C8D32211C1A3B2A2DCD8A3BC3C7B546464F6280F9432F618955DEEE1636C8C52
      1EC6D9E591E5E5A824DBC7271B15448E2A372ECFF6308E8C342E2F2FE78A4CB1
      8E4DDB9EF6F428ED168D1AF574EC26ACE33BB16769E9F08B17C3C3F113ADDC87
      533B7743C3F07077C38B86E186E880682FDA5FC46588831958BA54E829FE0EEB
      F87E47C59EFE59591C8E1B270B7737BCBDD196C57C56941BD967B1785958B8FF
      BFAC777C8F754C0BD8D21F350588065B0DC6BD05DCE5C669F28F12641B4A8AA9
      83945C075FE0064CC33A167C5ED9BFB8B8B8A8C8A5A8A8C8A0C8C00BED8A428B
      10C3C0A0A8D805B1434351323334D4AB081718B820A14C942C292EE1547EBE00
      EB98FD859FB0B8B0B0F006266AAF11A12AC546E22F66631D9F2EF85DC429BC8E
      A880A6414A87103AE91C52B09B6261F9428EE8F7059F621D8B97AC5F5EE15D18
      92EF34303F3FDF2978203A04E7A3DDC0FC814E4E8883FE480949A36470707E7E
      86537E486158C5F2F54B16631DA8CBB37E79D50801BA0122545C22234652CA28
      2E96A6046595CBD7A3CA58077EF7FCFA2FDFDD5E257FEE9888F91032917C8F7B
      8DD2C22AD377BF5C8FEB621DD4ABE8D73BFCF08756F483C37AAAA61E791AFED1
      B07EAC675B61F6593DF9AA17C7A07E6A9F6D855C22A00F0607A1059A9B9AA101
      47FDD7D691952ED2675CE1552EF83957D70BAE93952E57AF5C25AB5DF033AF2E
      5EB8085999599076360D525352C90A98B8D838080E0A86B0901070737181153F
      FD4456C1E0D535D2952F1578E894B1FA05814C9EC69F9F974756BD5CBC7041B6
      F2053F8D3F2E36168202032133ED2C14649D8788E04088080B252B5A02FDFD60
      FF3E5FF0DEB51392E3A321F3EBFF42BAD322D8B076355C5F3509727E79070A7F
      7F178AD6BF07D18BDF84332BA641C6EFB3213E2204841E9F42F8CFB3E1C29103
      E0E3FE07FCB1FA17F058F83654F92C83FA901FE1F01F5FC0A91D2B60FBAF8B60
      C7564FF07075063F9F3DE0E3BD1BBC766EA7569C44AD869B61BF42FD41948E5D
      0FE2A80D70266C07B83B3B42DB49376838BC1942372E86FCD86D90B0CF15BE9B
      FD36595D14B1E517B4FD0A07B7AF8238EF0DD091E105D13B7E83C86D2B213870
      3F24251E873F366E80D5AB7E83E8A88370303202C2D1670E0E0A046F2F74FEDD
      BB60FBB6ADB06DEB16484E3A09478F1C8623871320FE501C1C8A8B85D52B5780
      CF5E6F883A1801A85F0E6BD6AC86D5AB57C12AA46FD9B2A5AC152DE817499ED1
      74F5EA15F2E474BCBAE5E245F41D6465426A6A0A9C39731A8E1E3D0221086FBC
      B2A5ACBC0C4A85A564850BF20664954B5E7E9EECD94E1750DD4C54F734AA8757
      B6489FF5548EBE7BC5152D7835CBB5BC3CB52B5AA4AB59525253211A7539F10A
      96F27211B4B4FC09CDCD2DD0D8D8040D0D8D64C54A2DBE766B6A65AB56507F9C
      3C4BAAACAC5CB67A053F4FEAFA756433BA9EF3F2F2C96A962BF89ABE7C85AC68
      B980AEE9CC4CBCEA2483AC6ED9BE7D07FCF5D75F70EFDE3DB2A2053F83AAA6A6
      46B69AA5125FD32211E0E90021FA6C78350BF29DB2152DF9F80D13B9B9E449F4
      78558BF4595517D0359E89AFF18C0CB2C245FADCAA3367CEC0E9D3A7C96A97C4
      C444387EFC38C2FE281C3E7C58F62CABC8C848D9AA97808000B2DA05AF74C1CF
      B192AE76C12B5D3C3C3CC0CDCD0D9C9D9D61F3E6CD307FFEFC47EF81F5D1E3ED
      01F7511FFEBA8EBF0322C7BB2AC8D1C161B8C32394B3C43493D2807AC7DC5EC4
      FF616B5BBB035F0539DCBEDDB1FC11CA59629A49694044D1272A88694E77CAD9
      62BD87BFA4A6B1D9E16D259A30C1C1CAAAED41B7CBA552B49866521A1051B44C
      0531CDE94E395BACF7F06F17896B1E3AA8A08EEC6CABFB8F50CE12D34C4A03EA
      1D737B11FF3613895A6ABEF768E57231CDA434A0DE31B737F1174AE44FD1C8A3
      89CA499AEE695F4EA718BE1D8BA9915254A601FEBD626E6FE2CF959C3A752A30
      30D08026FCD498D3842883B52CC729B4F1FDC5D1991323C28B4329FC5548B11A
      E0D39AE2DF2BE6F626FE765D18AC65B9F4030D89899C9836B12894C65F8514FF
      8144628F492279A039FEBD626E2FE2DF5A2A397CF870909CF08B0FA894A4F19E
      72B9FC92555D2E158B3B3891131A323138848FC55449F16B9BDB89C3BDDDDA4E
      2BEB9A7AC7DCDEC45FA0FE0335DC532EA750A32053552E158B9EC8C3AA26EEE2
      63315552FCE84AFFC6E6E6E6A6A6E6785A9906F8F78AB9BD897FB824252565F0
      E0C1C14A24A9CF512E27A811C85497E314DAF8136D0C92934F199C9AC8C762AA
      A4F85582284BFFECBABAECFA365A9906F8F78AB9BD897F9844DDFB5B24D939CA
      E504350299EA72A918A34381C45449F163428B8BC2C60B22C5FEEDB4320DF0EF
      15737B13FF922E3E9042395FCC09CF14C7D54921EBA43E438D2A29847F68F0F8
      F1E3C3638630F067F58A94B2BD646E6FE25F2C090B0B63CC731A21A25292BA1C
      E5727E5C487070F8C1B876BEEA7265C262AAA4F83121C1E409927265187FD42B
      222301B85784B281614292E54608F9BD666E2FE29FC051FF816A7394CBF951BB
      82AC7969D1097CD5E55231C60F1A89A992C2D01C2444D0A9A5F167F68A5096C3
      294EDF1B56EC525C44F0EF1D737B17FFD2D252812A920CE9502EE7871A9C3230
      B0498BE3AB2E978AF10F446646444466A20F84C45449216848E7C5DA1AA14329
      C3F8337B45288B8438E4656048A8D7CCED45FCE339920842E98884885C11A513
      92D4E42897F3F79F2E3A10565454C4575D8E5368E30FE1A709D095C647373448
      4C95140B5A4A19C69FD92BA2F0B7B61E1F24C5BF77CCED4DFC79EA3F506C8E72
      B9FC87AABA5CFA81E242F89C9060FEC1383E165325C5722D94328C3FB35784B2
      D87FE3461A3BA95E33B737F12F94989A9ABABBBBA3BD69264DA68424E20EEDCB
      710A6DFC686B6BFE4EBE755A341F8BA992C24D2B06E60DDCB452CA28FCE5BD22
      9C6534D2BD666E6FE27FA30B83B52C977E20E47793F9A7926DD228FC5548B1BA
      960CFC5980E3AF83B4D1D4D7D14BE6F626FE41129148646666E681682C225F44
      1E8424D51DDA97E314DA981D0A24A64A4AAA8FA14C8F7238B25E91D41D09A4EE
      A897CCED45FCADACD5CF44C4743C5AB95C4C3329823FB357A4D41CF792B9BD88
      7FB38135AFA6A5A5B9B1414ED9D97562B18097E6DB4195F3C8CB744342789870
      0291CD6E7939AA8F1430351025580BAD46332929FE8C0EA74277B497CCED45FC
      1BFBE51924A80A49B0B86E532A79847296986652047FF60D97C2ED18A54855E0
      02D39CEE944BA56486F496FFCFD5CF1D364105D5F4CBBF31EC11CA59629A4911
      FCD9030E0AC311942255810B4C73BA532E959219D24BF8E7B458D63C54198A34
      A43EA1ED51CA99629A496930FEF64F9B3B4466485FFC615FFC671FFDE3F8BFD9
      23F4E4E9D115FCA3C646F97A6455988DCDCAF28D129979A0FBA128B2CBAAF0C8
      328B223B356CBAA6284A94A5991E2591B10CE73EF611F4A0D22C0F6A1F9545E9
      D115FCC9FD39DACAF0CED4DD14E74C2916CA523B356CBAA669A67BA6667A9445
      187137EEDDD7C36AA4693D22D1782699793CA9F89B9A6A8D3FEBF392F115CDF4
      A8C05F1E7753D67D3DAC48225A8FD228CF93DAFE4E1A339AEBCAE546A4732322
      B85CAE4F7A4444BAD0353DC207F148015789CDBA298AE09A4CD24C8F8A5246DC
      CD23E851658FAEE07F79D2648E7416A894B16790129B3528506A3B7992667A54
      9432E26E04DDD7C3B287D6A334CAFFC45EFF93394661678D4AF0A4A8D159F44F
      127852F46C985118DE29B15983622525932769A647452923EEE611F4A8B24777
      F09F51A435FE38A8A3B24A4CE23A4A4A664CBAAC911E55F8CBE911F4B0E6CC68
      3D4AB3BC4F2EFE1C6D897F29B4383C2232339A444E71664CEAA61E05EAB61E76
      2411A54729CAE189F5FF333829C1C1C1299BD1C61B8CB614129B973278F0EEE0
      9460BC5362F36343438BC2D20491F8F3A6A4CC98A4991EC552761461F7F504B3
      E6CC683DBA82BF5E77F0C793E221A11C32299E325876DD6A8B1B424E4E8FA087
      356746EB51FA913CB9EDAF531015436C4DC5131FA69398270B2E66B14950133A
      92B8A6A02069BBD9951E15A58CB89B47D0C39A33A3F5E810FE1CB218E1F42903
      83C0D328712A90244EA3FF4003B2536493A0A653C9C924AEC9C040D66FE94A8F
      722923EEE674F7F5B0E6CC683D4A51CE4F2CFE299CBCBCA47CB2182A8FA4F0C2
      28B4E5E3A553F9AAD824A8E95C5811896B4ACACF9FA4991E15A58CB89BBCEEEB
      61CD99D17A94A2FC9F50FC953F8D32FE8A6CD6F80359C6A6911EA904A38C1177
      93DF7D3DAC48225A8FAEE09F3B3020772022B40BC84D4C4C1C988BB7DC8044B4
      E5E60EC43B356C79C5810335D22395609431E26E1E410FEB7AA0F528ADF27A42
      F1EFD723D45D3D0CDC1E498FB23DBA82FFFFAFF32F4949ACF1E7A4A4BEF9C73E
      D201FCB76DAB1DDF356DDBB6EDFF13FCE76B433D777A46CC0DFB2DC522915914
      BD3193666651D223C512FDFF82BF16AD5A4FE22F9B785CE6CE2A30C5F36DD4C6
      4CBABB674A8F14CBB40FFF47C25F36F1B8AC8C55402F8848A7C7EF194905561F
      FE8F84BF6CE271191B493C6C4F6FCC2499EAA28E14ABB40FFF47C25F36F1B88C
      3D331286A758A88D992C29392B3D52ACB03EFC1F097FD9C4E3B2123D6684671F
      FEBD83BF9C10FE45454561078A4EEFE7AB183756477DF86B4C2A3AB22C24F971
      69360606A70C42FBF0FF47F06F7FBB766C59195760C4E1050505E60D7C7BBE1E
      73E2518F9F109DC6B30EDA15C5C7E3F68379F4C64C0E1ECC931E29564A1FFE5A
      E03FD42C3333A2B4849312146490948BF067F81F847F7BDCC1F0E0E090383E1E
      370EB2A63766924C7551478A75B80F7F6DF0AF40F80B4A38C1D6D606E4FA5FB6
      8C9E785CB62C08E15F1727CE0CE788FBF0FFA7FC4F56662617E31F14748AC25F
      36F1B8ECB41EBFAD3EBBCE324A50C5C7E3C68106F4C64CE2A164FA48B14E7575
      D2BC3EFC19F87B989AA60BC2389B83824E53F8CB261E97E5E9F1E39B9B9A1AFD
      2BA3F9972F6B87FF6595D477FD2BE1EF4BF91FE2FF09FEB289C765F9C8FFB4DE
      9648DA9B6B11FE494964D6319F7A2E2733A9C0EAC35F1BFCA3B0FF3122FE3F9F
      B4BFB289C765B98CFBAFCB9713131335187FD64B4CECC35F0BFCFDA318D77F22
      BBFFD34FAFFBD8B16167EB78F35E27EB1CDFD49BD029E9BDF9E6C37B981EDC93
      932CFDA66EFA7FD2FE9E4E0A787B7E2728769F648A28AD772E754277F5267456
      3C41EFEF8796696AE9DEE3C27F7EBBE6349F81FF36E4FF5D29FF139897FB8FE0
      DFBF3F75DAFEFD65F8AB07F09204E1DF497117F8273C36FCDFD69CE6B3EE7F33
      3385D4F56FA0887F0F5DFD08FFB7389CB718F857758E7F952EE29F8A5F1E3974
      68EDD0DA6D28B1ADD69FCEFBFB2BB1E6ABF63F54FFA70FFF6EE24F2FFD942DFC
      942D05CD5264B1F0377377C7EDEFE0A0A040D2FE32F1272F9676E82F232AF98F
      E25FD539FE554F2EFEF4D243D9DA44E95244C672459AC5F2FF2253D388D2304E
      CAE1C3A754E2EFB8C9510A3F9DBCDC5F2DF5E1AF2DFEB8FF9F2E38CBE1E1FEBF
      0AFC1D97B739D05F8034D987BF4AFCE9A59FB265A1B2A5A04A2C26FE4351FFC7
      07F57F5210FE49B94AF80FBF9FDD9C407D01C31FD0C9CBEA7B56FFCBF8CB167D
      962A2D055560CD573DFE669017A088BFC3754E596C53DB1D84BA3C79B9FD2D35
      F43F8D3FBDF450B62C51BA1491B152916631F1F7CF3235E522FF33583AFEC6C4
      DF21E1F8C95D69554DEF2C7790265BFF72B8DCAE6EE6EB7F1A7FCD57256A8EFF
      EC59239253B8E9C3873B38CC9225FBF057893FBDF44DB62C4EBA148EB1528E66
      CDEF6CFE9185FF5B1F0DE877E6C081E1F60E287904252386BFE5D0E77F54E24F
      2F7D932D8B932D855362CDEF6CFE918DFFC4CF926CA23E7F0BE3BF1025B316CD
      C1F8FF6FB4BF5A8DE8741B7FC5F94736FEF69FE5875E92E29F1FE2F7C10284FF
      FF48FF53AB119DF9A9F4D243D9B244E95244C64A459A35BFB3F94705FCBF4C2E
      AAA5F05F40920BFF77F0D76A44677E2ABD384EB62C51B6584E8935BFB3F94745
      FC479DCDFEE06D72FD7F698092F8FA67D395FF5FC71FB41AD1999F4A2F8EA396
      C6E16571D23578018AACF99DCD3F2AE27FDABBFE03FAFAC749E27F98EFC57C13
      EFE8E12145EA4F0F57E828FEDA8C28747BFC5971FE5109FFF006DAFF7F793A2D
      FB838514FEF64C729038D0F8B37A430E771CFE87F0EFD66A1915F38F4AF8A7C9
      AFFF34F9F5CFC4D9A12CD381BEFE172E90FD393824E53BA8C45FA216603BBB4E
      F147C5BD897F7746747A72FE11E3BF7454783DE5FF172C2D0897E23FEAF42239
      9D3ECD8D2097BA22FB742066ABC2DFCE0E8199867754824AE10419FFEFA418E1
      FF57AC9D3AE2C6F724FEDA8CE8E095B5DDC1BFB3F94782FFCE030DD4F5BF1025
      1B69FC9DA5EF38C2A31A61466146D61869077CB3179C92422244530A838379C1
      88AD027F8BD2D2B4B4D234BCA312540A2730FE9D154FD0737C505DAA8ECEF728
      FEDA8CE87417FF4EE71F31FE41DC46DAFF9024E5FF95461E8283511BA082BDFB
      8E830AFC2F9C534B18FFCE8A275CFEFBC145B5C5A53D8ABF36233ADDC6BFB3F9
      478CBF356A74C763FCE791E41C823F8FC7DBBC994793F442C73F0B7471D06424
      FD59A8687FCD3B9F7F34EF7CFED1A1C9E2821AB268EF49FCB519D1E936FE9DCD
      3F3ABC35FF4492B549AC23C69F4E12FCAD47311CFD286BCAD12BB00BAC5D23D4
      F87F4B73B584F1EFAC18E1FFB7C37DB5E4D893F86B33A2D06DFFDFD9FCA383C3
      EC2323FADDB0198E3BF3B224E9FF30BB9F0EF9F9D2FECF02393938B8BBABEEFF
      3C94DC514FF7BB8ABF5AFE7727E4A06BF8773AFFE8E0F0517BFB9DD9F3C93D96
      2C79594D475FE3FEBF8EC41F6A35A2D35DFCBB987F5439C8A3E646B793FB5F76
      FC95AEE0AFCD884EF7FB3F9D8CFFF738E916FEDA8CE874FBFAEF6CFCFFB1E07F
      597DEE7297E23D89BF56233ADDC6BF93F1FF1EA4371D86E33F473AC8D991CA52
      8377140D7F130B6192095139079A4D3248E8CDBBED6D6D6DF71E5042BF383EB8
      33ACADADFD4DC21FD646D23D83BF56233ADDF63F9D8CFFF7203D6C6DBB7D4792
      339C5E4DE08050BA732767F9C3B661B7A96E8FE4DE5F7AF7ACE2135ADBDAFFA2
      5F3995636545B2F7093BA19564F41E880545BC1B36E6F768A93BE6DE1CDE0DC3
      46C2E7F048BA47F0EF0DEA7CFCBF074932A4B125BEEDB603D5877CDBA1A9A925
      BEB5ED81A4AEC92A1E5342DBB0077AED35D90D8DCD090FE8E50792FA7A948DBF
      47B11B1A4946EF5E6C05B7B4A4B02287966AAB3041D78FA125E1730524AD4BF8
      7732FEDF93271255D7D437B53EA4DC8E4347766D6D7663FCFD76516C6D1DA6FA
      A684FB7AADA26ACB9AEC26C9838788EEE70CABB1C4D91C8A6D5943327AF7EB63
      2DCC4D05E5354350B5EC86E6A64A8B4AF3B2D26CC2AF3427E99EC1BF6911939A
      94F2CD0AF96EF7FFD58DFFF720B5995454C5D635B7B6DFBE7DBBBD2DA171486C
      6C6C76CBBD61C28A2A31269CD18B371155C75AD635B658216A6EA8B38C15C70E
      69ECA0D8D55446EF01AA5B5D692A28C6E32E45DE4441B5C8A49EF0C5D524DD33
      F82F62BD806F91729EF574C745DDC33F9545FF1CFEC28A180C6DB3550B81360E
      A199DD7CAF8D5B1E334E3C6E5C3585BFD0AC4A1C1B5B539B8DDFF95883E0AF8E
      1DD2D041B1ABA88CDEFD8621B1620BF38A3213A150685256616E51555D1525AC
      27FC6A2AADF5C31AD5E06FBF4AFAF60E7B82BF7D5171587198E0407101C9F319
      E5DDC01F9DF69F7C90191B7F6E7925BACC2D6B8620C2C85E128BEB5623FC4D2B
      AB3089EB9A11FE074C2D2EC654E3DFC325F487B0F413D720FC09DBE222C920FC
      2DC528B765DFBECACA0BFB2E58545A54F9559673EB09DFAF92A47B0A7F73FB5A
      F2F68E55F6F1047F4B7BEAD93006F6A104FF0BF2F2EE5DFFBD466D76EEE61616
      0836F48708EFC4B54DF72836C9ACBEA767556A6A5E59B9A51279748B4A8AAA62
      1BEE526C732A83FD7F9554482AE569BA379BE27B92744FE15F25B08FF5CFCEAE
      B5AF6F23F82798DBE367235DB7DF1545F067943FE9F8979A882AD95455D3784F
      C6AEAA69C2F8BB55987B8A44E6E69E9E64B45324B288CDBE4BB12BCC4946EF7E
      766C2525642E924A894C04D9842FA2D23D85BF98136E5F5925B6B7AC6B27F8B7
      C71DB4E78486D81786C411FC19E54F3AFE02B70A8219C2961E4ADE6289F0C76C
      841AC9E859A509CB2B188432E6D5087FC2A63308FF6A737939B537151A6763BE
      A9293F13A77B0C7FF9DB4428FC87C4440AD2C28A42436329FC517964642479DB
      C8938D7F6BB86B79455405FEAF88CA8AAA30ABC88A8E6DC869436C021ACEE859
      95D89599B2A9C2A25642B19110CEE8DDABB5A85010322DB32BA9C3FC4C7E19DF
      04A57B0A7FC6DB4428FCFDC59E999111C6C5A162823F2A3741F893B78D3CE1F8
      87D9B9979B22ACCBD1BEBCDCDDB4DC5D14DB70AF0DB14D106899228C7F4B49A9
      8989895BA48909FA2F73734387839E4324848D857046EFDE900BA69410264A4A
      2828F6C77C7E9949241FA57B0AFF385EA17D4828C7DE348EC6BFCED25E5C5569
      6FCBA1F067943FE9F8230C4DCBCADCDDA977E395956596958BEB73309B808633
      7A2D9C342E5728744D4F8FE0A60B7DB8C2746199C85282D9440867F4EE598ACA
      28A174AE548A6BCCA9C57CA1902F14A2744FE11F75C39EBC4DC4DE3381E0DF56
      6F8FEEF9FC2DED8DAB09FE8CF2271DFF6281D0C4CD84FEC71479B02A3B07B311
      68E9429CD16B362C295508281156C44A309B08E10C1E7F102A869D949618D662
      BE2B9FCB4F47E99EC2DFD09E7E9B88BD25C13FDEBEA909F5371BFDEDCD3FC6F8
      A7CACBBBC6DF513AD2E8A8EAB10BD2D2E17735179448EEB625C4C75BB5B4A916
      94A05274277B179D3C8163CC4D4717AAD007BF758D5099455D4E2B6213D0CA2C
      30FEBC6263857783D999C6DEC16C2284337A39B1A6768A2FDE7329361C82F97C
      2EF7001FA57BECFEABA0F88000DD711517D1F75FF8693088DA9BE8FB2F545E1A
      86A84883FB2F4963730B22AB7807BE0A72A04A5BE2257A396D6DC3DADBDB6F4B
      1C3E51410E7469C772BDD6D6D282BC7EFD468EE0AA12741C5E9C7CAD5FAE7E6E
      13C1DFDB8E7B806BC7B53B40FEECEC0E082FD422FCBD29D070466F7521C73BCD
      DBDBDB38CDD8380D27D2BC056EE3EE603611C219BD9C4B26A594908B8B54CAB9
      A8B086E23B93744FE1DFA3E30F9221F50D0D0D8D4D2D0EAAA6B51DEA71292A96
      E8496AF1776195D0F670990ACA413F41FC2DB63ED093B47ADB141818E4E796AA
      12FC2BF6C6F50283E4BC6B047FC3E2D2D2D2BD7B4BEDF0C10EB999F35CD1901C
      C246ACF35CB32108FF1B86C524ACABB8A4B8983A1873FDEE506C3AA39753C575
      A1856452C5864135845F5C4CD23D837F57E36F4DDA8DBF492A636B10D535B439
      A8A0B621B8B0A6B65EA2D76E1E3B040F2D5AE53C5496BBD79E5D578B4B5BEEEB
      49869914F30A0B6F240B907F36615399486C6D5358586873BD80E0CFE318DB22
      47616B8BF6C67B04025BC1F9F29A1C8A8D5838A3D7645DC8292E2E42FF98C8C1
      C8AEF20EC5E614938C5E47A59D915C883A720AAD2D09BF8843D23D837F4F0FC1
      97E11198D8D89AFAA616056A6ACCAE898DC5E32E967512BD3613513512ACA96F
      696D53A0D6F8262489D5D43521FCDB2B041C43C3C21B06794A9FE85A7EC10D9E
      A1A121EF8635C63FBE9063E4E28DDD8637F619C871A409322D7312303BCDC59B
      64F49AAEDB188EA602CAE803A7B8D4FC36C546FF38A3D7E1595A2C2D951E0D6D
      AE5B527C43927E32AF7F13F371E3C8173094B81A06D50F25F08F138FB3F49790
      B14A713592CB6E6C228D42730B6AF4F1B1997C51E271E3C6C50E6DC4F89B9716
      73BC78BBC94BDFAC77D23BF47FDD1A5DFCBC10C3D0D13C1B0A7FDAB550972DF1
      1BC626087FA9C7C119BD26FA2B93124A170944B729368FCAE87588044586861C
      0ED6425DFCF84B2EB0A4F83C927E32FDBF89793526F40DC45AD630C9320EA15F
      2D1E578D50AF25F85B5072A86C088B6AF0F78495C4D6CAF0C71462A84CD24B93
      C2DF9A875D8B17CF06BF2DCF66F7E8A2626F9F4B1D09848D0865A4F8F30A51BB
      81E8FA8D429E3AFC394525022E7673423B417111C63C96817F6C4FE1CF787B34
      C1BF4436FEBC9FE0EFCF78BBB406F87B565521E8AAD09E6CD554821C491AE38A
      EE30DB7CCA2BA9628AE4925532B67848E33D84FF85F3C8E5E279106A87AF460E
      D9E37FCA45D8DCA0F02F448CD442EBFC6BD7FA5DCB33B009E19470AB3A081B57
      421919FE370A883BBB966C5DA816FFE2D2F26A72E95457D8157364F893F9DF9E
      C39FF1F668823F7E1A337936B90135FECC7CBB74D7F873A3AAAA9EF5BBF86CD5
      C52A0B8B2A3F3F3F0A5274B8E88778A8F0D92A82FF01D3E8AA8B16555B10CB22
      C6EFA2C5169CD982B25B2E5EDC5265F1AC85DF16F190068C7FA59D37A3B9C429
      E9266D1D3914FECD06D63CC310C39A96E6C686FA6C4B63039BDDBCF02D1D885D
      887E2A2121BCB47D1D7A4D2887DC4E4D63036AE36B634D92D12FC0BBBC9D6217
      F248462FA7D20E9FA2B1FDDE034C396D1582624EE1754BC247AD344EF7DCF8B3
      ECEDD1D4F873741A79367F906CFC59FE76690DF037B3E892C418FFBDA6E67868
      DD82FC6DC1A3F59564CC1EB1A8E17B0B8BEA1A82BF05D7BB5846258CBD8C5554
      6883F16FEA976750606D93403B4B8BDCFC82EB367692C65CC42664537A47AF01
      35DAD7AD0B5B680F5BDD0F650B4B8751EC82EB2483EE7FCDCBD00D70BCD40FE7
      E0F108635E3DE1977149BA07C79FA56FB3968E3F877342F12B6665E3CFB2B75D
      6B807FB97CF0DD82999467B68CC3F82B8ED55F407FFBC80C0839A2FF4A3FCB7A
      8C7F55BA7149E754CC23F8C7E7EA8FEC977F7D187DB73164807E6EBFFC1BEDAD
      23478CCC2508E4DF18A6D73C1273AF27D0371035B82CDFA69562E7F62319BDBF
      1AEA6A6AAA45C3A4B7190FEAEB6A2CAB4CDA08BFC612A75B9FC8F16709D774DF
      BE68F4EFE969EE695E69BE8F8CC2475FF0DC57697E01712E449B7B7A56D720FC
      052615E65D9005857FB59B8B91F75923DCB1243B3A616444F3CE8695841462FC
      735AD09D47BDD503E9E0448DE590BAFAD6B6BF12481803BE9F686DD31BD680DA
      FBECC6BB7424741B42B326DB2A9E62D70C21193D87E50FEEDFBF97F397345EDA
      E101CEDF6F277C4C28FD0F8E3F476746E27713C9C69F23351E7F96D899921923
      3C7744FE3CCD498A4C88887089C853F46C1CC65F5821EA822A6309FE62378171
      1AFA733136C68306E8E08DB2786C8062181B3B7BF19A1EC3785F0F8D3FCBDF66
      4D8F3FC789C55595F881E4D4F833E36DD75DE35F6A92E53B362BCBD7D7CC370B
      41E82BF2F5159955883C2A44882BF2F01D3B766C968525C2DF985B5E61E651A1
      8E7089796C36C63F3673AF4BB8C016DDCF0AC26DCF098C05386D8CFE6CCF9DB3
      0DDF63EC626B5CD439FE97BB0AE5BCAC61A0E83F813FE36DD6F4F87336197F8E
      125451E3CF8CB75D778D7FB8093D6357514EE6F3CA19F37CE514B3A23216E19F
      6687E7481854A194158929FC4DED646BDFA81721E19723D16F4822A973452118
      7F0776FCA72CC293E22B467EB2034095623E15223FFF39FC196FB3A6C69F9BE9
      F1E7CA68827F68A0FC6DD75DE36F2C2C3F48F033257350A67842CA1DFDE1BC3B
      B57337C7F897D8E1D7A8B91F7447FB83F4664ADEB18676EEEE381F555D47F02F
      E7DAEDB5B33BBF77AFDDDEF376E7EDEC708E1A922FB5DB8B08DD1E393551F19F
      ED8CF84F853050C5C84F850050A5984F76E4E73F87FF7ED9F87309E57FA4E3CF
      CDB504FFFD3BA5E3CF611AE0EFCD35ED924462847F71A9491921BCF61B2FF8C6
      69D34C53CCC0FF88CAAB6A09FE51D45CC881035CB2FC961A60B6C31BE61C408C
      120EC65F52C38CFF9CC00803B56A6D538AFC540800558AF964477EFE73F8F7EC
      F883B71DC12F938696EC4D09B2990469CC34AB9690B9AA483C051BE9E6166952
      6662820E64D20A31C9FC15DA1DB4189283F0B714457223B85C1F57572E979B8E
      367CA4F63E28EFEAE36A6744F06FAFA8AEC9C6F19FC31DE47F0E1DD943481828
      3BF2932679002823E6938A1665477EFE53F8F7F4F89B5169249EAC964E00621C
      23F1AE4CCA8A34712BAF42F817850B298610FFA17F379415BA094DDC84649C19
      ED3329FC6B4499642ECB4DA88EB8DE454DCCF84F1C004A11230C941DF949933C
      00941DF3491123F2F39FC2BFA7C79F4B04149A185502A20C368C34C530DD82F1
      77E10A851142B4C3D7B1105DC6E93E1142A18FAB50E88A983E886B525943F037
      37A5BF4B06B931F34297E22666FC670B81B8C50A0FA7CAC240D9919F34C90340
      D9319FB4C9F2C84F5DC1BF58901E81B0C40E225D98EE234C4F17BA0A719A4BA2
      0E90C3100A4D2D10FE5EDE7BB9D8951FC07E9D7B807BE0003E72C90E4F22A284
      9B39C17FC805F7329ADCCA4C22CBF0C48B09D94BB926020A7F69FC674D4DED90
      DADA21EC305076E4A75831009419F389EEC0F1FD3733F25357F02F3246507265
      C4CCA0B41DDE73CB2A11FE8625A5B82B737EAFAC3FB317F56E4AED64F9BD7642
      9125C1DFA2823C8985FC999A66E224EA24E1669BCE999452F84BE33F632C2C2C
      9EA523406561A0CCC84F7A50841900CA8CF95428A6A23D75037F8EB15D277480
      EC4DCC11FEBCA23D743F5E2D1D288FC5F80FDD12554EFA4D07CB71B7147759DD
      A98E6AB93BEAD2E28C9D779362FC271E4F62858132233FA920451133009411F3
      A9584C457BEA06FE5EDE7664FABB742FDEE11EBA1D952C2D3D8F13B84C28C2F8
      738CE9C00EFAB8873A9C93057C9CB32B8FED40F8D7557952F771D45D59053343
      DDD2B91F306E5288FF24831EAC3050A5C84F7968A762CC27A3581EEDA91BF81B
      9EA56E50E50FAF91A7A51C6E05C2BF90E36D2CA534D98E900B7D2C351563FCB3
      C5177CCD2A3C44151E66F8416963A3B2CC50AAA2026DBE595963C7A22397E02F
      8BFFF488F2F5F020631B515951044135919F8450B1BA984FE4DF64D19EBA813F
      AFC4D838DC5880517409DF637CCED885E4C205B6C6B608D8732EB62EB676E508
      7F1BC3126FF584436EBC056534FE16CC51397C61E33D4952C70AA16D1333FED3
      5D3A88816FC14954676CC33D66E4A79BB4F384DA6E5CCC8EF96416CBA33D7504
      FF62E3340AC0B4347281E3B14A7C71A7614CF1A8659AB79D3BC2FF0C8F4C8A3B
      538F18722E31720E4307F2B4A1129A676C528DF1AF8FDD626E1E6D2E0DD88FA6
      1C8CA7B967B4D4BD5498089AD8F19F65EE99EE99541828415021F25398EE2AA4
      433B49313BE693592C8FF6D40DFC0B8B9C8DBC9DBDC38CC2CE1A9D0D73F6F636
      72764629EFB346CE67BD8DF0987D89B7C054A29760CD2B52319745E749BC5371
      9A4915857F5565E724A2F197C67F92786537FA96814475AA89FCC4C19FB8585D
      CCA79D9D3CDA5337F0B7E1284C4D51F163549A4E9E2BA3F0A7623B8AE900A7E2
      A2626A7E973070D239FD22C6BFC1B25A690A13752A2BA59D4B324040F097C57F
      A2FB37591828415031F2B354D61A9162C5984F79B13CDA5337F0BF6158DC2519
      9B60FC0B493003879A43E7C8771417FF95702B29FCC5CF56555DDC525585F07E
      F6593FBF98AA2ABC3D8BFEAAFCF0247F65A61D2BFEF30019ACA382400F100415
      223FC9910AED24C5EC984F66B134F25357F0C79735094AA06313640772B1539B
      B710E17FDDC6B0AB079E15D3F8D7C492A8946A59B00A1DD022A3CA8376ACF8CF
      52BBF37654EFB794DCCAE130D00E66E427B5B1024059319FEC622ADA5347F02F
      94C5E550813AB2C81DE985CD29324A47F817EC0A713234E418A68672420D0DBD
      BC52BD0CBD520D530D395E5EA30DBD9C9C420D9D8A0E5CA0F1AF960575299098
      046A59947359F19FE866C256706E0F230CB4A2A64321F2B34821005429E6931D
      F9A93BF873BC98D730CEA42AE44B0E60FC49182009042C54242A2CD0B0C8CEFC
      2EC2BF11AF79BE248EB51CC21C39A308C7345E1257557059F19F6954678B1D06
      CA8CFCA42D610680B2623ED9C554B4A76EE0BFB3105DC4A95EBC101B1BFC04B3
      20EAD1653750EAC68D5D85BCD1A14E5E4E4CFC7936D6D70B14E9BAB50D8F8D3F
      1DD26BA5402DCD78D012E12F548EFF944567A98BFC64078032623E8B642D953C
      F25357F047D71805EBF5FCBC6B0A44472B1B16DB31F0C771CDB90AD42FFF3AFE
      0268FC9BEAB0A7A9C96E6C93DCFD8545923BED56E80B88159B9BB0E23FCF9050
      5D42D230D0D80E85C84FE9572D0D0065C47CCAC3DCE5919FBA827F0185BF614D
      8B0AAA292894E21F6F70DD86389A06AB96A64605AAAFCAC771FD3CEF7284FF6D
      ABC6FAECECBAEC84371D95E86FC7765C5A676981F1B792C57F265DEBD7EF64BF
      6BE8AF1F1D062AEE5088FC9486B04B034019319FF2C06179E4A7AEE09F5F80AF
      BA1B852DAAD61FB5E491D2426F899ED5B57C1C14685DD8A66A59513D15325858
      2AD19374B4256047D3344CE5FAA39CB65654DA58D774E40A2BFE531AF48EC340
      6F90305056E4274D8C005046CCE7FD073292457EEA0AFEFAB9C4D35C6F51B5FE
      A8852A4DB691E8358FD0A71CCD3055CB8A1AE9529BDB7A929C1CFC24CFDB4D4D
      AA041D1D71E9ED76898AF84F9AAA72F30D7018A862E4A74200A852CC273BF253
      57F09791AAD58AF252BDDBC4D13435C7E7A812949626DC936B6CEA54A18AF84F
      853050C5C84F850050A5984F56E4676B0FE3D49BCFBFEA35CA69195253D760F5
      40E13BAAA92161A08A919F0A01A04A319FECC8CF7F06FF3B7773F00BCDD9F676
      60568E5E1FFD8344E3DF3E747542DBB0FB2C7FD9D18403C2FAF0EF0DFCDBCA63
      B39BAC98CFF6BE97D3513BA4AEC9AAA35B6A1FEBF2F7CE95CA753A329E077AB7
      7B953AB54A6E142D26B75011FF04633B11FE06B04C02A678ABC621D5E695358D
      DDC3FFB12E7FEFFCECF293D3629A5822378488696695DC285A4C6EA112FE2502
      13F36ACB5A747B5347C523D5D5549B5798891BEE760FFFC7B9FCBDF3B3CB4F4E
      89696489DC1022A6995572A36831B985AAF02F2F1731179D88CACB4D2BBA8DFF
      E35CFEDEF9D9E527A7C534B084610825A681554CA36831B9854AF873C24AB9DC
      B2326E846B3AD79504B7E24364557637F17F9CCBDF3B393BEBE49458D796B00C
      21629A58C5348A16935BA8847F6191B74099ECCC6BBB89FFE35CFEDEC9D95927
      2762E3D459A2C61022D69955AA8CA2C5E4162AE1BF8B575C82E7C4F14B9EC2CE
      86E174985198A0BCA6DBF83FBEE5EFEACFCE3E392526EED2129621B4982656C9
      8D928919AAC3BFC02654C5C49F51A46577F17F8CCBDF15CFAEEEE45231D596A8
      318488A9B54A8D513231A985FF38FE8F73F9BBF2D9559F9C12C3B3F7AA2C5163
      0811536F956AA3A462320B95F04FDE59189C425E3235181D3607F3C881C31577
      17FFC7B8FC5DA3B38B31FE669D58A2C6104AAC33AB5418458BC92D54C23FEFD4
      4E324D485E71247DED51D0E0F0CAEEE2FF1897BFAB3BBBE2C969B12DAA2D5163
      0811D3C62A6C944C4C6AA112FE8949A7C8BB8F0C0C0203F16B8E024FE3C3E192
      ACEEE2FF1897BF2B9E5DDDC989184A6A6C09364426A6DE2A65A3A462320B55E3
      7F2A391FFD61C2FB53C98F80FF635DFEAE70767527276228A9B125D81099984A
      ABD4182515535EA02FC55F3F37292F2977A4FE0819E98FCCBD96CC39D84DFC1F
      EBF27785B3AB3B392536364B234BA4861031B556A9318A1653B1409FC63FFEF8
      C87E7818E908938E8FBC6623EC26FE8F73F9BBE2D9D59D5C2EA6D212D5865062
      6AAD526D1411230B0C680B15F1B7BA7A64C080016DAD56D21BF5E6E6EC16C41A
      7946D23DFC1FC3F277BE74F9BBE2D9D59D1C8B9966F2D1795459A2C61022862B
      A9B44ACD9A7C2286577064D2162AE2DF7C157D01C75B5903850D98D7EF76F7F0
      EF62F93BFE009A2D7FE76BBAFC9DCFE5D3CBDF355A7C8F4E8EC5C8AA0B9596A8
      59878FC548259556A959934FC4C80203DA42A5F997F63B92BB1D39ACB7AB92C9
      F38E9C6EE2DFF9F277BC9847A3E5EF7C37BE66CBDFF9AE3EAE7C2329FE4A6757
      B5F61E8B518FDA5665899A75F8588C54526395CA35F9448C2C3030528D7FFBD0
      D5F1ADADCC813F944B48409C7BDDC3BFF3E5EFE40368B0FCDD878F574D68B8FC
      9D9F4E2F7F573CBBBAB5F7588C2C6B5169899A75F8588C54D274513E368A8891
      0506B485AAE61FEBB3D96385D9D9D9F54D56DDBCFE3B5FFE2E4CE76BB8FC3D82
      AFE1F27721DF844F2F7F577176956BEFB1181781A2DA1235EBF0B118A9D48955
      4A6BF289185960405BA862FEB1DC7CDF0574FFBDA5925A4A62B1EF82F923CC3F
      76BEFC9D7C80740D96BF1FE01FE06BB6FC1DB5136E7C018D3FFBECEAD6DE6331
      EA79DCAA2C51B30E1F8B514B355459A5664DBE544CBA405FD5FC97102F54CBCC
      24EBD54C513B880FE5E2866EE2DFF9F277F2013459FECE473BBEB6CBDF15CFAE
      6EED3D12A3B9AA2D51B90E9F1653B3285F8D51B498DCC27F1CFFC7B9FCBD8BB3
      CB4E2E17D3D0126C0825A6CE2A3546D162720B55CF3F22529A7FEC26FE8F73F9
      FBFF6BEF5B00AA2AF2FF47C9FC418A68BE76372269D35F2D5BDC37A8706F68F9
      4E133535722F082AA68280685A669662A5665ABA216F435159B0DD54044D5B17
      77D7DC25D0E4A1261A090AB8898FDD76DBFFEF3FDF99F33EE772DF827507CE3D
      F33AE7CCF9CC9CEFCC7CBFDFF98EF4E9961E4EB211A75812E582B0D9944B65A1
      505C36B68432FC032DC81FFB39887F472E7F5778BAE2C34936CB25512E08974D
      B154160AC564E34B68BBFCD141FC3B72F9BBF4E9961E4EB23D665B49B88270D9
      144B65A1505C36B68432FCCF58907FED7514FF0E5CFE2E7FBAF2C34936B2444C
      A924160A42B2592C95854231D9F812BA1DFF8E5CFE2E7DBAA587936CD86BA524
      E282906CF694AA9EC1FFB2B08436CB1F2F3B887F472E7F973DDDC2C3F96C8A25
      512E08C9D67EA9E48562B3712594E15F6549FEE820FE1DB9FCDDA6A7E387F3D9
      2C9444A920249BC552592814938D2FA1CDF2C7DE0EE2DF91CBDFA54FB7F4F03B
      4C53B6B92450102E5B7BA592168ACBC696D0FDF877E0F277E5A7CB1F4EB29118
      A592582808C9665BA9F84271D9D8122ACA1F2B4BAA2A892BA1A7AA4A6FAF7287
      F1EFB8E5EFB2A75B78389FCD5A490405E1B2592F155F282E1B5B4265F963D783
      220DD2835D1D973F76E4F277E9D32D3D9C64C35EEB2511148464B3A954824231
      D9F8124AF1BF4EE48F72E7B0FCD1ADCBDF6F4B96BF2F4E142D7F6FF7E98287B3
      D9AC9744501092CDA652090AC566E34A28C5BFE5EF7FFF44C9392C7F6497BF5F
      535AFE7ECDD5CBDF578996BFB7FF74FEE15C36AB2511148464B3B1545CA1986C
      7C09A5F8375F95AA89D37521AD456DF7C2F2F7A9FCF277AB4FE71FCE64B3A524
      7C4148369B4A252814938D2FA1BBD7FFBA63F93B5D876BC3F2F7F69FCE3F9CC9
      664B49F882906CC245F9964BC5178A59BBCF97D0EDF877E4F2F7F69F7E47D9B5
      5F12BE20B7589A64BD542D9C133EE8AEE0EF71EEB03F704A69171A1CE9F8B636
      A73CF8DB8C3FB3E87895D2CA646E579B55BF582CDFD566D52F5E57DED5E69FAB
      7E6E79571B0FFE6207BBDADCBAFD4FC99AE6976FB40DBC054B915DBEAB8D077F
      499F7AA5B975C08D5B2F0F17BAB097714734A0D81DBBDAFC74F01F6E83EBD2E5
      667D03D9D546BC34F95F27FBF56B6A1EE0865D6D7E42F8F77BF089BECD6DCF44
      7C69D166D37076579B96E2B69B9C1BD856D47C656FC3DEA65637EC6AF393C2BF
      A1EF358C7F65BBF8C3CAE3BE8DBCD10A584F7E6D7D61C3377BFBB7B861579B9F
      20FE5DDBC5DFF7EB4B979F68C0F4842C4FBE02FF18DF6FBEB94C765571F9AE36
      3F2DFA53681D7FCBBBDAF473C7AE363F31FCADD2FF1B6EDDD5668653CE5DF034
      4F70C07DFF7DB3FDF487E0DF2EFDBFD1CEAE36D71CDCD5067EE9AE36338638E1
      5C82BFD25C7C425CA44D6E98C8857FEF00FD6FB6467F9477B5B9D8FBE289DD7B
      AF5ADED5C6CFEFA2E55D6DC05D20BBDACC38517F6248EF822105EB4E5C1C72E2
      04E32BA091DB4491D85750DF7BDDB6750527F03FCE52E020FE12D4A411C308FE
      E603191507B0EB5E51C19CBB530F89A227FF70F19D26B8057FC55D6D40D1B7FE
      AF27BFB0B0AB0D2C43D96579571B483E4F76B599E197569E061AD87E64BB16C6
      57AE1409EB88A8CA37F683BEF605C7F03F152E62D7874B22268713FC879B2B4B
      AA4AB0AB64CEC427F25456850FE3778B4D770CFF6B56E97FED1F1576B581B554
      5FC3AE2ACABBDAF89E3F7EFE82E55D6D20D997EC6AE37AFC4FB14E1C129099F0
      C9C23D76C34F75099F5A5B5D9357575753737A7B3583BFC9ECEDED5D5A9AE94D
      F443E08C7DF89C49A2C0E3EDFD30C61F766B3792DDDA1DA73FEDD37FC55D6D60
      35D5AE4B4D9676B5213BDB58DED5862CD424BBDACC00CD7758B7761C96B3B1BE
      AD34325F1409AB5AF2F38FAF390EEBDE204BBE1CFF9668C16EADD75385A15621
      FE3C6A14FFC263830E959A2A4BBD73F740C484B8C9C3CD6556F1CFC4F8F7DBB3
      D378CC589D9BBBD74DF4BF5871571B7017FA345ADAD58668B15BDED506DC5B64
      579B197576B973A2901C7F73B89177667148883F8F1AA53FC5BB8FBD670A3005
      04EC2E8E64DB7F5640C0BE7D4421909C03F03F9C491449C80AC0F817EE327AE5
      E618B3730ADD44FF9577B58105256B4EC0AE2A8ABBDA80BA719D2DBBDACCC8EB
      51DB03F465F36A6B7B1CAD657CB534B25614897D47F358BD647256C0DF585B58
      0C2C92B622C0DF686443B779FC31DC02D428FE38C29493E365CA29BCC9D17F9B
      F02FDE6D0C841CC64D058EE06FC3F8BFC8AB5661571B4C73FE38F8EB2B5F38BB
      ABCD0C2F279C12FE79C77617F64B6FBA6ABC01F8E71969A8F586A8FD0B50A3F4
      676FAEE9585E5EDD3153BF9B1CFDCF3E1278E4880FE8269333A829E3B30F8DC2
      9EECEC37C287151A07791F3A54EA5D6ACC7588FED8807F60B5855D6DCEF9EDFD
      C2D95D6D5C8EFF8E41C776ED692834B6DC02FC770C3242E8248404F8F7E551A3
      F8FFD554BE333F1F1FA69B1CFDB7A100E1C38CB8E3C65DF7C735A78D6EA2FF96
      77B5E9094B419CDAD5E66F5D6680E63B34AD37B2B30369237B83342F883C228A
      C4BE40DAF87C2007CEA284FF16EFC01D3B771B9B5AFE09F8E39071E7EE061212
      E02F408DD21F53EB4D3220BA75C3C4D17FEBF03F7A37C6FFFCAE3635824D6D20
      6A4B2F6E570F0777B5C1F8333AEF01ACC220E7A3EA8BE2C800860ED30C594AF8
      D71CCAF2AA333634B5FE0BF08790B19C86EC1DFFE30E278FF445F40C4B62E04C
      A248426D0F17E06F95FF56946569579BDAADDF38B9AB0DC6BFCC9B8CE8BCCB4A
      BD33CBBC199FB75264260C0833690419FD9529E1DFF35040AE71E7E593AD7700
      7F081D33D210DFFE453C04427FE4F89B6CC3DF54CCCE244C8ED39F76E9BFD2AE
      365F563E3CE801AF9AC17B9CDCD506E34F14AE39156CDE079125B24898759283
      0495F0CF2F0DC8C9335E4AA7F843C8984F4302FA63E2E65F268ABFF174CDC775
      9824D5541B39FA4F0CF930C35EC1F99C20028F3F4D1FEF2CCFCFDF596EBAEC26
      FAAFB0ABCDC9A6863AEF41EF071EDBE6E4AE36EEC0DF3B20BB7A87B16F33A1FF
      BEDE01C6EA1DE524241CFF9BF2096A3B4D0D94FEE41A71677CE890F7206321D7
      FE7DB7E2E95EFE71B00801673CEF59934F1CE3C127987F998ED5E5E5E59972DD
      35FE6F56DCD5E6C18AAAD367069D7372571B8C7F454645F78AEEF8075C06E3CB
      A091DD4591D847B85E1907BA1FC8A8C0593214E97F6956766ECD0E63FA6D42FF
      4B8D102A48978CFF39D498F957C1262390D540E3EE628EFE5BC7DF17E65F3926
      AF9C6CD3AEC29BF6E36F93FCBDA8826C5B23D9D5E60ADDD566A083BBDA5CA3BB
      DAFC9DB47F879D12FE01DE9B7272737117DC0AF87F65A4A14BAD22FA0FA8E5E6
      E4006A0CFF2127DB9893EB65241180FF649399D87248F32B67CF7EE49C46A288
      A7BC17CCBF02024C78EA7C6C77B1DDF4C736F7C5F5BE571AAF5EFF41A2E5B8B7
      EF957E578B9DDCD5E67E57CB5FCCC62F6BFAF4EBBB77EFDEC7E9FCB796099D94
      CCBF38D4D8F9576EB5F19871E79E7E2CFEC36DC0BF3C7CD89E5C4CB74CA58706
      1D2B94E0DF6216BA1627F40FBBDE3B723DB351C4FF312AF37F2205A851FAD380
      8954BEB17C77433A3FFF3DB1ADA0BEBEF7BA21DBE8791BF6E1736F12059E7543
      D6850FABDE7EBAA6A60E77DDD5B512FA63168D4DCD4EE07F0F3951A36B69516E
      81E19102D428FE8DDCFC8B69FF91E6F4C6FE8DEBD7373636AEA7E7FED8076712
      45121AD7B737FE370B64038D4AF8CF70B3EBB4952419FF77118FFF19FC1D903F
      0E93E05FD4DAD2D2DADADA9C7E69B722FE5DDDEA3A2FFE327163B834C221F9FB
      8409CD62FCDBAEE221F9C9F4BE0575973DF8DFFDAE68D8CDA6C28686CB97CA77
      783578F07740AB845128B1FB63A0979945B2490FFE98AA0F1F669FA3034A5B3B
      038E81347C0283BF4036E9C19FE06F2EE1B44AD85FDE8B8F0C2EDCFD8099C75F
      AE8CC2DF848B80997945F703D1934D2CFE02D9A4077F827FB840AB84FDE5BD82
      C89212F3706640A9A88C4243E4C478C95159123D732ADBFE85B2490FFE0CFE9C
      5609F3CB798593859898166F21FE0ACA288C4A44A9E4B2CC98995CFB17CA263B
      05FE1D3CA920F897655AC0DF2CE22FC610FC19FAA3A48CC2E22FB92CD33C93A3
      FF42D964E7C0DFE926EC3CFE9B58AD06E697F39A4D8249B029264B80BF82320A
      1BDA27B92CC0CCB77F2BFC879F26FE5996F1DF7D29BD19CF57F1A4B508032EA6
      FFEDE02FBA2C80A3FF56F96F3F4DFC79AD124E964FBD66D3E5BA82BEE93065BD
      DA6632678BE9BF54198586F04972990F47FF3DF82BE26F5199C16C6AF0DA517E
      E972434361D34D93D94B4CFF6DBF8CA7FF1EFAA3807FB56520FF0A4CE89D8409
      6D8AF112D37F2F9B2FE3E9BF91E37F7AFA5F0E7F4EAB81F9E5BC66130861F28E
      D58110C664AE15D37FA93204133A9A27BD4C30FE2F3232FC4FE36E0FFE36E05F
      98939D9D93EBB56357A1147F537BF88B2F138CFFDBAE1A09FFD3D859F89F9D01
      7F4E7984F9E5BC665301D9CD372BF0D8EE6293B94E4CFF65CA284CE89CEC329E
      FEDF6C2A34365CBE64EC34FCCFCE80FF7156AB81FD65BD6653AE37A38472ACD0
      14735C4CFF65CA1024844F92CB7C05F41FF89FC69DC6CEC3FFEC0CF8FB5AC67F
      7B59F5C79FE755E75557579BCCC7C5F4BF1DFC4597F90AE83FF03FEB8C799D87
      FFD919F0E7B41A985FCE2B662498FD04F82B28A3B0213FC965E502FA7FB370D7
      0EAF5CE81D0A3DF85BC55F325FF213D37F8BF84B2E2B17D0FFE2DDC708FF33AB
      B3F03F3B03FE9C5609F3CB7BE158C785D789E9BF54198509E113E385635DC189
      1302FA5F788CE17F7AE77AF067E42FBC5609F3CB7BC9C187FB9B79FAAFA08C42
      F3E0139B000A29385B7F33D7FE6B39FEE7760FFE8EC81F874D7048FEE8E17FBA
      46FECE289438789987FFD689DD3D8EFF187B9D077FD7E23FD33EE7C1DFC5F883
      5514D8E9BD808C0261DC878FFA022E4E9238C6F12EC04EC33E3F11FC2F30F638
      98F913D9423B4D18274E1CE3F8104868D8C775FA033F61FC05BA54E4C4F9AC1B
      F699E13250EE75FC61CB50D82EF938E1891DCFDF0A2651E09F8993240AF10F97
      616EB3611F0FFEAEC0FF90D49892CD867D3CF8B3F8CBF635159AA739274B14E1
      8F01E6A06654AA6C34ECE3C19FC5BFC7516A99E6283556C3393E4E94D83EFE36
      1BF6F1E0EF0AFCB30450EFCBB2C7B08F077F167F3B0DD588F03F2CC5DF66C33E
      1EFC5D817FEE114EEB8D626EB3611F0FFE2CFE6015881C04C06CD2688F60C7C6
      491245F86F76D8B08F077F57E02F43DB66C33E1EFC59FCA9FD25D03F666C3409
      CD36ED93258AF01742CDF4D0361AF6F1E0CFE20FB698E0A023C932EF3230C994
      298E13248AF0DF9127C1DF66C33E1EFC5D81BF106AE2B1D9B08F077F167F66B7
      62B2F68DAC9C63FF2AB98572C24411FEC09EC817626EB3611F0FFE6EC1DF66C3
      3E1EFC59FC8955ACEE19CCCA5DB2EE36A3A24210274E14E1BF2BCD8F879AE150
      DB66D8C775F8AF42AB7E92F25FC03F4D8ABFCD867D3CF83B28FF9D2994BF34CA
      9D8D867D3CF83B7B07C7E48FC35C8EFF53BF88FD49E2EF9C611FD7E1FF78D4E3
      F732FE51F63AD7682DB80EFFC79A1EBBA7F137D8E738FC3179B781DCE05EC0CD
      F8C73E774FD39F283BF57F38FCF1F0A6803984DEDEBD0BD8338DAA7733FEF778
      FF1B65A7FE09873F1E73963387D00B9BFD30671AE5E766FC67E5BEE4C1BF03F1
      BFD7DBBF9DFA271CFEF984F9400E895712E5C1DF837F27C6DF4EFD1F0E7FC273
      A687D0CBB0A3CFB15CE973E73CE3CF76F1B753FF84C33F2FAFF6287308BDB5B5
      47D9338DCA7333FE91E6480FFE1D88FF846727DCD3F8DBA97FC2E16FF3156EC6
      7F6084C9837F07E27FAFF7BF76EA9F70F81F39E213C81C42AF8F4F207BA65147
      3CEDDF2DF8EFDB47F40EE1107A19837AFBB2D8A87D9EF6DF2EFE76EAFF743AFC
      FD7BF8DFD3F8DBA97FC2E10F56539943E8CDA46655E14CA34ADD8CFF2F4FFED2
      837F07E27FAFD31F3BF54F38FC1973D9CC86EE42AF24CACDF88FFB60DC4F12FF
      03070ED8207FC1D93CEDBF5DFC2BF66FAFA8D8BEBD222303CEF8777FC6F6EDDB
      71603F13274EEC74F2C77B9DFFE0A8FC9173D2166F2DFCE368FFAE5A3FEEBCFC
      DD18FA9F3BE1D4DDF94F28C61B8719FB3D345C7C3E9FD92C312FD3CBE5F84FFF
      74FA4F7BFF23C0FF3F04FE7F73F8DF2170DFE1F0CF23D591E70EFC3BA6FD7726
      FC5B0566FBE763BCA5E1B6F3CC02B03C2FAF6A97E3DF31F2DF4EE3BA76353609
      CCF6DF1ED67598388CF12F3CCF2C80F4CADDE3C1FFEEE30F0AE8D879056C2AE0
      F0BFE9ACFBD1D21FA9B5B576ADAF01FE7B04DB26B461FCC561067FB2E3BD00FF
      E1CE3A16943941737F5CF89B452608CDB2B01C7F7EDB048ABF288CF107EBB5D8
      81F55A0EFFCF4039BA7FFF46628E12F4A4C5D5DC3ADC4AB8F147DBFECDA22D64
      017F81F54D45FCF7F0DB5610FC4561067F2F82FF1E1EFF826DEB4E5C1428D749
      AC0F374AC2EBA5E922FC7F4CFBCF9A2305F49BE02FB03EAB8C7F6E4D75DEEDBA
      9D0DE90CFE101EC684017FB09E3D0CAC670BF0A7EA5CBC7297D9942ED8FDC8BC
      4E12AEC7F8B3E16229FE3F2A678E14D06F82BFC0FAB205FC73B36FDFBEBD634F
      3F16FFDC6C3CD3A561C03FBD6137846BDAC75FB4FB919F42D8D48F864D4502FC
      23CD915DEF3567057FC13638047F81F57165FC73B2C95EF4BB0A19FC73B209AB
      818401FFA64212DEE125C0DF37FFB86FBE40B94BB2FBD17149381FC2A6BDE927
      4F3699202C6CFF5DBB54B8C5390EF097CEE1CF6F8343F107FA718C58DF57C4BF
      30279B0C3059FC717817710CFE6DFCEEBD3CFE622D2FD83443B4FB91347C8E84
      4D972E5F3691B010FF076E5CADBFB073E7DA5EBDFE841DFC087D8C5F1C250E10
      77A14FCA22BF7F7D77A5C17977A5F85F354EE02FD80687E20F06C4761203628A
      F8176C02F43185DA5D4CF01785017F7EF76A1EFF1EB562E5228CAF60F723732D
      0D7F6C62C279346CDA61A2610EFF39A3E73C70A7B9DECF0F747D31412BA787D0
      C79D8551E240F9850BE5F5CD777C175F7FA24F9FB7FBD8EEEA95221B5A173FE0
      04FE826D7028FE7CFBB584BF17F90078FCF9709761B705BBB73771F8CB779F12
      ED7EC4844DC74CA2709E894917B5FF3B572F606276FEB8AFEFF1E3C7C9C1FB38
      BF384A10803F5058ED75F5B6AFCB6A72B513F80BB6C121F80BDAAF22FEB95E64
      DB96CC41E70B09FE4CD89B842DE19F7DE48D6CA1728564F7231A36E1B089848F
      48D245F8DF6E1ACC6FEAE3B01BDC74DBF7F6D55E2EA9C93BCEB47FC13638047F
      017E4AF8577B79E5E79FCBABAEAEA93E0FF8E370CDC77579B57924DC65D87C81
      01CA560EFF0046A38255AE90EC7E9485C35926123641789F245D887FE0ED7E3D
      C976563D8E627246FF781FEB174689D3F11FA6813D7AFE4AEBEBB29A7406FFED
      A701BF1A58304DE90F875FA312FE5E9979BDC8A4283FFF7C31C61F87CF4FC32E
      F23C8465FC688BF80B773F327B9B4D3926266CC2E152493A877F444B62A0B66F
      8D97F3AEA6AF768DD64535793BD009FCEDE43F60BC995929873F236FE1F017CA
      6318FCBDBDCB4A85CA1566D3F6F76A3E3E97871DA6F2E6123CDF3A9DC7844D24
      2C4A17B57F4DC3673EA08607CA6347E81FEF63FD82A8F7DF17A5E33F1F9FB33E
      0F3468D6B8AC261DC7DF3EFE9BA3F2C7CFAA4AC4927F097FA1BB247CC012FFE1
      B5D2D702358F6F0A6035C588E37DBC5F1CC5073837E81DCD6097D5A4E3F8DB24
      3C76969932E3B38AEED8098C7B48AA79B895B070FC19A8E9F35E5919FE88CA32
      2DBBB2F612C906DC67FA60FC5D55936EC6DF4EE3034379EF0C17F39FA78C9D12
      F8EB8BDE55959555959525EDFC0903F254FC11965EFCF56097D5A4EDF8A78A1A
      56AA4DF467C6F003B63AB3443E3FC3B5FA035D4CB34C0FFCECC180AE156036A7
      A2FB81EE1970F03ECE2F8C12A5C3DF8103195DCF3CB8A8D7C6FA3257D464FD46
      DBC73FE670A133DBD4FFCE18CEA9BB595483630E823FAD803B3CFEAE73B8FDD7
      2EBD76ECCBFB3F75CEDDFF3FC7AE2D7B7BE1DEC35F3A5D930707352CA8F9D276
      FC05FC7E82BF75FEFF8CE154B753ACFB29560365D43FCD12F9BCABF1C7E39F43
      179BEBCFDCDFCD3977FF99FAE6218FA536BBA4269B536B2B6DC75FC0E825F85B
      E7FFDB85BF581EEC06FCBB9EFDAEE5B1CA3FFCFE13C7DDEFFF5059D7F2DD59FF
      73FFF0AB7AC8C99A7CE890DF3F0677B583FE34F08C5E82BF75FEFF8CE154B75F
      ACFB2F5E06C0A8FFBB1BFFFE87C775F51F9CDAB236F0CB3F38EE0E1EE9D5923A
      D8DFDF6535690FFE4FF08C5E82BF75FEBF5DF88BE5F1EE68FFFEFE83BF0BDAE0
      770E5CDDB973A2B3D82B097021BF0D41DF61F8F18D529B7B395793816BA126ED
      6AFF3CE397E26F95FF3F63385DDB255EFB255E06C62CFF324BE4F3AEC61FCFBF
      30FEFE6707FFEC676A702AB55A74167B25012EF4B39F0D3EEB4F9C8B6AD21EFC
      79C6EF2D82BF75FEFF8CE136CFC5CD443E4FEA93C8E35D8D3F1E7FD2977AE0EC
      1BE0E82F7F167B25013E37192F56F8BBAC26EDC1FF0ACFD825F85BE7FFDB89BF
      501EEF86F1E7BD2DFF35870FE119BB047FEBFCFF19C3E9DA76F1DA77F1327866
      F9BBD92896C7BB1AFF81EF4DB8C7F51DC279C66E5F82BF75FEBF9DF80BE5F16E
      A0FF5DBA34873AE49A3B07FEFE676A7CCF01EFBAA696E06F9DFF3F6338B56D22
      B67D223683C2983F311BC5F27857E30FFAB75D421DE32185923B9C228EF72AB2
      81875B63CBB4AFAFD70E1BD931FE0367EEC7A21920E6304BE4F36E187F62FC87
      0C1972E2C489FAFAFA02303F578FFDD8B36EDDBA13C451FFB66DDB7036ECE9DD
      BB37CD09F8C79AA3A246448D184F7DE06805C8F4F1ACC0626F7E9BF9FDCAFC37
      3BF1E7E5F104FF50973876FE85EF970676CFCAE9AF1F98434EBB70811789D348
      CE93067693210877987E60D05323A74F1F81BFA4FDFBB06FDC78A6599A1AC5FA
      7856D83202FDBC1B26925F1026F94D6CFE32934C8C6537FF99DA7613DB7E139B
      8163CCBF998D62793CC1BF608854FD735D0135B07871DD89DE05E44721CB8913
      EB780B8DF52704EDDF09FC233270058C8AEAD2E5E9B8129FA7468E8E62F197E8
      DF5961CB807E5E3AAF9F07F9F930CD6FA2F90F9972EF2AFE208F3FFE615ECD5B
      441E4FF02740948B0DFFB1D6FFFCD2D81F5916368E58084C2B17E04FD510D6AC
      59B375EB56B0A8969F4F3DA05FB7752BB18A06A9E7CF9F3FCED9473B7E1CF037
      8F1E5BFAD4304C77BB98E3E2CA9E9A36DACCE22FD1C7B3C296319B1A887E5E13
      D5CF23F9B93093DF7404F29B14D438EDC69FDAF614DBFE149B0165CC7F9A413E
      7C1E6862882FC88309FE7E7E8EE24F914FBB80ABB69C1F7F86DAABA1708EE838
      10FC878E3DC4E23FB3E4A9A9911CFE127D3C2B6C19AA9FF7E7CB0D26417E36CC
      E6377D969B635252E3B41BFFF5C4C2F9FA4662EE9C1E426F23EB5D6F96C8E769
      FF1B51F3A8EF1A5FA90E28B1FE974F122CA5826DC035C7213D82F6930FBFF530
      C6BF870352F2A34719FC4B461A58FC474E11E00F6C1813A78F172908736C99CF
      4D2C5B86D1CFDB6912E567C25C7ED35193A21AA79BE58FC3A4F2C788115E324B
      7FCA0DD542EA63232284E31F2FAFFEE09AB063CF161D9BC1CB8B6DFF23B9F63F
      720C8FBF44FF2E5210E6D832185F862D23D1CF63F233619E8D635256E3BCCBF2
      F75318FF1E7947A53AA06060EE685E8F3CF2A3984A4DD3C11F8BFF9887C700FE
      3DFE6BB7E3F03FC3B5FFB29102FA23D2BFCB266C1936CCB2654C0D972F99285B
      46A6BF67971AE7DD7611639DC4BF76ACA8FD138D11D01BE15C36713EC471412E
      120C4C050652FC470470F81F11B6FF824D02FDBB2C60CB7061862D63226C19D3
      E79709FE12FD3DBBD438EF3EFED54EEA388D65E8FF9CD17330FE5902C7A885B0
      8A21F278D8B675DF3E1C24F8478C7880D29FD971330F8F1C13C1E19F2BD4BFF3
      36470AC2942D6362D832A6DD04FFDC4C91FE9E5D6A9C1DD0FEA1494A747041C1
      E97DD061821FC5546A1B0D9AAFB8FD832894EA7E787B0B554188BA08E8D89511
      AD112E03CE8F3D80FFAC88CA414F4D1F05F3AFB892ACA7464670F32F13C78621
      FA779182309D4F716C19123601DB46A0BF67971AE75D76A79CC6DF87C5FF99BA
      6730FE55555595AC636CE6887FA987F3133B455564FEB5BDE40C9E76459DC2BE
      03A7C1D74589FFD0DD4EFE4377FBD438EF7AFB1FB19AA107010AD6E7B81FC554
      4A41D8FE77E2D71331FEA04B575191411C5D3C843DA05847E2B1878BC7319C6E
      12C17FFAF459B1B3CD51E09BC5F89CE7BFB50CB7578DF36EE3EF4588815807B7
      0C93093080467E945259DB68A565DEE2F1A733FCCFCEE4660CBF3B6B5F238E78
      11CD5B99F52D4246C88F522A6B99ABAAB2AA8AC17FF4A651F736FF5F827F4665
      6559D6112FAFDABAFC0B170A86BB077F39BA16F16F278DDCEA67739EFB112DFE
      9D31BC7B555529E0DFA3CE372D6D889BF0AF209B1E0AF59FD90D0E2B40A18FFC
      3039DA49A325CE9BF1A3C2BFA2B23233CB07DAFFF1F2F2136EC2DF8562ECA72B
      9F76C3F88C3D5371985D41E7E98F376DFF6BD2D2EADD84BF0BE52F64FEB5D7BA
      B3A13B660A779F33CE65F8D7D66D2D2F7717FD77A19BD6671AC6DFEAB7B277B8
      D52C3CFE86703035386C98C1101E7E9F7D41E7E94F49496600C1DFD7CFAFBEF3
      E3FF70F8AF5D8D7F18C652FFE410BF3E7D876250EF1B6E43F0C1214CD035F49F
      8E7FD2D24E746AFA4308D083E3FABA1AFF8888E1439FBCF2C413577A8D8E1866
      C0C1B0614FF67DE2897EE56C50923AF4C9BE4FC69F1C4282CED31FDCFEB3B209
      FD71DFF8335441BCAB28F1A5911684C1A1DCFCCBB5F88F1E3D3AECFCD7BEBE17
      7B4D1913310C072386F55F726DE9D3C16399E063347530138C18690C37184792
      CC4EE37F00D3FF0082BF6F79F93A77E1AF205E549438A695B7238C24F847B424
      BA1CFFBE7BFB3C56D7A347DD60DF77AE0C85E0E3E1E17AFD6FC2831EA74171EA
      93234D98F4871BA6F7E937D479FCBB03FDF761F03FD1F9F11F1F3CC1E5F4A7EF
      F5277C7B60E7FB44CBDEA110BC0C008F0A0F668292D471A4EF0D37A6EE1DEA12
      FA5F46C7FF5BEF09FCE9F8D3B5F8F76F65116EED3B14827FF11D8611EEDFCA04
      25A9D005E01A3040D079FA5352C28C3FF3DD37FE0C5510AF2B4ADC994865613C
      C1FF79F364978F7FF403AEF4060AF3F59501FD8741F0AFBD4C2683E14A2B13EC
      47527BB3A953468F198D87414608BAA2FF2DA3FDEF713F3FB7D1FF76C4EBEDC8
      E325497CFF1BE95AFC9F1E786D6F6F5F5FBF279BDB5618207875F4B808D33043
      1113BCF657487D229E09BE34EDC5C9B88F0E81A04BC69FD0FFE2F96F79F9B6CE
      8FFFA4BC492E6FFFB366C54EC703CE2BEBF54FCF324070E4E8D1BB4F840D6383
      B3C4A9B3A6CD7C714A44C47408BA027F6FDAFECF9797BB8BFF16AA205E5794B8
      D3480BC278778D3FF1FC2B7CD680969601EB71C76A8060C8C8ABFD9A9A9F1CCA
      04A7D3D4E94C307CFA4B2FBEF0D24892D915E31F6FF7D31F2F5738823FECBFE0
      F2F9D730C3AC3B376FDE39193694CCB0EC08BAA2FF65F89F78FEDBBBF3E3EF86
      F63F664C445870F0D34F5F1F301A4F7DED0BBA02FFD27D78FC93772EDF7DFC1F
      17E2EF0EFEDBB42978521B11317ACCD429A3EFB32FE83CFE5555DE01815E5E47
      81FFEFB6F1A7827A83A2C6038DB4A00C41F0576F50B91CFF8EE43F5760FA1F40
      F8FF5BDD38FE711DFEAE9F7F39E59A9D133133FCFF6CD7F11F14A556A14AEA25
      16344E04BF922482FF332F8D74B1FCC5B996357C485A9A6F5D0F2FAF2359A555
      DDED55B1C0E31F86FF7014F8FF3CFE22F59516F9920BC1DA0B715665FC15D44B
      14354E68A4056514BEFFED3C8EC11FD30FC7F1CFCC0A24F2F70B17F8F1BFD928
      70E676F117677537FE9D4CFF81C5FFBFFD1DC4BF82E5FF9CCB2F2FEF2DC0BFB6
      B018F6FD682BC2A02A2DB9E33C187F36EB4D4BF82BA8F7286BFCB0914ACA407C
      FBBF1B76C96DC5FF4479F971C0DF272BB3B2C2A1F6CFF0FF31FE1705F8571FDB
      5DD82FBDE9AAF18655FCAB8D346BEB0DF7E3DFFF91013F36FC4B15FA5FB3B166
      D0B15D7B1A0A8D2DB78C66F9926BC1DA6BC86A84AC2721ABBBF187FD677F64F8
      9765BD81E75F62FE83D998E71DB863E76E6353CB1DA3596E7240607B806435EE
      DCDD40B22AE32F57C0AA5088CA3840232D249177D33FA97707FECD1314DCF7DF
      375B4899F07D338B7F7D5ADA1A4AFFBD2B331CC05FC8FFDF266CFF87B2BCEA8C
      0D4DADD6F187ACC6729A55197FD7C9DF89FCD1F5F84F505CE1163E01A7C445CA
      DDE4E1135C847F05CC7F09FFD95738FFC58DFA5040AE71E7E59300AA158B3390
      F598916675C7472E74213F84B8097FF341F2B191AF0D3EB703E661E1DF13FCCD
      072429D1934DAEC23F03E6BFD964FC2FE43F9B8D75A5013979C64BE936E00F59
      8DF934ABBBF127FA9F6EC13FDC7C88DD019968019B87B3F80F37578A53660ADA
      7F4179F95667E80F33FEC903F98BB0FD7F8CA3AB7718FB366350E526C704B6C7
      485663F58E7292D5DDF84F7D72AADBF0F7267BA9C36C03A61B803FA13F934D92
      94E89982F6EF24FEACFE15D17F168EFF6BF0B028B76687311D0FEAE526F704B6
      F720AB11B216A4DF743FFE637E3EE66EE38FDBBF3825C685ED9FE83F90F69F2F
      E43F988DA7BD37E5E4E6E22EB8D52AFEA78D34EBA556F7E3EFA6F917C17F1379
      2196F1C4D31F9319D8508294995305F4DFCF8FCE7F03324BDA1F7F2A2C73B1C8
      7F331BB7E71614EE6D68B8BC1BCF7FE5265705B657F1FC97CDDAE87EFCC7278E
      771FFE01CAF80F97E12F1CFF50FC9B6CC03F6EE6CCC9634683BAE30C6BFC3731
      53C71AFED6F83FF708FEC0ECA6DC6E60770BE9BF384544FFEDC27F9A12FE4AFC
      37315353C9E436E7B181FFE94247F47FDC84BF645C27A0FFE21411FD3F919696
      4FF0B73AFF556CFF16F86FAEE5FFBBD03DF7CBE7DC867FB50C7F96FE4B6A4648
      FF9DC4DF02FFCDD5A37697D9FF7767FF9BD70326F4ACE90921FD97A428B4FFFE
      36E1AF487F24FC37C1AA26D6CB4739B8E8C975FB8FBBB3FDD7CAF067E9BF3845
      3CFEBF70818C3FB3B3324B321CEC7F85FCB75DE6A8F1D12C398F1A3FB04B9772
      7C1690F8B60EC5DF9DEDBF4EB4179890FE8B53C4E37F7BF05768FF52FE5BEC83
      2D2663047561456D60A8F1D280295322A74E9D3A0DFF5C1F18D5A1F813FD4337
      E17F7C2B116A9C5F731CD47D85F4DF579C22A4FF4EB67F19FF6DD687578A4630
      EE5AF140C0BFAEA96DE68B33894B1F702BEAD48FB5FD5BC27FB80CFFC9C3BF67
      F15F575E4EC69FD901DE9507ECC75FC67F9B9E537EADA8ED467151EBB593CDC5
      3731FEB30695B7B4B541544BD3C9A2DB1D8BFF0B575E701BFEC45C25596D00CB
      0D84F45F9C22A2FF4EE22FE3BF4D3F5DBDEE647373F3B5A62B85578BA0FDCFAA
      DA5C7FF5DAB5AB574F5E69E857742BEA474BFF2DE08FDBBF384544FFEDC25F4E
      FFA5FCB7BF8DEC7ABAC6EFC1272E3FD8E7E2A57E0380FECFEA7EBA871F189FFC
      DACF6FEF800EC67FD4B2516EC31F16FBD1D57EB0DC4F48FF2529C2F67F82C1DF
      07CF7FBB3B40FFA5FCB791FE5F7E55DD73C7B163477B0C6E6825F8DF5FE55373
      8C6885F7BCD47A33EA54ABDDB66D5C873FD1BF728FFC25BDB13FB1A209E634B1
      BFBF996DFFF214E1F8DF39FC65F6374676AD283D7CE4ECD9C35F1DC63D4131E0
      DFEDCBAC9C9C2338EE6CCEF16B6D51A7441C1FA3F947427F949C45F9A32BDBBF
      D8FEC6C8872ABC0F6FFA2AE07466694075DF0104FF92801CB0697EBAEC4C6E61
      5B5417B351609BFA2EE3EF26F997B2947D42737B291CFE5B09FE59658ECC7FA5
      F637FE36F213FF338147B20E9F293DF47040FE5582FFC1419F65079CF13E5472
      F0747E2BE02FB04DFDE368FF4EE99FD88EFF4C8BF873F6374676F33F3362ECD8
      71D8CDD9FFDE1E827FD7239191B0C5F28B2FFEBDAC2FE02FB04D7D97F17FACE9
      B11F15FE32FEE7C887B6CF66A6BFA3471FA88E22F8C7716E7BAD19E32FB04DFD
      53C7BFA0BC9CE17F7A971C7001FFF3EFD363E7B2439BE9B3A26BBB74F97BEC6C
      6EB0131B1B530BF8836D6A23B14DFD53A73F76E16F0BFFD3BA331BC1D6B4F198
      116C4D7BF077B6FD2BE91F5AC1BF3027DB9893EB65DC55F893C77F9D9FDF7132
      FFCD2A7388FFACAC7F6805FF824D46626BDAB8BBD883BF53F85BD03FB4827FAE
      91B1356D2CBCCBF877B2FDD7ECC47F9A75FEA74DF81B395BD31D32FFED4CF86F
      2B2F5F43F96F22F9A3C04AA27DFC4FDBF0EF30FEC3A8E0D1F700FE5151E36318
      09E2088E5F6F99FF20D73F6CD7B57420FFEDA95FC4DE03F89B478E8E889C1C19
      19397AF4AC11D6F8CF4AFA87EDBA92D2D27D64CD7CDEB97C7CD5DD95BF5FE96C
      EBEFCACBCF53FAEFCDE33FFBA9E963468F193366EAB491D3A3ACF31FEC1CFF97
      646666119E1D1E34E5A7A5DD55FCC9FE8F9D1EFF589FA7468E7C72E453D88D14
      D29F69B6EA1F76DAF63FF59F53EF01FC6795651D39BCEFD0A183A5479E8AB2D6
      FF2AE91F765AFC1D1DFFCC70B153187F7AF3FCFF591919545F21AEDBBE2897EB
      1F56797B07109B1D47EB8E1F2F2FBF37F01FEE52670DFF6E1CC3B2D26C8DFF63
      B7FE6147D27F627FC311FC4F14D49F1822DAE7930FB49324D90F94EE043AA440
      867F7F11FED3A7CFE25898B1D6E88FDDFCB77B92FE907D2445A62DF9403B4916
      F6A3E4F1EFCDE87FFA6465DE2DFE5B47E23FF3D517EF09FCF90DB65DCF7F53A2
      FFA738E75EFCC1FEB9231DE58C7C661F4FDEB4281F6827C9C27EA056F08F1A3F
      22DA6C8E8981F9EFF8F6E75F0EF0DFE4F4FF28B39737B836B7E23F2463489719
      436D77DC9B2A99B6540AD8661D93C7BFDECF2FFF1CF0FFF795F2F89B47868F62
      767817CD7F69FB0F7392FF26A73F31B57D5BDBDA06DEBC75FBD640F32977E2FF
      485CA05D63195E6F02F6911499B6E403ED2459D88FD20AFE78FE4B7769183672
      64FBF83BC27F93E31FBB3D33FFCAB5D601038A065C772FFED0FFCE88B0DD716F
      EAE55267057F32FFC50EE6BFE3ADEBFF48F86F2DED6CE5D6A28C7FDC27A71F38
      7E696FBF93E953CD5D7E52F81750FB274D8101DE551CFEB3CE0C0A1C74064424
      8745F35FDBF86FE676B632342BF6BF31712F1E3C93D3D3AF217DE6DDC07FB4ED
      8E7BD36C58AB2FB2FAC707DA49B2B01FA504FFA35E5E22FCA797548D1831165C
      C6A6A8F6E98FC2FE5FE6C8C6DD971B1AF61616E41A09FE4636B89DE02FEF7FCD
      71D34ACACEF6F0BBD23233D2ECF6F9D78C31B63BEE4D45BBD20628042C2629ED
      47690DFFED1111A4FB1F1D71D06C9FFE21C1BFF5529D576E6ECE26E369827FAB
      9106BD4F53FC65F407E37FE8F4D9A35F9F2C7277FB8F8E8AEE3263B2ED8E7BD3
      32B28FA4D0B41C1F6827C9C27E94EC6D2DD89FE4E6BF31D3A7C7DAA57F48F1BF
      995EB0A32637DB585AC36C656E846016095AC0DF3BE06C5EEFAB37EE4AFB9F36
      9375D304BF8A91DC9BB29B19F2A6B54481769294F6A374649DA8F2F85361FF2F
      73E49DE6BEE53BAA8D01DE1F13FC71D0B8A33A9B0695E83FC6FF4CC0911EF557
      8BDD8DFF8BA766769931D376D799F057B2FFA0DCFFDE694DBF946FCC0928ADA3
      F8E3A0318F095AA0FF18FFBCFA6B6D77A5FF8DB3DD716F5A919151D15D6CF58C
      0BB4932436817620A38264CE70D13A69E5E93A007EF2B2F1586EC0A13C06FF93
      97771A99A032FD89CCDE9473EC6EE1EF08FFC1B5FC67A9F15C7F173A02785343
      B9D12BEB500D837F5303EE8269D002FE9FE5E4D4F85D6D7B718AFBF1EF44F217
      77E1DFD2D4B07BA731D09B69FF2D4DC6DD3B77D0A032FD39322820CBA7477D4B
      DB942877F7BFA74EB5CFECB3E2BA293BE708898BF1BFD572B2B061CF2EE320DA
      FE6FB51821786C90A5F63FBB6BD783255F569DDE5CDE34C0EDFC078AD7D94706
      61E7DFDDDFBF4258F80AE9CB08F1A9C0A95DE1B2470205C89F0D78043BFFAEFE
      F7DBE7BAC26501F44EF4FE8F0682B35A2691236522D77941B0DBDF00FF1BAD57
      9BD2FB15EE365613FC6F1869F058B505FC634921EEEF5E35A8EE92DBC79FE44D
      FD74C949C9C9C9AFAF1A6FA75BF5EF647CA5CEEF51E6FD1FED95A84B5CBC78F1
      FC5523EC74ABBE58BC185FDB8BBB932BCA44F1BF59D406169D8B0B99F92F1BAC
      B530FEFCFB2CD6C5C6AE55C2FFA6B38EC57FDC07E3F0ABFA254E9AB462C0D2A5
      035A9F1F651ACEFC719EF6FE463D8FAF1BB062D2A4443F02DAD7CBB5B78A965E
      BFBE3475D228835D6ED4A4E2A5D79716DDD22EA777724D9928FEEDF37F1C90FF
      BA4CE08DE90F7E55CDA4A2E67E7DBFFDF6DBBECDE3464C998AE7B9919193C95F
      2499F5463207F34B132323A74E1D31AEB91FBEAA5F73D1240DC0E6374F1B748D
      B9D3D851C3860D1D8AFFF101BF8C971EF4447DB03272E8A8B1F44ED782B4F3E0
      4EEB5C5326C0DF7EFEA755FC3F6BC4AE7FFF46B292962CA44D676314A2043138
      489C10FF4713275DEFF76D0371579AA7CF89B275321035677AF395BD70D9B7FD
      AE4F4A7CD4FFD1E5DA25FC9DC6458DB051AA337C44D4B878F64E4BB4CB1FF5FF
      65D2F32E29D3D9BFF93BC0FFAF8DE28999A2FCEB33B93601AF6C208F92A91C88
      F0F79B14F4BB6F2E53F7CDDEC6F8E9B1669B1C7ED3C6BDCC650DFD8226F9F9F7
      D22E15DD69DCD8289BDCD871C23B2DD5F4F2EF33A1ADD115655A6343FB57E03F
      545FBA36A0B86DE0C09B03DBC62BE2AF24CDA6310A5172913787FF43250F3FBA
      78E2D5CB9778D770053E9CFEE9F44BB1F0FD34C2CAF52BDFF0575DBE3A71F190
      C45B275D71A79B890FFEFCB9017B5D51A63BF75BA7FF72FDE75907DFCBEF7BAD
      754051717151945BF11F1F3C21306969433DFE540A2ED6AFAB872FA6A0E0C4C5
      755655767AE31CF5F54386E0B88B43D6F5AE6F589AB436F1BA4BEE743D316DFE
      BF9A1F3CE182323DFF10E0CF6F7E41C73FDC0617047FB9FEFFF4D10702AACB1B
      FA5D6DBE16A68CBFC25EA76C8C42944CE5A05130FE0C7CBEB91ED79A1F3E2E80
      45920BD8955B5719012F73E0DF0BE5F5CDCFAF5D7ECD2577BAB6DCEFD57F5DEB
      E38A32E908FEFCE617047F7E830B167FCEFE00C5DF3C7A5C5940CEE04B852747
      84298EFF3FB3A04D70AECE429444E54048FF039FBFDA0BD7D3F9E35077B8CAF2
      E9D99ACA08FE83FFE3F9C721537EFE85AB187F17DD09E3FFC5D58BE75D70A749
      047F7EF30B823FBFC10583FF6E23637FC048ED0F9823C695941EEE71F1CAB511
      11CAF82BECB5C9C42844C9550EC4EDFFE460913DB676774D9524F1F1834F3EBF
      7662934BEED434D1EFD5C527CBCFB9A04C147F7EF30B823FBFC10583FFE53A23
      B13F6064EC0F98C3C655667E75B44F53AB25FC9D947773F8CF1AF59B405D63CF
      DA1EB88A7AF4E891570BBB401C851F6B2A23A054029BAB821F27F7E8D9A8F3D5
      F673C99DDED5FABD7AA7F1F85117948969FFDCE617B4FD731B5C30F83778ED30
      5EBADC6064ED0FE0F65F7AFAF0B107AF1559C25F2ECD666314A2E4226F21FD79
      23F14A8D0B54186AAE24FA6AFBBAE44E7D01FF7E83AB5D50A6DBDD48FBE736BF
      A0ED9FDBE082C51F2CD3EF3472F60730FE8F049C3D76B9B9D812FE7269362FEC
      9647C944DE42FAF3C6F2BD9FF9801202AE23A89BF77165F9BC6F5565E1C8D9EC
      ECC023B0C7E1916C1F9FB33E0FEC5DEEAB6970C99D1A3469AFDEEE7B2CD00565
      A2F8F39B5F10FCF90D2E18FCC1FE409EB18EB33F608E183BE8ABB33B9E68BEE1
      6EFCA1FD2FFF6613ABB3C06E5A48B2B5AFB2C066A3E78080419731FE8FBBE44E
      EF00FE0DD59B9CBFD337147F7EF30B823FBFC105837F614E76764EAED70ED6FE
      00C63F7BD3919E0F360FB484BF5C9B808D518892AB1C08F13F3BF17FDF2B030D
      057C946696E2E4526F1B5416BCCBE022C845F7DE3BF3F6C4359A3ECA772A83A8
      32281C24104F5966A6C53BF5D1F49A7FF39BCFCE3859A6325C260DC19FDFFC82
      D27F6E830B06FF824DA466038F31F607CC11237C0E1FAEF63B5934C2A48CBF5C
      9ACD0BBBE551329137877FEC73B167B5F5DE5544625E02FBB154555655955459
      17993306DBE975D8535AAFF54DB828B9D3A1924355D895E0338E24074E38C4DC
      E910BE53D5A12A1225BCD3C504BF576FEFFDCCBB8ADEE95069D999C3478EE404
      0606E6601798137884F88E40E8C8111C86581C15988B09D4E1D3870ED13B55E1
      3251FCF9CD2F08FEFC06170CFEB9DE8CFD8163D4FEC0DCD967CE78977E55B3EE
      5A914999FFA024CDA6310A517291B790FE0FD23E71A66B05C493ACDD3332BA76
      ADE88A03F8B72BFCE0C8AE5D0FE0181CDFBD6B063977CDC0176464905B77CF38
      7020E3C0E927B483E75D96DCE9E0810CECF00FEC7704D9A807A2C889FAE024BC
      D383F3D256265FDBE27D10EED4B5A4D2FBC8C7BBFBA63735359DEC2FFC211E38
      C11FF5A5F7EBBB7B707669157EEE81835DBB9E7E621EC19FDFFC82CE7FB90D2E
      18FCB773F6076A09FEB1DBFDFD332ABE3C5D5D7EA579BC5BF9CFE38327BC9150
      545BF129EBB6576E7ECB66B7F910775DF79AA2845E035BABF93B7D5A557D7487
      6DEEE831E19DAA5307BEFDDF57DB867C7570FFA79FEEAF385856F344D19D7FFF
      F05F5BDC0FFFBE53F4D7A30107F7DFBFBFA2A2724B515B37EBFC1F05FE0391C7
      7D59559233F8B2D93DD26F81FC6BF08A8B550F31C2C32FDFDF66B45D64655CBB
      A9E45372DD4355EB560CF63F17E427B8539A31DC6667DC99FDE5767AA7437E41
      E72A1E9C9FD4EC1B50B2FFD387F67FF958FACD5176B8D07F5EFBB8D4FFFEFD5D
      0F79ED1DF8980DFC4F39FFEDEF23A99B3E7D96A2FCCB75EE91B840FFB36D4B07
      973CD4ED934F3EE956B13A64EC08DBB541478C08D951822FECF650C9E0A56D67
      FDCFDE6879AC92B9538D69C4A8309BDDA87053CD97E44E95752D37CEFAD7FCF0
      DA9DD63EB55965873273FA8D1835CAF632FD66D488EFAFD63D5216507DA169E0
      AD4136F0FF3BD211F9D7E0A54BFD1EF8F2A1871EFAF4D0B81133ED7251A36B3E
      7DE8A1830FF82D5D3AD81FDF29B5B95720B9D3E990517611C4B051216FFAE33B
      05AE6D49853B3DFEF397FF73F3FAC92B7BBFE93B76BC7D651A357E626B63DFC6
      256D5F50F957677654FE3EB86DC5D22183070FF6CD1F37D34E37EE49DFC18387
      2C5DD13698486D07DF08DAE037F8DCB9C13BC70EB3D38D7D125FE7B721E806BD
      D3373FCC5FF9DFFFFC3B69F1ED287BCB34EAD91FFE9D948C2FAEF7EF762FB47F
      7FFFB3831334E0668C320B768788026F141710B928E67FD424B82E61F059466B
      E1ECB9B6E036EC268C9A65A71BA5C11706B79D63EF54F3BFFF7D7DE56BAFBDBA
      EA37F696E937AFE0EB56FE70A9C6DFFFDE68FFD8BD3188E8FFD8EFCEC2756F08
      22DE78C4C13B114D22E19D6A7E09CE813B91EB6A58FD9FCEEC22CD9111137EEE
      838853DF87D0FFE2B3011FBFC04717F43F24BEA91B42C77DE9F17F881EE0FEEF
      FFFE0F7DF1C517E8AF7FFD2BBA9ABB086D591C89B67FF4113AFAD967E8705919
      3AB07F3FDA999F8FB2323351664606DA9E9E8EF6ECDA892A163E8D2A178F44AF
      CF8F46CB172F4455C9CFA2D34B46A1334BC7A29349A3D0D9E5E3D157AF8C435F
      248FC6E7F1E88B2563D0E709CFA2EAD726A2534BC7A1DA559351CDEBCFA3BFAD
      781E7DBE64222A5E34116D8A9F86D6CF9982DE9D3F13BD31FF376859EC4CB42E
      653E4A4B8E472B5393D0DAB7DE4435ABF035AF4C4075AB23512D3EEADE9C82CE
      BD35159D5B330D7DB57A0AAA78ED795497F602FAFA9D99E8C2DB33D0D7EFBE88
      2E607F4DDA0CF4D59AE9A862F534F4C9E289E8C0F2E9E8BD452FA2F50BA3D0EA
      45B3D1AA2509E8F45BD3D0C50D2FA1FA8DB350FDA6DFA0CB9BA3D1A5F7CDE89B
      0F66A3CB5B62D0371FC6A233EFBC846ADF8B46DFFE762E3ABF39169D4A7B097D
      B63616E5BF9580F2562F42694BE6A3F4B4156845F222F4D1FBEBD1BA3757A1B7
      5E7F15BDBBF64DF4CE9AD5E89BADB1A8615B1CBA92118FAE6C8F47DFA6CF438D
      99F3B17F3E3ABB69366ACC5A809AB217A2C69C45A8FEA3F9A82937015DCE5C88
      FEF6DE1C747AEB02F4C777E6A083ABCDE8C8DB71E8F38DF3D189CD8B50FAF258
      B439C58CDE4F9D8D362D998DDE5F1A87B6BC3217ED7A2715E5BFFB0ACA59B70C
      AD499E8B0AB6AC416F623C3FD8F80EFA68CB7BE8CD552BD1EAD75F43457B77A3
      1D395928372B0335E52C4457F312D0B7B80CD77624A26B1F2F4657E19C9F8C8F
      14746D670A6ADE958ABECE4C40CDBB97A26FF292D1B98C04D4B27B196AD9F30A
      6AD9BB1C7D9D9B8C5A7FF72ABABC7319BAB2E75554959982CA3F588CFEF2D112
      74706322CA5A351F6D593A1BED58BB187DB0221E6D5E3E0FE5BCFB2ACADBB012
      E56F7A03E5BFBF1AED786F15DAB5E52DB473F39BE8355C3FEB562C462B521250
      FA968DA8A570396A2D7A0D5DDFF73A6A2D5E899FB1025D2E78055DFFFD1BE8FA
      27F8F8C39BA879DF1BA8E977AFA36FF6BC86FEB17F0DFAEE601A6A287A037DBB
      EF4D74A3F45DF4DDA177506DC12AF445F6ABE864CE4AF4E7EC9568E78657D0CE
      F75E451B562C40BB36BF81D25E5984D6AF4C46EFBC9684D6BF9E8256BF928456
      2D5F827EBB7903DA86EB76D58AA5F83E6FA31B65EB51EDEE95E8C6918D2863E3
      6AF42A6E4B19DB36A3F40F37A195AF2E4799DB3F42FB8A0A51F1EFF6E2EFE723
      F4DB6D5BD1B6AD1FA2AD1F7E8036BDB711AD5DF316CAC5F87FFCF10EF4E69BAB
      D1C99327D15FFEF21774E2C409F4A73FFD09FDF18F7F449F7FFE393A7CF8302A
      C3DFE4C18307119EE4A13FFCE10F088F9351717131FADDEF7E8776EEDC89EFF1
      31CACBCB43393939283B3B1B65E2EFF6B7BFFD2DFAE0830FD0FBEFBF8FDE7BEF
      3DB46EDD3AD4AEE2AB65655844AFEAFB8B9FFDE2495DD8F3E3A263D6DCA7E8E6
      9863278CD43DDCFF217A255CD74D1DF0EB80A734C39E9F1CB9FCE3FCDD05AF4A
      5D41C1CE5D3B966D5F306FDCD0E0817EBDBAD1EBBA8D79F69967C78C9EB470CA
      B49A377D579F3F2777E757FBBE59FDD59F32DE9FFB5268403FBF6E705DB79889
      13279ACDF316BF32FDAD9BDEFFD3BD59C975FF1FEF9BDFBCFEE7CF3FDA18375A
      33E0C16E70DD3BF7CD9973DFFCC5AFFCAEE146EBB5A64665D953D3B5961BB76B
      FEFCC7922DF78D56FD1C5FD76DD386B7D7CE99B320A7E2CE772D571BAF58D0D9
      BCD278B5E5BB3B7F2F3FF6C9C6DF3CF3EB01DD50B70F376D581B634E9C56D7D6
      6AF93272616B5BDD57C70F16AD1DADF6C7D76DFB60C39A89E3A7ACF4F16E6EE7
      32B8B0D9DBA7E24F87B7BDFB52C823F8BAE2A28D31639F5D71F1664BD39576D5
      4BAF34B5DCFC7AEF81E20D13870690EB369847853C71E14673A315BDD4C6E61B
      3D4F7EBA6DC34403735DF433EAA93DBE6BF6B2729D57F3773DFEBA4F70DDC4D0
      80C71FF8870DD7FDE3812F3E29125C670878C2D6E7150BAF1BFAEB15F7DBF47E
      174E8AAE0B7924A2DE263C2FFEA5E8837705D7F9F7BE74EBFA352BF577EDFAAD
      4BAF6DD9F4B6E0BA01FF1BF47D5B4B7BEDA52B6E686DDF5FDEB371C3BA59E4BA
      7DDB369A4307FDF25797EEDC68AF7D7A5D6DB971E7BF7F4B7AEFEDB5B39E790A
      5FB7FF932D7346691F1DF2C67F6EDF6869FF7BF8CFAA1509696BD74C7C5683AF
      3BF0E9B6B75FD2073ED627E83F77DAAEB7342BBB96EB6D77FE137436F9E5B8FB
      D6448F3174C3DF5FE9FE0FEE1BAD0D1FFCC2B73F7C7FEBE68DEFFE2177DFDDB8
      79EBFB1FBEFDD592C9F3E6BEB336E625F2DD5696EDFF207EEC70E3D37D6AFFDF
      0FFFFEFE5FFF94BB7F7DFFEF1FFE5F6D616AC2BC77DEDDF0EEDADF7423F4A5AA
      B274DBBBB39F339A7A8FF8DBCC19512FCA5DD48C995F9E3A919DF8FEA60F8B3E
      DCB2A11B43CFCE54957D5AB47EFECB8B92525297E62AB9BCBCA55999E9BFDFFF
      E9814FFFB0AD1B4F3F4F1F397CE8B75B37BFBDF63E45F2B976DD862DC59F9656
      7EF6D9D1329E7E3A44AF23268477A523BD704447867036919161179A80D3FFE4
      4B0F262B3732FC817A7FF88E9E87D7D3F343C7E8B9C72A7ABE8F3D238FEBD44E
      5A5F6C3DB2F5CAD6335BEF1113FA7711B71E7E5E41136A90B5D6B312D1BB3E8C
      E8537C117DEAFD4C69BA72E78E45852F075B3EB6BC6CF9D9F7C1B32D35BD52CF
      CCB656E3638660B6D5F06B7EB6C57E66E04E9D3A85CA4A4B515151112AD85540
      466C3BF276E09955264AFF281DAD796B0D93B68B49CB4379B9B92807467278F6
      958E67666BD7AE4501BFF8395A8547962B96A6A21D931F473BA7FD1A15BCA841
      BF18D81FBD8EE3F3211CA54685B387A2BD3143D1BEF91148FD487FA40AE88F7E
      F5D08338FC342A264704FAFDE2D1A870E1B3A860FE48F4F1BC0894372702E5CC
      791A65C59AC8B171E650B46146285A3B558FD64CD1A3B7F0F1C6642D5A394983
      FEB0780CFA43D218F47B7C7C92381A15278C42BF5BF42CDAB3E059B4FBE567D0
      4E7CCFFC7923507A4C38DA660E475B7F1386B6CC1A8E36470D43EFE303EEFDF6
      0B2168D5F3F47ECB27A8F1FDC6A24F53C6E36302FA74C973687FEA44F4293ED4
      8370F9F13BEC5FFA3C7A02BFC3FE6593912670009EC94DC1C7347460C50BE8C0
      ABD3D1819533F111850EAE9A45664A25AB6350C95BB3D1A13571E8A34553D06F
      1745E299E624B47DF10BE8BD7993D0BB739E43EFC43D87329644A1CCD4592873
      59343E62D0FA975F40597866B52D351A65AD8C471B17CFC2E7F9E8E19F0FC4F8
      FF0C2D5B10875647EAD081657836B96C12FA95FF83A8F4F569283D7926CA7A75
      0EC9BB6C412C5A8AF395AE9A866789B3D06769B3D01F37CE41FE3F1F80E363D1
      E2452FA355AFE17A5C964AE23F678EF20F17E06321FA133EFF69EB42F497F424
      F497ED49E8CFF8FC677C3E999D8A5EC7D791B65240DB4A5E5E2E1EEDE3368267
      181FE299C5C68D1BD1FAF5EF923CBBD83C3BF2502ECE9781F37D84F36DC53391
      CD5B36A3B7F00C84E6A36D3203CF1A3EC233FD77DE7987C6336D350FB755DCAB
      A10CDC5E3FC2EDF5830F3E24ED11F2C0B177EF5EB467CF1EB47BF76E5C2E7A0D
      69C73BE0BA5C322BC9CACA224706B467FC8C8F3E82F27E88B66CD982366FDE4C
      6629696969E8ADB7DE42AB57AF462B57AE44787280121313C9F773AFBAAE1DEE
      3C65F094C153064F193C65F094C153064F193C65F094C153064F193C65F094C1
      53064F193C65F094C153064F193C65F094C153064F193C65F094C153064F193C
      65F094C153064F193C65F094C153064F193C65F094C153064F193C65F094C153
      064F193C6560CBF0E2B46726478E99F8DC4B3D7D52E392C2543D7D925F8E5FB4
      287A615CD833CB2646D260F49294790949614F2F5818171B1F1D1B97DAD38746
      C52D8C8E5F1096BC2431312129C514BD60214E7B7276C242367D49D282B0A54B
      973E294C811B62CFC2B84529C9613D7D7AFABC38690C6C35F04C242E4362FCEC
      9425497161F8BE8B9E8C5998D8D3073F7D764A7C6A1C9BD2D3676174F2CB2403
      7868265196E4D9094B16A58485F4F4090E4B5C4A33A8C2F0F396C4A7C42D4CA6
      11EA307A0D0D69C266272C4A494A58C0A46AC3E63117EAF02DF8E7E8713C1F32
      842D8C8D8F994B03F83D9E9D3879C298E79E9D88DF6341DC9C9494040C4B3C2E
      49689006E39A143F771E1FA732E8492C648C49C0F10B69BC214815AC65320BE3
      550648D1F5F499BD201E239714373B254C1BA40E0D5285A870027ED998B9CCFB
      C72F8A8D5B16F66B7C73523C51AC813E3119DF2065F6BC30B6586C38B8A70F2E
      A120951641900C6F0F0F8F4E8A8BC605D0D1E7ABD43D7DE6C5A7A4C425A788DE
      DC1014CA2548DF5F1B1422BA488A824E7CA5180CFCDC603D2EDE121CB92899A0
      111C44FE3042D18929F1098B48A48E94303848ADE53227CC99931C9712A6E622
      E217C1E3E9CBE14685DB496242E212FC0751310949B171494BE36353E6856948
      B3C6AD1E439914BF682EDB34E31746CF8D83CC6C44DC9C39F0F0F8B81852F445
      71C9C9B4A14F9C3475D20B639E1B39F105DC4696E22A49582AAA1E0660519C4E
      D29A54181C83B43969716488BC35E1BC5ABD426BD2EA82B4F8BEE47B2038E176
      A40ED2E1FAC4EF983C1B7F080B164627BD1C97343B6101FEF083C591F4256992
      4A6FD06217226E57C1EDB6AB60857685D1193DE6B929ED81A3550047AF008E5A
      0A8E065A8B0238FA20954E011CC8AE177D68386768905615A4C6779983090521
      8F4F27C5472FA0E17971708F3095960693535E5900840AFC1C804EC313396ECC
      731323C63E33620A104A4AE3541A2072139E796EEA9829CF4C18CAD238A077CC
      57A01ACA7880E4CD5E90901C475BFDD0E49458EA03EAB7307A993C5A1BB6307E
      913C5A17062D6149A23C451FC67E4031D149508EA1923090CCE45792498CECEA
      903026A73887E0166CCE5036A7F07D14F2A982D98CFCFB29655371D9B8F755CA
      A60E4B498A7E455E705C376C0DBC04340BD78BA447A26D95E95BA1456142C1F6
      67C17C2C2661B8ED6943F087C8DE4090140C29F091B35446944628DFC284A444
      FCFCB961AC1FE7880D5BF8726CDC9CE8250B52E8070F0D91A1812A860690C628
      888B8D4F8DC7248EB9B95A15A4C55D98868B17DC01BE0836B7E026109D12B78C
      7E3D9A207C03FA4D39FAF1D017E6A330D53118D450D4258BE21645C72C888BE5
      1343B438053A515C31EC57D06EC5A8AD568C1EBA11436890DAA05831047CFBAB
      05709C9B141D0B744680175CA532680871B219B039C931090B6285B0713048C1
      033C17C4CF85F69D1296123D1B9FE292F0CBCE8BC61497B452E2639056EB356A
      B54ECFBDB762DA9C245C46AEF07A6D902A947BAE2889E041A2B8D7D505E19E27
      945C411224ED935E2F69A050B3FCB7CF56EE0888B2A386051F64186EE4F0ED05
      5BFAF61CACE2C425C9F3F01792B094E6270F51D387C4C62743C325F74A160F60
      F0E8381A5F3E7BE16CFA46784C0BC30EF12399485A22C524EEB1D204F63DC489
      18548E4EB2904E885E16BF307EB913A8EA08AA0697A2CAD13301B03A02ACC146
      601772EF25C41617D7408A1BAAB50B5F72995A74996588D93E8683387E919310
      AB54A4D02A8DDB418627A99927D90433F76E771B66E11885457A328E9B9AE838
      CEA1146695DB610EA528AB6C4499BEEB5D2513A2619DD3A39E104D90461B14AA
      D4B9EAF490640876E5B04761D4A313E08F3BB05078688846D029EBF1A3D47872
      A175DD2026983E5314211ACE8C900D6744436316F6C85792F1DB3C02090EB66D
      158CF154DA20B713103D3C481D1A642BFD60DEF76E366D8539889383472D9E67
      AA34417A0CB16BC78F7280E151EA10F228ADBA9343AC30807314604C2ED5417A
      3C7BD2BB195E5D90C6000FD2A93AE9F84D32DD751E589D06DE576F703BB0FA10
      785088DA99F1DB5DC1563A7E731CDB10826DA8FBB10D25D8122EADE3A336B782
      CB7356A4C3E2290953709A1383633A0151B97F06A2A2531095C1CEC1714A420A
      79C3BB06367012474C7C6ECAE489E37956A22E1458890C778BE37985A524242C
      9044AA496462F4A2B80543C92F919FCC8B9BFD724CC2B2A1C4034C8D04E02012
      8F345A1736377AC9DCB8A1E417D886A27B19C21644C7E020F905B6204607DF3A
      3A6928EB010E60AAE816AAE0B0790AD954AAB0B949F1B143E18732F0A26386E2
      03FB356171B1F12943E10787B4610BE316260C851F1CD285A5527637DC8DF3E1
      047DD83CE5045CE6F8E414784FE68CE342C27055C7D097673C38369422C56617
      0630B2C161C989F18B48C9580F8E85B748C093199C9FC148AD0E4B4E89A538B1
      1E1CABC1B1D1294B92A1786C4E2D1347316673E2575C92082D67283DE128FC72
      D22803D31E0450A94358CEB2EC8DD5A16C523BAFA809E632C9D1D1A8841C6421
      1316A7A959191D24F15E9CA209C32D1E7F489276AAD1E27A4C5C0032245C5B8C
      0747EB702D2A44EBC3621252E62957B00623113F57DEEC43D868E9A343C93722
      6463735EFC590473A9B4AD2A6451B1776E37975A984B29036E11F42D30CE9C0F
      C76B49834D8D8F5B3A94F5E0581DFED6E2E2482CEBC1B17AA60589BE38AD212C
      291E572DB40CD6836343C2E296518898338E0B0D4B5E000CE2A1F484BF7F4C67
      E252711EF28BC32AE6098276A653B36D59DA02756C2B57F854746C6B57685C3A
      1D415D7827BD80BC09E30D245EE9FE212445E1EE98AC72FD97A893D22848AD7E
      2DECA340968987EB214446291266111E805498850764D08F4B855994F04B4559
      B4C7E1055978320D032D67E458B6CC6299DE2FD622335A30F3540519B4E4D5E1
      2E7CBC3614A7A8F1B05ECDF7A6B1EDF4CF2A0BFD338C2DB83AB6BB6EF0C0418D
      E753067CD2496B4715AC206A548582C4DBB1CAD1E0CA511BF003EF76E504CBAA
      C5A022EFAD0A56D11717D74DB09AA66AD44CAAD3D5434885DDB5A3C6F3B02083
      86306A4455A353A8199DD689EF46C37C37A18A6A16428503EED595442CED55AB
      BA9D6A255D28D132103F63C9224B2920206146640EC01A42E6B9AA6029AE9A20
      99E28126D8F1068F9B4F9046E39460904887AC7D02EDC908250D1FBF367E7983
      9ABE3C8F2E5177014126FEC041FB02F882240EF859EC4B482A23541B14825104
      3A01379355962114D24375349951AAB0509F34D5727D73AF683583E57B589DEB
      005B9D19CFBBB45185C81A954A5161A3D3B72A99B0D4C66685E3434881F96685
      1B8D8566A552D376A5B5D4AE54C1A461A9D4F754CB22E34ABB9B151E0DA9F5B8
      27D20469B5B276A597B62B3CD472985891910AFDF8139312E6E2194732AD29DC
      35184288B09E8D6779EAA07C15A4813E236E6EFC225EEF2C6E512C1FC0F3F394
      F8D9D10BC29C189361F81CEB4135C178BC813B370315B188479F41B23E548F5F
      568E1FC55E06A01EC76B6410EAF54423ED9EE945C984D985D44EADD085AA8242
      3A90D851EE1BE198D8FD9E40848058EB307D3348DE3444FEFD91D24B5F342448
      67DB104C0D222A186F92E2F2A49346D2113E2366D2905219E8D747299C245D4B
      D3B5A1822F5045C048758C12A9837161F01051CDA8E34AE70A3A1BC130686D05
      037728211262A4104FDF3884EA0A87EAC9FD85F44827A4473A311A4E34A9790E
      B729E824F5413A4C52D5F271BD6CA8A00B0E3238FEF16840E755256A52824841
      93D1935A05C1B04AAD526852069A6E60D285441DFAB6A4F858BB71E0D5A5E297
      E1DE376EC10256E91B63A381EE0583911CB700475A489C93307B49B230CD6020
      692071E06E2A908B87089F25108E0BE3055A7D6AE83AA03F94DF46E10E928B35
      20B203B2B5207E1168EC8B06E53173A56A7E8EB6448A8F787007A88863E0E564
      4F6023858F61E3243A776CB488A646C7D84F4E71B3D30785020F000683D1316C
      2C1ECA19A04D72A339360D984730CE03D55048252F67297161C29264FC583699
      174988BB683C2331284F74451FA316C602E28F315415A4551A1F28D2B45050E7
      216F29D12785F2497549A3639263E6B29AEA3A3519DF1AD42E552865D4D825CD
      834F60D0534AA20C73967F4EAA1FF88576D73FA6D240F7302109918EC6C84A0A
      09AF4947D8838ED13E5D9096CC6543E42C39E8AC80BBA325A5701461AB3C4051
      6E012995CC4C94520065A5786E2AA2944844B80B13ECFF280167E8114230C153
      497B76BD7C9483FB0A9DBC5A741854857AD18506E90C725E933648AFB22CAF74
      5D9D0477546DC8493CF300593C0CC938518CFDA3093C34D5E19E4F1DA457CB96
      65A96C1BA11AC830D286E104B4143CB4548BC71310AB26B1AC422203851674BC
      49F53393706132F05E8112A860990AF0840166710E58EC124CF9B05C0E09D6F0
      6CEE8B93A4131E3B5C0FFADAECF5D23C7A1DCD13124CF3A4CC5BB290761F6A03
      2CAE5287E0312FD754C5A96A0D4906F0E0B67C22D70A4814A5F32A589B2608AB
      213C77C12B89F394DAA142023C42211AC6A24E341FE0FEE321139ECE8528AC35
      92AFC37262380A7DAF4E2F198E4205E2B6436245B58F1B0FA6D38620FED31125
      AB41951DD8F344D8236B3B90AC26CC7DA234A5D472B4825B4BD2D56A52F59A50
      EEE60A19E0F63807DC5ED02CF0A80FD42434782C1DA2D06AA0D4506C3D49EED0
      56C388ACEF427F11ACD45F18086190F71778BAAC53E2AAE8358C562B9DEF8190
      0F06E83096E40880281DCA08E9781ACC8C7AC4C986107A7970B04C81562D57A0
      65A244D3033C9675B1A4513E7657E41A3191D2070BA205CF17C4B2C51044F1EC
      DE44CBBDA2729AECA3B3DA632A7E6CA2AB2CA551618FC55B5A4C86FB594CE4BB
      5D8262AA4021629E38699E2049AC454192C551543AC548CEEDA7C8400C415719
      376F95462F9B94A88265FC358393D2044C6AD5C182AF4BADD5926E197A05B214
      42FCF5A861B11BA6CCEA104CCC0D3A1BD5CF455F8F1AB8FF94D9ECB00C43F6A9
      083B0FB2E88A2A02C806766A6066C0971F025D8056D65CD530F9C2E99A60185F
      E894077A6A9D8EDE441F423331E494BC0AA70DC48A293DB4D622ADD5CA5B8B56
      D25A601E078B43D52A0FB1F5105B29B185A642B52F19B114081BD5C15605D2ED
      4BB361310AA316E50009D751E63C4C714243649C0E0512AE735C44A2050A1E2C
      20757C39802BAE86652F602042EF5AB51BCBEC0FF1301E2A444739394AC3781D
      68E2606AAD0702A2551AC9835E0AE40851F139C40F50A982987980F2685E47AE
      A4CF003EA1D2801E9E0279E0295A0DC3D5A64AA90E491DF5CA42472D216232A9
      A32A5491A1A2B3956887B054DB8ADC117A7B3D5DAA6EAFE4516BBBE4D13EC510
      F8D218155F29D2C4C68B8D420497334A49B9186D63079A801E84251A62D54625
      57DF923702BD13EA5BF08D1928097097E059EB6AC1B3406BDB217471DBC1F0EA
      A93C4A02AF8C95ACD738475FF53A6745D08C3ABAFDAFAAC3DF2CEE47347A187D
      854A5E957F83F6397CB6BD295F7189EDB1D9C44C3A25269B388794C5261B7610
      560C26BD96F8784A9C42691E29AF10D8620E42AE5681F00E4F7FA0EFD2AA3A00
      720C483008DBEF05DE17A718EEE05089366F752860AE910F95643A3A6A6766BB
      302D54872A8E95402A09DF19CC33D49A0E900B698283B4C48E4C88D29C15289E
      464FD52F74F2513FF01D493A4CC27436888AC48B5C1C1AE280561A0C7254A106
      F9282758419AA756D92C36021993C1E228A733CD4D3B606A0AA338A077FABB30
      39D5050B868CEE20FF1A327F09153CC015E45F3A0D852921AB48A63C8B255F98
      3A987E61EC3C439649FA99B99585285F6CE6E2EF145E44F69D6AC90A0DE977AA
      0DD2855AF84E43EE85EF94281CDFFD0F55433E549DE743FDD17EA82E663FA9B8
      49B16419E9DD1024E89D5BEBD2117204359123E83B5E8EA073831C413C48939A
      26B25F9A009F304C2B42F5941FC8DB4785760B3AA0385260F8284C66DF5260D4
      44C14825BE98B51E21333909855B26496323701985F668140D65324A0360A155
      32ACE6E285765B99512EB78CDA495D45C9CA0BD9AC24D4C2CA018392755A9CD9
      A0977D3D980280522BFF79C07C3F48831B1F586351E0EBC07225C1BA7007743F
      F0B8806823E07388749EAB52C9959155A14AD225E0F3298DE155D4E8A148F54B
      4F56800677FC0A50323B8697C71F2F7979D11250A05890AAC1B3169A6A7D0968
      3B6B7FB865FAF6B7425C10A2D88EC9905AB6D4426313274243AAC1765604D128
      72B8C0A1C0B80043423AD957232BAE9AACC1719273020C08519FECA81214886B
      E44A50210A0B5A4283F40EB36A05FA4E1E2DA88ED782129ABDB07F76050D3814
      DE1E4CBEC987586AAD4C7F0EC3A5779C13AD85319656730FAD2F13D90FB15F61
      1CA85F08D1F2D768A4B357959AEF7778924267408E2F83C783608DAEE3FB2715
      30A0E1D5F1549ABCBAD84401480342615C6A60529D3651203207682FC33C3888
      F04F61B59C8C890BC303D97700EB81358ECF35B484EE74024312444600AF0EFD
      875A231D4618D42415A66034D5F16A12D8C8915B1793DBD171A8123540D0614D
      AF4E25D725977374E9EA28E7EA50D519EAD040DF1CCCB4EAE443412D49D5A883
      9954D7D5A11A7A77E052E885B4D21535097DAB5A0FAD4F271FD7CB55106050EE
      C4D49FAC05D6683B4155EA35E4D561DC4E5E5D54951AE045402A3175A2736955
      E231101ED4A8C9620071553ADAF5694959C11A826225AA640B6EC1504088E32A
      045AD6706DC7777D746C080C4979254287485A77B0DEE59528D24F60AD89B9D8
      E880CA66A3037A0B4607B476181D60F4FCC1D2590728D7282E76622DAF7596F2
      088CBFB9581145AFA88812EA024514D1A2782D2CA8D3DB6EA1432B5C11AF7599
      850ED64A5E67A957C6409FFD265730110C0DD2E18E395481691EAAC00C50D2DE
      D3920571F2BD9742158C8684E06F9A7EEE98E2CC13D82183A280B806F873A134
      39952F272805A9824241D390491430CF353446C83C67A270C9C511B47CE2B854
      A9BC594B4532A4843259B49E79298E114C3F8E103C37D18085658DD6204A16D8
      6DD5933CB03B89240F67F655AD2659C808036799478A2C7E0A46109EA2518B92
      C54F01A98C4A9647F4149C059E42B3501BB3ED3D4898A39D6709B3597A5C6AFB
      2F956AC34BA55A7FA954AB2F956ADB4BA5DAF452169A901324861AD874DCD204
      4727383B56F392962C60368252E9809103632818CEE292CCE399522AC21580E5
      ACF07A7A4080BB8ECCC1C14E13F08AE14B4C155C07F78434F894F5407863E712
      963DAC2723142159F87EC45EA813F47301A0282585B19CC4847F6DAEDB734869
      CB9AFAA541A1D73338D5EBE9C94CD3FDCBC53B7E09BFD428AC23DD576808D97F
      46A5B76E5E064F7D9D528CC5DDA44ADF2916F2C3DC8B0C8F7476540B11CFC206
      9FC0020855D95A3D0EAF0C010335C0D4C38F53AA1E8382F51FA7868B3A8D5BAA
      C7A6F5203205152DCC54481B54D24F81752AA079A201899BC18E054F70DF6052
      F3064B8A29E4DEA1F4DEA1FAF6173F7195ECB0E205A8DA402DAB55A1367E8421
      8E7F8460B353A722EFCEAB4B41771E0AE3523CACA4D68544DA54503E68F4A130
      C63538A277A162D66FEADCA477A1534B959924AA4C5A625012C6147245255071
      22E9F86B23E9ED7ED496D66DB2B6B41D20C0F070D86C4F66B2314461E107D999
      C8F1DAD71181BADC960A687169C9902D9816E4C7D4498AAD9ADB3F7E311068F4
      06852A3228541130BA831D27C37AB2BA418159095653A08AB46A575791D5DE12
      4FD942821886A1FB7A4BA19579BB6B49CF7CE578B069DB9704FA265A67AA09A4
      B94AE2014A4E6069A053D5E4C42A4A357CE81A6AE1DBA59D2758B88305A20212
      E264E729DC3FC0FEAE33987E9A2AC05CE9DB54BB549008A882C28A4AD87902C1
      0458807906AC3389D222CC81A173C73367AD4AEBE89201666F6EB7749EEA6058
      7DAA51565ABC2B9DE7FF07D81119C3}
  end
  object bsTrayIcon1: TbsTrayIcon
    AnimateTimerInterval = 0
    IconVisible = False
    IconIndex = 0
    Left = 328
    Top = 72
  end
  object bsSkinData1: TbsSkinData
    CompressedStoredSkin = bsCompressedStoredSkin1
    ResourceStrData = bsResourceStrData1
    Left = 296
    Top = 104
  end
  object bsBusinessSkinForm1: TbsBusinessSkinForm
    UseFormCursorInNCArea = False
    MaxMenuItemsInWindow = 0
    ClientWidth = 0
    ClientHeight = 0
    HideCaptionButtons = False
    AlwaysShowInTray = False
    LogoBitMapTransparent = False
    AlwaysMinimizeToTray = False
    UseSkinFontInMenu = True
    ShowIcon = False
    MaximizeOnFullScreen = False
    AlphaBlend = False
    AlphaBlendAnimation = False
    AlphaBlendValue = 200
    SkinHint = bsSkinHint1
    ShowObjectHint = False
    UseDefaultObjectHint = True
    MenusAlphaBlend = False
    MenusAlphaBlendAnimation = False
    MenusAlphaBlendValue = 0
    DefCaptionFont.Charset = DEFAULT_CHARSET
    DefCaptionFont.Color = clBtnText
    DefCaptionFont.Height = 14
    DefCaptionFont.Name = 'Arial'
    DefCaptionFont.Style = [fsBold]
    DefInActiveCaptionFont.Charset = DEFAULT_CHARSET
    DefInActiveCaptionFont.Color = clBtnShadow
    DefInActiveCaptionFont.Height = 14
    DefInActiveCaptionFont.Name = 'Arial'
    DefInActiveCaptionFont.Style = [fsBold]
    DefMenuItemHeight = 23
    DefMenuItemFont.Charset = DEFAULT_CHARSET
    DefMenuItemFont.Color = clWindowText
    DefMenuItemFont.Height = 14
    DefMenuItemFont.Name = 'Arial'
    DefMenuItemFont.Style = []
    TrayIcon = bsTrayIcon1
    UseDefaultSysMenu = True
    MainMenuBar = bsSkinMainMenuBar1
    SkinData = bsSkinData1
    MenusSkinData = bsSkinData1
    MinHeight = 0
    MinWidth = 0
    MaxHeight = 0
    MaxWidth = 0
    Magnetic = True
    MagneticSize = 5
    BorderIcons = [biSystemMenu, biMinimize]
    Left = 264
    Top = 72
  end
  object MainMenu1: TMainMenu
    AutoMerge = True
    Images = ImageList2
    Left = 328
    Top = 104
    object N12: TMenuItem
      Caption = '&Arquivo'
      GroupIndex = 1
      ImageIndex = 41
      object NewItem: TMenuItem
        Caption = '&Novo'
        ImageIndex = 5
        ShortCut = 16462
        OnClick = NewItemClick
      end
      object Abrir1: TMenuItem
        Caption = '&Abrir'
        ImageIndex = 39
        ShortCut = 16449
        OnClick = Abrir1Click
      end
      object Salvar1: TMenuItem
        Caption = '&Salvar'
        ImageIndex = 7
        ShortCut = 16467
        OnClick = Salvar1Click
      end
      object SalvarComo1: TMenuItem
        Caption = 'Salvar Como'
        ImageIndex = 37
        ShortCut = 16465
        OnClick = SalvarComo1Click
      end
      object PropriedadesdoProjeto1: TMenuItem
        Caption = '&Propriedades do Projeto'
        ImageIndex = 15
        ShortCut = 16464
        OnClick = PropriedadesdoProjeto1Click
      end
      object Noskin1: TMenuItem
        Caption = '-'
      end
      object CloseItem: TMenuItem
        Caption = '&Configurar Impressora'
        ImageIndex = 14
        OnClick = CloseItemClick
      end
      object Imprimir1: TMenuItem
        Caption = '&Imprimir'
        ImageIndex = 14
        ShortCut = 16457
        OnClick = Imprimir1Click
      end
      object Exportar1: TMenuItem
        Caption = '&Exportar'
        ImageIndex = 35
        OnClick = Exportar1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Sair1: TMenuItem
        Caption = '&Sair'
        ImageIndex = 36
        OnClick = Sair1Click
      end
    end
    object Windows1: TMenuItem
      Caption = '&View'
      GroupIndex = 5
      object RestoreItem: TMenuItem
        Caption = '&Propriedades'
        OnClick = RestoreItemClick
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Layout1: TMenuItem
        Caption = '&Layout'
        OnClick = Layout1Click
      end
      object N10: TMenuItem
        Caption = '-'
      end
      object N9: TMenuItem
        Caption = 'L&egenda'
        object Ocultar1: TMenuItem
          Caption = 'Ocultar Todos os Items da Legenda'
          OnClick = Ocultar1Click
        end
        object ExpandirTodososItensdaLegenda1: TMenuItem
          Caption = 'Expandir Todos os Itens da Legenda'
          OnClick = ExpandirTodososItensdaLegenda1Click
        end
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object FullExtent1: TMenuItem
        Caption = '&Full Extent'
        OnClick = FullExtent1Click
      end
      object ZoomMaior1: TMenuItem
        Caption = '&Zoom Maior'
        OnClick = ZoomMaior1Click
      end
      object ZoomMenor1: TMenuItem
        Caption = 'Zoom &Menor'
        OnClick = ZoomMenor1Click
      end
    end
    object teste1: TMenuItem
      Caption = '&Tema'
      GroupIndex = 5
      object AdicionarTema1: TMenuItem
        Caption = '&Adicionar Tema'
        object AdicionarCamadasLocais1: TMenuItem
          Caption = '&Adicionar Camadas Locais'
          OnClick = AdicionarCamadasLocais1Click
        end
        object Adicionar1: TMenuItem
          Caption = 'Adicionar Camadas Via SDE'
          OnClick = Adicionar1Click
        end
        object AdicionarCamadasviaConexoDireta1: TMenuItem
          Caption = 'Adicionar Camadas via Conex'#227'o Direta'
          OnClick = AdicionarCamadasviaConexoDireta1Click
        end
      end
      object ApagarTemaAtivo1: TMenuItem
        Caption = 'A&pagar Tema Ativo'
        OnClick = ApagarTemaAtivo1Click
      end
      object ApagarTodos1: TMenuItem
        Caption = 'Apagar &Todos'
        OnClick = ApagarTodos1Click
      end
      object N6: TMenuItem
        Caption = '-'
      end
      object ConverterParaShape1: TMenuItem
        Caption = '&Criar Camada...'
        OnClick = ConverterParaShape1Click
      end
      object EditarTema1: TMenuItem
        Caption = '&Editar Camada'
        OnClick = EditarTema1Click
      end
      object StopSaveEditing1: TMenuItem
        Caption = '&Parar e Salvar Edi'#231#227'o '
        Enabled = False
        OnClick = StopSaveEditing1Click
      end
      object N7: TMenuItem
        Caption = '-'
      end
      object N8: TMenuItem
        Caption = '&Tabela'
        object AbrirTabelaDosShapesSelecionadosCamadaAtiva1: TMenuItem
          Caption = 'Shapes Selecionados'
          OnClick = AbrirTabelaDosShapesSelecionadosCamadaAtiva1Click
        end
      end
      object Query1: TMenuItem
        Caption = '&Query'
        OnClick = Query1Click
      end
      object LimparSeleo1: TMenuItem
        Caption = '&Limpar Sele'#231#227'o'
        OnClick = LimparSeleo1Click
      end
    end
    object Controle1: TMenuItem
      Caption = '&Gr'#225'ficos'
      GroupIndex = 5
      object InserirCoordenadas1: TMenuItem
        Caption = 'Inserir &Coordenadas'
        object CoordenadasemUTM1: TMenuItem
          Caption = 'Coordenadas em UTM'
          OnClick = CoordenadasemUTM1Click
        end
        object CoordenadasemLatLong1: TMenuItem
          Caption = 'Coordenadas em LatLong'
          OnClick = CoordenadasemLatLong1Click
        end
      end
      object N11: TMenuItem
        Caption = '-'
      end
      object N13: TMenuItem
        Caption = '&Editar Gr'#225'ficos'
        object EditarTextoSelecionado1: TMenuItem
          Caption = 'Editar &Texto Selecionado'
          OnClick = EditarTextoSelecionado1Click
        end
        object EditarPontoSelecionado1: TMenuItem
          Caption = 'Editar &Ponto Selecionado'
          OnClick = EditarPontoSelecionado1Click
        end
        object EditarLinhaSelecionada1: TMenuItem
          Caption = 'Editar &Linha Selecionada'
          OnClick = EditarLinhaSelecionada1Click
        end
        object EditarCirculoSelecionado1: TMenuItem
          Caption = 'Editar &Circulo Selecionado'
          OnClick = EditarCirculoSelecionado1Click
        end
        object EditarRetanguloSelecionado1: TMenuItem
          Caption = 'Editar &Retangulo Selecionado'
          OnClick = EditarRetanguloSelecionado1Click
        end
        object EditarPoligonoSelecionado1: TMenuItem
          Caption = 'Editar &Poligono Selecionado'
          OnClick = EditarPoligonoSelecionado1Click
        end
      end
      object N14: TMenuItem
        Caption = '-'
      end
      object SeleodeGrficos1: TMenuItem
        Caption = 'Sele'#231#227'o de Gr'#225'ficos'
        object SelecionarTodos1: TMenuItem
          Caption = 'Selecionar Todos'
          object exto1: TMenuItem
            Caption = 'Texto'
            OnClick = exto1Click
          end
          object Ponto1: TMenuItem
            Caption = 'Ponto'
            OnClick = Ponto1Click
          end
          object Linha1: TMenuItem
            Caption = 'Linha'
            OnClick = Linha1Click
          end
          object Circulo1: TMenuItem
            Caption = 'Circulo'
            OnClick = Circulo1Click
          end
          object Retangulo1: TMenuItem
            Caption = 'Retangulo'
            OnClick = Retangulo1Click
          end
          object Poligono1: TMenuItem
            Caption = 'Poligono'
            OnClick = Poligono1Click
          end
        end
        object Des1: TMenuItem
          Caption = 'Remover Sele'#231#227'o de Todos'
          object exto2: TMenuItem
            Caption = 'Texto'
            OnClick = exto2Click
          end
          object Ponto2: TMenuItem
            Caption = 'Ponto'
            OnClick = Ponto2Click
          end
          object Linha2: TMenuItem
            Caption = 'Linha'
            OnClick = Linha2Click
          end
          object Circulo2: TMenuItem
            Caption = 'Circulo'
            OnClick = Circulo2Click
          end
          object Retangulo2: TMenuItem
            Caption = 'Retangulo'
            OnClick = Retangulo2Click
          end
          object poligono2: TMenuItem
            Caption = 'poligono'
            OnClick = poligono2Click
          end
        end
        object DeletarTodosSelecionados1: TMenuItem
          Caption = 'Deletar Todos Selecionados'
          OnClick = DeletarTodosSelecionados1Click
        end
      end
    end
    object Relatrio1: TMenuItem
      Caption = '&Ferramentas'
      GroupIndex = 5
      object CriarNovaConexo1: TMenuItem
        Caption = '&Join'
        object CriarJoinSDEBancoOracle1: TMenuItem
          Caption = '&Criar Join SDE && Banco Oracle'
          OnClick = CriarJoinSDEBancoOracle1Click
        end
        object RemoverJoin1: TMenuItem
          Caption = '&Remover Join'
          OnClick = RemoverJoin1Click
        end
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object DesativarConexoODBCAtiva1: TMenuItem
        Caption = '&Identificador de Camada 1:N'
        object CriarIdentificadordeCamada1N1: TMenuItem
          Caption = 'Criar &Identificador de Camada 1:N'
          OnClick = CriarIdentificadordeCamada1N1Click
        end
        object RemoverIdentificadordeCamada1N1: TMenuItem
          Caption = '&Remover Identificador de Camada 1:N'
          OnClick = RemoverIdentificadordeCamada1N1Click
        end
      end
      object N15: TMenuItem
        Caption = '-'
      end
      object Relatrio2: TMenuItem
        Caption = '&Relat'#243'rios'
        object CriarUmNovoRelatrio1: TMenuItem
          Caption = '&Criar Um Novo Relat'#243'rio'
          OnClick = CriarUmNovoRelatrio1Click
        end
        object CarregarUmRelatrioPreviamenteSalvo1: TMenuItem
          Caption = 'C&arregar Um Relat'#243'rio Previamente Salvo'
          OnClick = CarregarUmRelatrioPreviamenteSalvo1Click
        end
      end
      object CarregarRelatrioSalvo1: TMenuItem
        Caption = '-'
      end
      object AnliseEspacial1: TMenuItem
        Caption = '&An'#225'lise Espacial'
        object EMDESENVOLVIMENTO1: TMenuItem
          Caption = 'An'#225'lise de Proximidade'
          OnClick = EMDESENVOLVIMENTO1Click
        end
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object VerificarAtualizacodeCamadas1: TMenuItem
        Caption = '&Verificar Atualiza'#231#245'es de Camadas'
        OnClick = VerificarAtualizacodeCamadas1Click
      end
      object Configuraes1: TMenuItem
        Caption = '-'
      end
      object Configuraes2: TMenuItem
        Caption = '&Configura'#231#245'es'
        OnClick = Configuraes2Click
      end
    end
    object Sobre1: TMenuItem
      Caption = '&Janelas'
      GroupIndex = 5
      object MostrarMapaGuia1: TMenuItem
        Caption = '&Mostrar Mini-Mapa'
        OnClick = MostrarMapaGuia1Click
      end
      object MostrarLegenda1: TMenuItem
        Caption = 'M&ostrar Legenda'
        OnClick = MostrarLegenda1Click
      end
      object MostrarEscala1: TMenuItem
        Caption = 'Mo&strar Escala'
        OnClick = MostrarEscala1Click
      end
      object N16: TMenuItem
        Caption = '-'
      end
      object emas1: TMenuItem
        Caption = '&Temas'
        object ExOS1: TMenuItem
          Caption = 'ExOS'
          RadioItem = True
          OnClick = ExOS1Click
        end
        object Outono1: TMenuItem
          Caption = 'Outono'
          RadioItem = True
          OnClick = Outono1Click
        end
        object Clouds1: TMenuItem
          Caption = 'Clouds'
          RadioItem = True
          OnClick = Clouds1Click
        end
        object Express1: TMenuItem
          Caption = 'Express'
          RadioItem = True
          OnClick = Express1Click
        end
        object Windows981: TMenuItem
          Caption = 'Windows 98'
          RadioItem = True
          OnClick = Windows981Click
        end
        object WindowsXPBlue1: TMenuItem
          Caption = 'Windows XP Blue'
          RadioItem = True
          OnClick = WindowsXPBlue1Click
        end
      end
      object N17: TMenuItem
        Caption = '-'
      end
      object ResetarJanelas1: TMenuItem
        Caption = '&Resetar Janelas'
        OnClick = ResetarJanelas1Click
      end
    end
    object Sobre2: TMenuItem
      Caption = '&Sobre...'
      GroupIndex = 5
      ImageIndex = 40
      object SobreoSistema1: TMenuItem
        Caption = '&Sobre o SIGGeo...'
        ImageIndex = 40
        OnClick = SobreoSistema1Click
      end
    end
  end
  object bsSkinHint1: TbsSkinHint
    SkinData = bsSkinData1
    Active = True
    AlphaBlend = False
    AlphaBlendValue = 0
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -11
    DefaultFont.Name = 'MS Sans Serif'
    DefaultFont.Style = []
    UseSkinFont = True
    Left = 296
    Top = 72
  end
  object ImageList2: TImageList
    Left = 394
    Top = 73
    Bitmap = {
      494C01012D003100040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000040000000D0000000010020000000000000D0
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000008000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000080000000800000008000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000800000008000000080000000800000008000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000080000000800000008000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000080000000800000008000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF0000008000FFFF
      FF00FFFFFF00FFFFFF00000080000000800000008000FFFFFF00FFFFFF00FFFF
      FF0000008000FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000008000000080000000
      80000000800000008000FFFFFF00FFFFFF00FFFFFF0000008000000080000000
      80000000800000008000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000800000008000000080000000
      80000000800000008000FFFFFF00FFFFFF00FFFFFF0000008000000080000000
      8000000080000000800000008000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000008000000080000000
      80000000800000008000FFFFFF00FFFFFF00FFFFFF0000008000000080000000
      80000000800000008000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF0000008000FFFF
      FF00FFFFFF00FFFFFF00000080000000800000008000FFFFFF00FFFFFF00FFFF
      FF0000008000FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000080000000800000008000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000080000000800000008000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000800000008000000080000000800000008000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000080000000800000008000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000008000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FBFBFB00F2F2F200EBEBEB00ECECEC00F4F4F400FDFDFD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE00D9D9
      D900939393006E6E6E00747474008B8A8900838281006B6B6A00717171009C9C
      9C00E2E2E2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000106BA600106BA6000000
      000000000000106BA600000000000000000000000000FDFDFD009F9F9F00BCB9
      B600D3D0CE00E2E0DE00EAE8E700E2E0DE00DAD7D500D1CFCC00C9C6C300C0BE
      BA0094918F00B5B5B500FEFEFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000054763500547635005476350054763500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000116EA9005FCDF900116EA9000000
      0000116EA9005FCDF900116EA9000000000000000000D3D3D300B5B2AE00C4C1
      BE00E9E7E500EAE8E600E9E7E500E6E4E200E7E5E300EAE8E600EAE8E600DFDC
      DA00B8B5B100AFACA800E8E8E800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000577A380054B48D0053B48D0057793800000000000000
      000000000000000000000000000000000000000000008E7464008E7464008E74
      64008E7464008E746400C7B7AB001272AD005FCDF90085DEFB001272AC001272
      AD005FCDF90085DEFB001273AD000000000000000000B2B2B100EAE8E600EAE8
      E600E1DFDE00A2A09F006E6D6C005D5C5B00605F5E007D7C7B00C1BFBE00E9E7
      E500EAE8E600E7E5E300D6D6D600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000005A7E3C0054B48D0053B48D005A7E3B00000000000000
      0000000000000000000000000000000000000000000091786800000000000000
      000000000000D9CFC6001378B2007ADDF9009EE9FB009EE9FB009EE9FB009EE9
      FB009EE9FB0073D3F1002494B7000000000000000000A4A4A400EAE8E600E3E1
      DF00666564007F664E0086694F0099979200AB927A00C3987200B89C7E009997
      9600EAE8E600EAE8E600CDCDCD00000000000000000000000000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000000000000000000000000000000000000000000000000000000000000000
      000000000000000000005E85400055B9960056B996005E854000000000000000
      00000000000000000000000000000000000000000000957D6D00BAAA9C00BAAA
      9B00BAAA9B00DAD0C700147DB60094E8F900B4F0FB00B4F0FB00B4F0FB00B4F0
      FB0083DAF100157CB70000000000000000009B9B9B00C2BFBB00E9E7E500C7C4
      C0006E54400071543E007A5D4C008B6A5B00A1827000B9A99800D09A7100DDB6
      8B00E9E7E500CECCC900B5B3AE00DBDBDB00000000000000000000FFFF000000
      000000FFFF000000000000FFFF000000000000FFFF000000000000FFFF000000
      0000000000000000000000000000000000000000000000000000628B4400638B
      4500628C4500628C450058C0A00058C0A10058C0A00058C0A000628C4500628B
      4500638C4500638C450000000000000000000000000099837300000000000000
      000000000000BDAD9F00000000001581BB00EFFDFE00EFFDFE001581BB001681
      BA001581BA00D3C6BC000000000000000000D5D3CF00E7E5E3009E9D9C006750
      3D00634735006D635000715249007D584E008A655B009A7B6B00A99D8900AF84
      6500B2937100BFBEBC00EAE8E6009B9A990000000000000000000000000000FF
      FF000000000000FFFF000000000000FFFF000000000000FFFF000000000000FF
      FF0000000000000000000000000000000000000000000000000068934A005BC7
      AD005BC7AD005AC6AD005AC7AC005AC6AD005BC7AD005BC7AC005AC7AD005AC7
      AD005AC7AD0067934A000000000000000000000000009E887900BEAEA000BEAF
      A100BFAEA000BEAEA100BEAEA000DCD3CA001684BD00EFFDFE001684BD00DCD3
      CB00DCD3CB00A28D7E000000000000000000E1E1E100CECCCA0089766200664D
      38006545310068412E006B70690073544C00795D52007F4A340084554000885F
      48008C705500E7C49E00E9E7E50000000000000000000000000000FFFF000000
      000000FFFF000000000000FFFF000000000000FFFF000000000000FFFF000000
      00000000000000000000000000000000000000000000000000006C9A500060D6
      C50060D6C50061D5C50060D5C50060D6C50061D5C50060D5C60060D6C60060D6
      C50060D6C5006C9A4F00000000000000000000000000A28D7E00000000000000
      000000000000C0B1A3000000000000000000000000001684BD001684BD000000
      000000000000A28D7E0000000000000000000000000066503B007C634A007252
      3D007653310075433100775C4F0074412B0070412C006E402D006B4331006949
      36006E655300A48C7900AF987E000000000000000000000000000000000000FF
      FF000000000000FFFF000000000000FFFF000000000000FFFF000000000000FF
      FF0000000000000000000000000000000000000000000000000071A2550070A1
      540071A1550071A1540063DBD00063DBD00063DBD00063DBD00071A1540071A1
      540071A1540071A15400000000000000000000000000A5928200C2B2A500C2B2
      A500C2B2A500C2B3A500C2B3A500C3B3A600C3B3A500DED6CD00DFD5CD00C3B2
      A500C3B2A600A59282000000000000000000000000006F5240008F7157008B63
      4A008E7C6F0090573F008B5B43008149350073402E00673B29005E3B2900583C
      2D00646D70008F7D6E007866500000000000000000000000000000FFFF000000
      000000FFFF000000000000FFFF000000000000FFFF000000000000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000075A7580065E1DA0065E2DA0075A75800000000000000
      00000000000000000000000000000000000000000000A8948600000000000000
      000000000000C4B4A70000000000000000000000000000000000000000000000
      000000000000A894860000000000000000000000000091684D00A3876D00A997
      7F00BA7C5C00C0705000B1684B0098573F007F4A34006C402B005C3B28005239
      2900626464008C7A6F00676A6800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000079AC5C0065E1DA0065E2DA0079AC5D00000000000000
      000000000000000000000000000000000000000000007C635300887060008A72
      62008C7464008F786700937A6B00977E6E00998272009D857600A0887900A48C
      7C00A68E7E00987F6F00000000000000000000000000B49C7B00EAD2B700BBAC
      9600D3D4C700F8D4BD00DAAD8200B26E4F00905B3C00754C330061452F00594E
      43005F5242005B443400726B5E000000000000000000000000000000000000FF
      FF000000000000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007BB05F0066E5E00066E5E0007BB05F00000000000000
      00000000000000000000000000000000000000000000A08D7D00DCD3CB00DAD0
      C900D8CEC600C0B0A800D3C8C000D0C5BC00CDC2B800CBBFB600CABCB300C8BA
      B000C6B9AE00987F6F00000000000000000000000000F6F6F500C8C4B700BEA2
      8600C7BDAF00D1B89700C49C7500A9836F00906C4F007A593C00694F39006457
      4600917A66006659480000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007BB05F007BB05F007BB05F007BB05F00000000000000
      000000000000000000000000000000000000000000007C6353007C6353007D65
      55007F675700826A5900856D5D00886F60008C7363008E75660091786900957C
      6C00977D6D00987F6F000000000000000000000000000000000000000000B59E
      8700AE9C8600AD8F7300A784620097846F00A8A399007A68530072604A00A69A
      8B00D4C7BD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DCDBD600E1DDD80000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000424242004242420042424200424242000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008C636300424242004242
      42008C4A390094521800B55A0000424242008C6363008C6363008C6363008C63
      63008C6363008C63630000000000000000000000000000808000008080000000
      0000000000000000000000000000C0C0C0000000000000808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008C636300B55A0000B55A
      0000AD5A1000B55A0000C65A00004242420008A5180000840000008400000084
      000008A518008C63630000000000000000000000000000808000008080000000
      0000000000000000000000000000C0C0C0000000000000808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008080000080
      8000008080000080800000808000008080000080800000808000008080000000
      000000000000000000000000000000000000000000008C636300C65A0000C65A
      0000C65A0000C65A0000CE6300004242420031C64A0010AD180010AD180010AD
      1800009C00008C63630000000000000000000000000000808000008080000000
      0000000000000000000000000000000000000000000000808000000000000080
      800000000000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000080
      8000008080000080800000808000008080000080800000808000008080000080
      800000000000000000000000000000000000000000008C636300C65A0000CE63
      0000CE630000CE630000CE6300004242420031C64A0021BD310021BD310029C6
      4A0042D66B008C63630000000000000000000000000000808000008080000080
      8000008080000080800000808000008080000080800000808000000000000080
      8000000000000000000000000000000000000000000000000000FFFFFF007B00
      00007B7B7B00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF0000FFFF000000
      0000008080000080800000808000008080000080800000808000008080000080
      800000808000000000000000000000000000000000008C636300CE630000CE6B
      0000CE6B0000CE6B0000D6730000424242000084000021AD310029BD390031C6
      4A0042D66B008C63630000000000000000000000000000808000008080000000
      0000000000000000000000000000000000000080800000808000000000000080
      80000000000000808000000000000000000000000000FFFFFF007B7B7B007B00
      00007B7B7B00000000000000000000000000FFFFFF007B0000007B0000007B00
      00007B0000007B0000007B7B7B00000000000000000000FFFF00FFFFFF0000FF
      FF00000000000080800000808000008080000080800000808000008080000080
      800000808000008080000000000000000000000000008C636300CE6B0000CE6B
      0000DE841800FFF7DE00D673000042424200008400000084000000840000009C
      0000009C00008C6363000000000000000000000000000080800000000000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C0000000000000808000000000000080
      80000000000000808000000000000000000000000000FFFFFF007B0000007B7B
      7B000000000000000000000000000000000000000000FFFFFF007B0000007B00
      00007B0000007B0000007B7B7B000000000000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008C636300D6730000D673
      0000DE7B0800D6730000D673000042424200FFE7C600FFE7C600FFE7C600FFE7
      C600FFE7C6008C6363000000000000000000000000000080800000000000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C0000000000000808000000000000080
      80000000000000808000000000000000000000000000FFFFFF007B0000007B7B
      7B00000000000000000000000000000000000000000000000000FFFFFF007B00
      00007B0000007B0000007B7B7B00000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00000000000000
      000000000000000000000000000000000000000000008C636300D6730000D673
      0000DE7B0000DE7B0000DE7B000042424200FFEFD600FFEFD600FFEFD600FFEF
      D600FFEFD6008C6363000000000000000000000000000080800000000000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C0000000000000000000000000000080
      80000000000000808000000000000000000000000000FFFFFF007B000000FFFF
      FF0000000000000000000000000000000000FFFFFF00FFFFFF007B0000007B7B
      7B007B0000007B0000007B7B7B000000000000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000
      000000000000000000000000000000000000000000008C636300DE7B0000E77B
      0000E77B0000E77B0000EF7B000042424200FFF7D600FFF7DE00FFF7DE00FFF7
      DE00FFF7DE008C6363000000000000000000000000000080800000000000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C00000000000C0C0C000000000000080
      80000000000000808000000000000000000000000000000000007B7B7B007B00
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF007B0000007B0000007B7B7B000000
      00007B7B7B007B0000007B7B7B00000000000000000000FFFF00FFFFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008C636300FF840000F784
      0000EF7B0000EF7B0000EF7B000042424200FFF7D600FFF7D600FFF7D600FFF7
      D600FFF7D6008C63630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000080800000000000000000000000000000000000000000007B7B
      7B007B0000007B0000007B0000007B0000007B7B7B007B7B7B00000000000000
      0000000000007B7B7B007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008C636300FF840000FF84
      0000F7840800F7840000FF84000042424200FFF7D600FFF7D600FFF7D600FFF7
      D600FFF7D6008C63630000000000000000000000000000000000000000000080
      800000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C00000000000C0C0
      C000000000000080800000000000000000000000000000000000000000000000
      00007B7B7B007B7B7B007B7B7B007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008C6363008C63
      6300DE732900E77B1800FF840000424242008484840084848400848484008484
      8400848484008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008C6363008C6363008C636300424242000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000080800000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C00000000000C0C0C00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFCFA00FDFCFA00AACA93004AB6
      48004AB6480036A9360000650000006500000871080022941C00006500000065
      00004B690300C25C0000C25C0000CA6400000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C600C6C6C600C6C6C600C6C6C6000000000084848400848484008484
      8400848484008484840084848400848484008484840084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFCFA00FDFCFA0094D28F0036A9
      360029A6290029A629001885180000650000087108004AB648003A9539001072
      0F00BC8C3E00BA540000BA540000BA5400000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600C6C6C600C6C6C6000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000060696C006666
      6600000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFCFA00FDFCFA0094D28F0015A0
      150015A0150015A015000784070000650000B7C87E00FDF2B700AACA93003789
      2800FBE8AA00FDF2B700DAA15900C26615000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C6C600C6C6C6000000000084848400848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007086E300DAF4FF0053C5
      F2001CA8D9002686A600596C73007E6973000000000000000000000000000000
      000000000000000000000000000000000000FDFCFA00FDFCFA0082CC8200059B
      050022941C0070B84F00DBD98B0088AC5500FEE69A00FEE69A00FEE69A00FEE6
      9A00FEE69A00FEE69A00FEE69A00FEE69A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6C6C6000000000084848400848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007086E300AFDFEF0076DC
      FF0076DCFF0076DCFF0076DCFF0068D4F9002DB3DF001A8CB2004C7380006666
      660000000000000000000000000000000000FDFCFA00FDFCFA00F7E4B300FDD6
      7B00FDD67B00FDD67B00FDD67B00FDD67B00FDD67B00FDD67B00FDD67B00FDD6
      7B00FDD67B00FDD67B00FDD67B00FDD67B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007086E30030AEDA0080E6
      FF0080E6FF0080E6FF0080E6FF0080E6FF0080E6FF0080E6FF0080E6FF006BD8
      F90066666600000000000000000000000000FDFCFA00FDFCFA00FBE8AA00FFC7
      5D00FFC75D00FFC75D00FFC75D00FFC75D00FFC75D00FFC75D00FFC75D00FFC7
      5D00FFC75D00FFC75D00FFC75D00FFC75D000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008D92EC003BB7EA00D3F9
      FF008AF0FF008AF0FF008AF0FF008AF0FF008AF0FF008AF0FF008AF0FF006FD5
      FF00318CA900000000000000000000000000FDFCFA00FDFCFA00FCD5A800FEB8
      4100FEB84100FEB84100FEB84100FEB84100FEB84100FEB84100FEB84100FEB8
      4100FEB84100FEB84100FEB84100FEB841000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000045A7DE0056C4F700DFF2
      F90094FAFF0094FAFF0094FAFF0094FAFF0094FAFF0094FAFF0094FAFF0072D8
      FF00A3F2F9007E6973000000000000000000FDFCFA00FDFCFA00FCF3D500FBE8
      AA00FDD67B00FEAA2600FEAA2600FEAA2600FEAA2600FEAA2600FEAA2600FEAA
      2600FEAA2600FEAA2600FEAA2600FEAA26000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000059BFE60066CCFF005CBF
      E200ADFFFF00A3FFFF00A3FFFF00A3FFFF00A3FFFF00A3FFFF00A3FFFF0075D9
      FF00CEFFFF0040798C000000000000000000FDFCFA00FDFCFA00FCF3D500F7E4
      B300F7E4B300F9CA7600FD9A0500FD9A0500FEAA2600FEB84100FAD99400F7E4
      B300F7E4B300FCD5A800FDC36400F9CA7600C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000060C1E60074DAFF0074DA
      FF002DB3DF0060BFDF00BFE6F200FBFFFF00C0FFFF00C0FFFF00C0FFFF007CD9
      FF00E1FFFF008DD9EC000000000000000000FDFCFA00FDFCFA00FDE9D500FCD5
      A800FCD5A800FCD5A800FAD99400FCD5A800FCD5A800FCD5A800FCD5A800FCD5
      A800FCD5A800FCD5A800FCD5A800FCD5A800C6C6C600C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000075C9E60085EBFF0085EB
      FF0085EBFF0085EBFF0085EBFF006DDCF500FFFFFF00F3FFFF00E7FFFF0084D9
      FF00F4FFFF00F4FFFF00596C730000000000FDFCFA00FDFCFA00FEE2C700F2CC
      9A00F2CC9A00F2CC9A00F2CC9A00F2CC9A00F2CC9A00F2CC9A00F2CC9A00F2CC
      9A00F2CC9A00F2CC9A00F2CC9A00F2CC9A00C6C6C600C6C6C600C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000075C9E60096FCFF0096FC
      FF0096FCFF0096FCFF0096FCFF0096FCFF0096FCFF0096FCFF0071E4F20013A6
      D2008BA0E80080CCE6005C89D80000000000FDFCFA00FDFCFA00FDF2E900EDC1
      9200EDC19200EDC19200EDC19200EDC19200EDC19200EDC19200EDC19200EDC1
      9200EDC19200EDC19200EDC19200EDC19200C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000075C9E60099FFFF0099FF
      FF0099FFFF00A3FEFF00D7FBFF00B8FDFF009EFFFF0099FFFF0099FFFF0026B3
      D90000000000000000000000000000000000FDFCFA00FDFCFA00FDFCFA00FBD8
      C300EDC19200EDC19200EDC19200EDC19200EDC19200EDC19200EDC19200EDC1
      9200EDC19200EDC19200EDC19200EDC19200C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600000000000000000000000000C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000ECFDFF00CAFE
      FF00B1FFFF00B9E4F20000000000000000009294EA009294EA0071A6E30065A1
      E10000000000000000000000000000000000FDFCFA00FDFCFA00FDFCFA00FDFC
      FA00FDFCFA00FDFCFA00FDFCFA00FDFCFA00FDFCFA00FDFCFA00FDFCFA00FDFC
      FA00FDFCFA00FDFCFA00FDFCFA00FDFCFA00C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600000000000000000000000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFCFA00FDFCFA00FDFCFA00FDFC
      FA00FDFCFA00FDFCFA00FDFCFA00FDFCFA00FDFCFA00FDFCFA00FDFCFA00FDFC
      FA00FDFCFA00FDFCFA00FDFCFA00FDFCFA00C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600000000000000000000000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFCFA00FDFCFA00FDFCFA00FDFC
      FA00FDFCFA00FDFCFA00FDFCFA00FDFCFA00FDFCFA00FDFCFA00FDFCFA00FDFC
      FA00FDFCFA00FDFCFA00FDFCFA00FDFCFA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C600C6C6C600C6C6C600C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600C6C6C600C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C6C600C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840084848400848484008484
      8400848484008484840084848400848484008484840084848400848484000000
      0000000000000000000000000000C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C600C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C600C6C6C600C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600000000000000000000000000C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600000000000000000000000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600000000000000000000000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000FFFFFF00FFFF
      FF000000000000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF000000000000000000FFFFFF00FFFFFF0000000000FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF000000000000000000FFFFFF00FFFFFF0000000000FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B0000007B00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B0000007B0000000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B00
      0000000000007B00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B00
      0000000000007B00000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B0000000000
      00007B0000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B0000000000
      00007B0000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B0000007B0000007B00
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B0000007B0000007B00
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF007B7B7B00000000007B0000007B0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF007B7B7B00000000007B0000007B0000000000
      000000000000000000000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000000000007B7B7B000000
      0000000000000000000000000000FFFFFF007B7B7B0000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B000000
      0000000000000000000000000000FFFFFF007B7B7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B00FF007B00FF007B00
      FF007B00FF007B00FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000FFFFFF00FFFFFF0000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B00FF007B00FF007B00
      FF007B00FF007B00FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00000000000000
      000000000000FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B00FF007B00FF007B00
      FF007B00FF007B00FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00000000000000000000000000000000000000000000000000007B7B7B00FFFF
      FF00FFFFFF000000000000000000000000007B7B7B0000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B00FFFF
      FF00FFFFFF000000000000000000000000007B7B7B0000000000000000000000
      000000000000000000000000000000000000000000007B00FF007B00FF007B00
      FF007B00FF007B00FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BDBDBD007B7B7B007B7B7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BDBDBD00BDBDBD007B7B7B0000000000000000007B7B7B007B7B7B000000
      0000000000000000000000000000000000007B7B7B00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B00
      00007B000000FFFFFF0000000000000000000000000000000000000000000000
      000000000000000000007B7B7B007B0000007B000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000BDBDBD00BDBD
      BD007B7B7B007B7B7B00BDBDBD007B7B7B007B7B7B0000000000000000007B7B
      7B007B7B7B000000000000000000000000007B7B7B00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B00
      00007B000000FFFFFF0000000000000000000000000000000000000000000000
      000000000000000000007B7B7B007B0000007B000000FFFFFF00000000000000
      000000000000000000000000000000000000000000007B7B7B007B7B7B007B7B
      7B00BDBDBD00BDBDBD00BDBDBD007B7B7B007B7B7B007B7B7B007B7B7B000000
      0000000000007B7B7B0000000000000000007B7B7B00FFFFFF007B0000007B00
      0000FFFFFF007B0000007B0000007B0000007B000000FFFFFF00BDBDBD000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B007B0000007B0000007B000000BDBDBD007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B0000000000000000000000000000000000000000000000
      000000000000000000007B7B7B007B0000007B000000FFFFFF00000000000000
      0000000000000000000000000000000000007B7B7B007B7B7B00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B000000000000000000000000007B7B7B00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B007B0000007B0000007B000000FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00000000007B0000007B000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000007B7B7B00FFFFFF00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00FFFFFF007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B00000000007B7B7B00FFFFFF007B0000007B00
      0000FFFFFF007B0000007B0000007B0000007B000000FFFFFF00BDBDBD000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B007B0000007B0000007B000000FFFFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B007B00
      00007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B00
      00007B000000FFFFFF0000000000000000007B7B7B00FFFFFF00BDBDBD00BDBD
      BD00FFFFFF00FFFFFF00BDBDBD00BDBDBD00BDBDBD007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B00000000007B7B7B00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B007B0000007B0000007B000000FFFFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B007B00
      00007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B00
      00007B000000FFFFFF0000000000000000007B7B7B00FFFFFF00FFFFFF00FFFF
      FF00BDBDBD00BDBDBD000000FF000000FF00BDBDBD00BDBDBD00BDBDBD007B7B
      7B007B7B7B007B7B7B007B7B7B00000000007B7B7B00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00BDBDBD000000
      0000000000000000000000000000000000000000000000000000FFFFFF00BDBD
      BD007B0000007B0000007B000000FFFFFF00FFFFFF00FFFFFF00000000000000
      00000000000000000000000000000000000000000000000000007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B0000007B000000000000007B7B7B007B7B
      7B007B7B7B000000000000000000000000007B7B7B00FFFFFF00BDBDBD00BDBD
      BD0000FF000000FF0000BDBDBD00BDBDBD00BDBDBD007B7B7B007B7B7B000000
      0000BDBDBD007B7B7B007B7B7B00000000007B7B7B00FFFFFF00000000000000
      0000FFFFFF00FFFFFF00FFFFFF000000000000FFFF0000000000BDBDBD000000
      00000000000000000000000000007B000000000000007B7B7B007B0000007B00
      00007B0000007B0000007B0000007B0000007B00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B7B7B007B0000007B000000FFFFFF00000000000000
      000000000000000000000000000000000000000000007B7B7B007B7B7B00FFFF
      FF00BDBDBD00BDBDBD00BDBDBD007B7B7B007B7B7B00FFFFFF00FFFFFF000000
      0000BDBDBD000000000000000000000000007B7B7B00FFFFFF0000000000FFFF
      FF0000000000FFFFFF000000000000FFFF0000000000FFFFFF00000000000000
      000000000000000000007B0000007B000000000000007B7B7B007B7B7B007B00
      00007B0000007B0000007B0000007B0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B7B7B007B0000007B000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B007B7B7B00FFFFFF007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000007B7B7B00FFFFFF00FFFFFF000000
      000000FFFF000000000000FFFF0000000000FFFFFF0000000000FFFFFF0000FF
      FF00FFFFFF00000000007B0000007B00000000000000000000007B7B7B007B7B
      7B007B0000007B0000007B000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B7B7B007B0000007B000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000007B7B7B007B7B7B007B7B7B007B7B
      7B0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF007B0000007B0000000000000000000000000000007B7B
      7B007B7B7B007B00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B7B7B007B7B7B007B7B7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000000000FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF007B0000007B0000000000000000000000000000000000
      00007B7B7B007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B00FFFFFF00FFFFFF00FFFF
      FF007B7B7B007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00000000007B0000007B0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B007B7B7B007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B0000007B0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000007B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B00BDBDBD00BDBD
      BD00BDBDBD00000000007B7B7B00000000007B7B7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000007B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00BDBD
      BD00BDBDBD0000000000000000007B7B7B00000000007B7B7B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000007B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B00BDBDBD0000000000BDBD
      BD0000000000BDBDBD0000000000BDBDBD0000000000BDBDBD0000000000BDBD
      BD0000000000BDBDBD0000000000000000007B7B7B007B7B7B007B7B7B00FFFF
      FF00BDBDBD00000000007B7B7B00000000007B7B7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000007B7B0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B0000FFFF000000000000FF
      FF000000000000FFFF000000000000FFFF000000000000FFFF000000000000FF
      FF000000000000FFFF000000000000FFFF000000000000000000000000007B7B
      7B00FFFFFF0000000000000000007B7B7B00000000007B7B7B00000000007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000007B7B00000000000000000000000000FFFFFF0000000000000000000000
      0000000000000000000000000000000000007B7B7B00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000000000FFFFFF000000000000000000000000007B7B
      7B00FFFFFF007B7B7B00000000000000000000000000000000007B7B7B00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000007B7B
      7B007B000000FFFFFF0000000000000000000000000000000000000000000000
      0000007B7B00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000
      0000000000000000000000000000000000007B7B7B0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF000000000000000000000000007B7B
      7B00FFFFFF00BDBDBD007B7B7B00FFFFFF00BDBDBD0000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000007B7B7B007B0000007B00
      00007B0000007B0000007B000000FFFFFF000000000000000000000000007B7B
      7B007B0000007B7B7B00FFFFFF00000000000000000000000000000000000000
      000000000000007B7B00FFFFFF0000FFFF0000000000007B7B00007B7B00007B
      7B00000000000000000000000000000000007B7B7B00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000
      0000000000000000000000FFFF00FFFFFF00000000000000000000000000FFFF
      FF00BDBDBD00BDBDBD007B7B7B00FFFFFF00BDBDBD00000000007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B00000000007B7B7B007B0000007B00
      00007B0000007B000000FFFFFF00000000000000000000000000000000000000
      00007B7B7B007B000000FFFFFF00000000000000000000000000000000000000
      000000000000007B7B0000FFFF00FFFFFF0000FFFF0000000000000000000000
      0000000000000000000000000000000000007B7B7B0000FFFF00FFFFFF00007B
      7B00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF000000000000FFFF00FFFFFF0000FFFF00FFFFFF00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD007B7B7B00FFFFFF00BDBDBD0000000000000000000000
      000000000000000000000000000000000000000000007B7B7B007B0000007B00
      00007B000000FFFFFF0000000000000000000000000000000000000000000000
      00007B7B7B007B000000FFFFFF00000000000000000000000000007B7B000000
      000000000000000000000000000000FFFF00FFFFFF0000FFFF00000000000000
      0000000000000000000000000000000000007B7B7B00FFFFFF0000FFFF00007B
      7B00007B7B00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF0000000000FFFFFF0000FFFF00FFFFFF007B7B7B00BDBDBD00FFFFFF00FFFF
      FF00FFFFFF00BDBDBD007B7B7B00FFFFFF00BDBDBD0000000000000000000000
      000000000000000000000000000000000000000000007B7B7B007B0000007B00
      00007B7B7B007B000000FFFFFF00FFFFFF000000000000000000000000000000
      0000FFFFFF007B000000FFFFFF00000000000000000000000000007B7B00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000
      0000000000000000000000000000000000007B7B7B0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000
      00000000000000FFFF00FFFFFF0000FFFF0000000000000000007B7B7B007B7B
      7B007B7B7B00BDBDBD007B7B7B00FFFFFF00BDBDBD0000000000000000000000
      000000000000000000000000000000000000000000007B7B7B007B0000007B7B
      7B00000000007B7B7B007B0000007B000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF007B0000007B7B7B000000000000000000000000000000000000000000007B
      7B00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000007B7B00007B7B00007B
      7B00000000000000000000000000000000007B7B7B00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF0000000000FFFFFF0000FFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B007B7B7B000000
      000000000000000000007B7B7B007B7B7B007B0000007B0000007B0000007B00
      00007B7B7B00000000000000000000000000000000000000000000000000007B
      7B0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000000000000000
      0000000000000000000000000000000000007B7B7B0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF000000000000000000000000000000
      000000000000000000007B7B7B007B7B7B007B7B7B007B7B7B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B007B7B7B007B7B7B007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      0000007B7B0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00000000000000
      0000000000000000000000000000000000007B7B7B00FFFFFF0000FFFF00FFFF
      FF007B7B7B00FFFFFF0000FFFF00FFFFFF007B7B7B00FFFFFF0000FFFF00FFFF
      FF007B7B7B00FFFFFF0000FFFF00FFFFFF007B7B7B007B7B7B007B7B7B000000
      0000000000007B7B7B00BDBDBD00BDBDBD00BDBDBD007B7B7B00000000000000
      00000000000000000000BDBDBD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000007B7B00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000
      0000000000000000000000000000000000007B7B7B0000FFFF007B7B7B0000FF
      FF007B7B7B0000FFFF007B7B7B0000FFFF007B7B7B0000FFFF007B7B7B0000FF
      FF007B7B7B0000FFFF007B7B7B0000FFFF007B7B7B00FFFFFF00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD007B7B7B007B7B
      7B007B7B7B00BDBDBD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000007B7B00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00000000000000000000000000000000007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B00FFFFFF00BDBDBD00BDBD
      BD00FFFFFF00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000007B7B00007B7B00007B7B00007B7B00007B7B00007B7B00007B
      7B00007B7B00007B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B00FFFFFF00FFFFFF007B7B
      7B007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B7B
      7B007B7B7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF000000000000000000FFFFFF00FFFFFF0000000000000000007B7B7B007B7B
      7B0000000000000000007B7B7B007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00000000000000000000000000FFFFFF00FFFFFF00000000000000
      0000FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00000000000000
      00007B7B7B007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00BDBDBD000000000000000000000000000000000000000000FFFFFF00FFFF
      FF000000000000000000FFFFFF00FFFFFF00000000000000000000000000BDBD
      BD0000000000000000007B7B7B007B7B7B0000000000000000007B0000007B00
      000000000000BDBDBD007B0000007B000000BDBDBD00BDBDBD00BDBDBD000000
      00007B0000007B0000000000000000000000000000007B7B7B00000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      00007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00BDBDBD000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BDBDBD00BDBDBD0000000000BDBD
      BD007B7B7B0000000000000000000000000000000000000000007B0000007B00
      000000000000BDBDBD007B0000007B000000BDBDBD00BDBDBD00BDBDBD000000
      00007B0000007B0000000000000000000000000000007B7B7B00000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      00007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00BDBDBD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BDBDBD00000000000000000000000000BDBD
      BD007B7B7B007B7B7B00000000000000000000000000000000007B0000007B00
      000000000000BDBDBD007B0000007B000000BDBDBD00BDBDBD00BDBDBD000000
      00007B0000007B00000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00BDBDBD000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD007B7B7B007B7B7B00000000000000000000000000000000007B0000007B00
      00007B000000BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD007B00
      00007B0000007B0000000000000000000000000000007B7B7B00000000000000
      000000000000000000000000000000000000000000007B7B7B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00BDBDBD000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007B7B7B007B7B7B007B7B7B0000000000BDBD
      BD007B7B7B007B7B7B00000000000000000000000000000000007B0000007B00
      00007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B00
      00007B0000007B0000000000000000000000000000007B7B7B00000000000000
      000000000000000000000000000000000000000000007B7B7B00000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      00007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00BDBDBD000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007B7B7B007B7B7B007B7B7B0000000000BDBD
      BD007B7B7B007B7B7B00000000000000000000000000000000007B0000007B00
      0000000000000000000000000000000000000000000000000000000000000000
      00007B0000007B0000000000000000000000000000007B7B7B00000000000000
      000000000000000000000000000000000000000000007B7B7B00000000000000
      000000000000000000000000000000000000000000007B7B7B00FFFFFF007B7B
      7B007B7B7B00FFFFFF00FFFFFF007B7B7B00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B0000000000BDBD
      BD00000000007B7B7B00000000000000000000000000000000007B0000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000007B00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B0000FF
      FF007B7B7B00FFFFFF007B7B7B00FFFFFF00FFFFFF00FFFFFF00BDBDBD00FFFF
      FF007B7B7B000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF00000000007B7B7B0000000000BDBD
      BD007B7B7B007B7B7B00000000000000000000000000000000007B0000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000007B00000000000000000000000000000000000000000000007B7B
      7B00000000000000000000000000FFFFFF00000000007B7B7B00000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF007B7B
      7B00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD007B7B
      7B000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF00000000007B7B7B007B7B7B0000000000BDBD
      BD007B7B7B007B7B7B00000000000000000000000000000000007B0000000000
      0000FFFFFF007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B00FFFF
      FF00000000007B00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B007B7B
      7B0000FFFF00FFFFFF00FFFFFF007B7B7B007B7B7B007B7B7B007B7B7B000000
      00000000000000000000000000000000000000000000000000000000FF000000
      00000000FF000000FF00000000007B7B7B007B7B7B007B7B7B0000000000BDBD
      BD007B7B7B007B7B7B00000000000000000000000000000000007B0000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000007B00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B0000FF
      FF007B7B7B0000FFFF007B7B7B00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF0000000000000000007B7B7B007B7B7B007B7B7B0000000000BDBD
      BD007B7B7B007B7B7B0000000000000000000000000000000000BDBDBD000000
      0000FFFFFF007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B00FFFF
      FF00000000000000000000000000000000000000000000000000000000007B7B
      7B00FFFFFF00000000000000000000000000000000007B7B7B00FFFFFF000000
      000000000000000000000000000000000000000000007B7B7B00FFFFFF000000
      00007B7B7B00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007B7B7B007B7B7B007B7B7B007B7B7B000000
      0000BDBDBD007B7B7B00000000000000000000000000000000007B0000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000007B00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      00007B7B7B00FFFFFF0000000000000000007B7B7B00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B0000000000BDBDBD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D6E7E70000000000F7F7F70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000526B6B0018424200738C8C00527373007B949400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B00FFFF
      FF00BDBDBD00FFFFFF00BDBDBD00BDBDBD00BDBDBD00BDBDBD007B7B7B00BDBD
      BD007B7B7B000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007B7B7B007B007B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000425A5A00299C9C0063BDBD000808000000393100004239007B9C94000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B00FFFF
      FF0000000000BDBDBD00FFFFFF0000000000BDBDBD00BDBDBD00000000007B7B
      7B00BDBDBD000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B00BDBDBD00FFFFFF00BDBDBD007B007B00000000000000
      0000000000000000000000000000000000000000000000000000000000004A5A
      5A00428C8C008CE7E700184A4200009C9C0000EFEF0000CECE00002121007384
      840000000000000000000000000000000000000000000000FF00000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      00000000000000000000000000000000000000000000000000007B7B7B00FFFF
      FF0000000000FFFFFF00BDBDBD0000000000BDBDBD00BDBDBD0000000000BDBD
      BD007B7B7B000000000000000000000000000000000000000000000000007B7B
      7B00BDBDBD00FFFFFF00FFFFFF007B7B7B00BDBDBD00BDBDBD007B007B000000
      0000000000000000000000000000000000000000000042635A0000211800315A
      52004A8C8C0073F7FF007BFFFF007BF7F7005ACEC60084FFFF0084FFFF006BD6
      D600395A5A00102929007B949400DEE7E700000000000000FF0000007B000000
      7B0000007B00000000000000000000000000000000000000FF0000007B000000
      7B0000007B0000000000000000000000000000000000000000007B7B7B00FFFF
      FF0000000000BDBDBD00FFFFFF0000000000BDBDBD00BDBDBD00000000007B7B
      7B00BDBDBD00000000000000000000000000000000007B7B7B00BDBDBD00FFFF
      FF00FFFFFF007B7B7B007B7B7B00000000007B7B7B00BDBDBD00BDBDBD007B00
      7B0000000000000000000000000000000000EFFFF7001018180073949400A5EF
      EF00BDFFFF00B5FFFF00102118002142310029524A0018393900316B63003173
      6B002142420021524A0000080800215A520000000000000000000000FF000000
      7B0000007B0000007B0000000000000000000000FF0000007B0000007B000000
      7B000000000000000000000000000000000000000000000000007B7B7B00FFFF
      FF0000000000FFFFFF00BDBDBD0000000000BDBDBD00BDBDBD0000000000BDBD
      BD007B7B7B000000000000000000000000007B007B007B7B7B00FFFFFF007B7B
      7B007B7B7B0000000000000000007B007B00000000007B7B7B00BDBDBD00BDBD
      BD007B007B0000000000000000000000000039424200D6F7F700E7FFFF00DEFF
      FF00BDE7E700BDDEDE00212121001021420029524A0084B5B5004A847B006BA5
      9C00638C8C0010211800184A420052847B000000000000000000000000000000
      FF0000007B0000007B0000007B000000000000007B0000007B0000007B000000
      00000000000000000000000000000000000000000000000000007B7B7B00FFFF
      FF0000000000BDBDBD00FFFFFF0000000000BDBDBD00BDBDBD00000000007B7B
      7B00BDBDBD000000000000000000000000007B007B007B7B7B007B7B7B000000
      0000000000007B007B007B007B007B007B007B007B00000000007B7B7B00BDBD
      BD00BDBDBD007B007B000000000000000000E7E7E700E7EFEF00E7FFFF00E7FF
      FF00ADD6D60094CEC60094949C0084A5FF0029428400636B7300CEEFE700C6F7
      F700F7FFFF00BDDEDE005A737300EFEFEF000000000000000000000000000000
      00000000FF0000007B0000007B0000007B0000007B0000007B00000000000000
      00000000000000000000000000000000000000000000000000007B7B7B00FFFF
      FF0000000000FFFFFF00BDBDBD0000000000BDBDBD00BDBDBD0000000000BDBD
      BD007B7B7B000000000000000000000000007B007B0000000000000000007B00
      7B007B007B007B007B007B007B007B007B007B007B007B007B00000000007B7B
      7B00BDBDBD00BDBDBD007B007B0000000000000000007B7B7B00E7DEDE00F7FF
      FF00F7FFFF00BDE7E700ADADAD009C9C9C00085A5A0010296300637B9400F7F7
      EF00EFF7F7009CADAD006B737300D6D6D6000000000000000000000000000000
      0000000000000000FF0000007B0000007B0000007B0000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B00FFFF
      FF000000000000000000FFFFFF000000000000000000BDBDBD00000000000000
      0000BDBDBD000000000000000000000000007B007B007B7B7B007B007B007B00
      7B007B007B007B007B0000FFFF00007B7B007B007B007B007B007B007B000000
      00007B7B7B00BDBDBD0000000000000000000000000000000000EFEFEF007B7B
      7B00E7E7E700F7FFFF00DEEFE7004A84AD0094D6EF00ADF7DE0029A5B5001063
      CE00F7EFE7000000000000000000000000000000000000000000000000000000
      00000000FF0000007B0000007B0000007B0000007B0000007B00000000000000
      00000000000000000000000000000000000000000000000000007B7B7B00FFFF
      FF00BDBDBD00FFFFFF00BDBDBD00FFFFFF00BDBDBD00FFFFFF00BDBDBD00BDBD
      BD007B7B7B00000000000000000000000000000000007B007B007B7B7B007B00
      7B007B007B007B007B007B007B00BDBDBD0000FFFF0000FFFF007B007B007B00
      7B00000000007B7B7B000000000000000000000000000000000000000000EFEF
      EF007B7B7B00E7E7E70000000000C6D6D600216B9C0094CEE700ADF7DE0029A5
      B5005A738C00FFFFF70000000000000000000000000000000000000000000000
      FF0000007B0000007B0000007B000000000000007B0000007B0000007B000000
      00000000000000000000000000000000000000000000000000007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B0000000000000000000000000000000000000000007B007B007B7B
      7B007B007B007B007B00007B7B00007B7B007B007B0000FFFF0000FFFF007B00
      7B007B007B000000000000000000000000000000000000000000000000000000
      0000EFEFEF007B7B7B00A5A5A5006B7B7B00736B6B004A94C6008CCEDE00ADEF
      DE00086BCE005A738400FFFFF7000000000000000000000000000000FF000000
      7B0000007B0000007B0000000000000000000000FF0000007B0000007B000000
      7B0000000000000000000000000000000000000000007B7B7B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B00
      7B007B7B7B007B007B007B007B0000FFFF0000FFFF0000FFFF00007B7B007B00
      7B007B007B007B007B0000000000000000000000000000000000000000000000
      000000000000EFEFEF009C9C9C00EFE7E70000000000DECECE003984B5008CCE
      DE00397B8C0021295A00635A6B00FFFFF700000000000000FF0000007B000000
      7B0000007B00000000000000000000000000000000000000FF0000007B000000
      7B0000007B00000000000000000000000000000000007B7B7B00FFFFFF00FFFF
      FF00BDBDBD00FFFFFF00BDBDBD00FFFFFF00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD007B7B7B0000000000000000000000000000000000000000000000
      00007B007B007B7B7B007B007B007B007B007B007B007B007B007B007B007B00
      7B007B007B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DED6D600428C
      BD00B5A5B5006B73DE0031315A0039393900000000000000FF000000FF000000
      FF000000FF0000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF00000000000000000000000000000000007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B0000000000000000000000000000000000000000000000
      0000000000007B007B007B7B7B007B007B007B007B007B007B007B007B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00005A5A8400ADADB500A5A5EF00636373000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B0000000000BDBDBD00BDBDBD007B7B7B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B007B007B7B7B007B007B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CECEC60052525A008C8C9C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007B007B000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000D00000000100010000000000800600000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000F81FFFFFFFFFFFFFC007FFFFFFFFFF9B
      8001FFFFFC3FFF118001FFFFFC3F80018001C007FC3FB80180018007FC3F8003
      00009557C003BA030000AAA7C003800300019557C003BB9B8001AAA7C0038003
      80019557FC3FBBFB8001800FFC3F80038001CAFFFC3F80038003E1FFFC3F8003
      E007FFFFFFFFFFFFFE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FF801FFFFFFFFF
      8003001FFFFF001F80030007FFFF000F80030007EFFF000780030001C7030003
      8003000187010001800300018F810000800300018FC1001F800300018F01001F
      80030001C011001F80030001E0398FF18003C001F0FFFFF9C003C001FFFFFF75
      F0FFF001FFFFFF8FFFFFF001FFFFFFFF0000FFFFFFFF0000FFE0803FFFFF0000
      7FF0BFCFCFFF00000018900380FF0000FFEC979B800F00007FF6979B80070000
      001B953B80070000FFED943B800300007DF6940B8003000038FBD40B80030000
      107DD41B80010000003E803B8001000000FFF47B800F00000000F003C30F0000
      0000FDFFFFFF00000000FFFFFFFF0000FFFFFFFFFFFF0000FFFFFFFFFFFFFFE0
      FFF9FC3FF8077FF0FFF3F3CFFBF70018FFE7F7EFFBF7000CFFCFEFF7FBF70006
      FF9FEFF7FFF70003FF3FDFFBFBF7FFE1FE7FDFFBFBF77DF0FCFFDFFBFBF738F8
      F9FFEFF7FBF7107CF3FFEFF78047003EE7FFF7EFFBFF00FFCFFFF3CFFBFF0000
      9FFFFC3FFBFF0000FFFFFFFFFBFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF8001
      8001FFFF8000BFFD8001FFFFBFFEBFFD8001FFFFBFFEDFFD8001FFFFBFFEDF01
      8001FE7FBFFEDFBF8001FC3FBFFEEFDF8001FC3FBFFEEFDF8001FE7FBFFEF7EF
      8001FFFFBFFEF7EF8001FFFFBFFEFBF78001FFFF8000FBF78001FFFFFFFFF803
      8001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF807FFFFFFFFFF9FF007FC3FFFFF
      FF9FE003F00F8701FF3FC003E007EFC7F73FC001C003EF87F27F8001C003F00F
      F07F00018001F70FF00F00008001F71FF01F90008001FA1FF03FE0008001FA3F
      F07FE000C003FC3FF0FFC005C003FC7FF1FFC007E007FC7FF3FFE40FF00FFEFF
      F7FFFE7FFC3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7FFFFFFFFF3FFF3
      83FF8001FFEBFFEB01FF8001FFD7FFD701FF8001F08FF08F01EF8001CC1FCC1F
      83EF80019E3F9E3FC7EF8001BF3FBF3FFF0180017FDF7FDF01EF80017FDF7FDF
      01EF80015FDF5FDB01EF80018FBF8FBB01FF80038720872001FF8007CE7FCE7B
      01FF800FF1FFF1FBFFFFFFFFFFFFFFFFFFFFFFFFFC7FFFFFFFFFFFFFF01F000F
      F003FE3FC007000FE003FC3F8001000FE003FC3F8001000FE003FC3F0001000F
      E0FFE2030000000FE0FFC0030000000FE0FFC0030000000FC03FC0470000000E
      807FFC3F8001000480FFFC3FE0070000C1FFFC3FF8030000E3FFFC7FFE00F800
      F3FFFFFFFF03FC00FFFFFFFFFF8FFE04FFFFFBFFFFFF801FFFFFF9FF0000001F
      FFFFFCFF00010000FFFFFC7F0000E000FFF7F03F0000E000C0E3F01F0000E000
      80E1F80F0000000081F1F83F0000003F83F1C01F0000003F80F1C00F0000C03F
      8803E00F0000FC3E9C07E03F0000981CFF0FF01F00000000FFFFF00F00000001
      FFFFF80700000003FFFFF803FFFF0007FFFFF0038000FFFFFFFFF0030000C001
      07C1F0030000800107C1F0030000800107C1F003FC0180010001F003FC018001
      0001F003FC0180010101B003FC01800101018003C00180018003C007C0018001
      C007800F80018001C107C01F80018001E38FC0FF80018001E38F93FFE4018001
      E38FB33FFC018001FFFFF3FFFC01FFFFFD7FFFFFE003FE7FF83FFFFFC003F83F
      F01FFFFFC003E01FE00F87C3C003800F80008383C00300070000C107C0030003
      0000E00FC00300010000F01FC00300008000F83FC0030000C007F01FC0038001
      E203E00FC003C001F001C1078001E001F88083838001F001FFC087C3C003F807
      FFF0FFFFF81FFC1FFFF1FFFFFC3FFE7F00000000000000000000000000000000
      000000000000}
  end
  object dlgShapes: TbsSkinOpenDialog
    DialogWidth = 0
    DialogHeight = 0
    DialogMinWidth = 0
    DialogMinHeight = 0
    CheckFileExists = True
    MultiSelection = True
    AlphaBlend = False
    AlphaBlendValue = 225
    AlphaBlendAnimation = False
    CtrlAlphaBlend = False
    CtrlAlphaBlendValue = 225
    CtrlAlphaBlendAnimation = False
    LVHeaderSkinDataName = 'resizebutton'
    SkinData = bsSkinData1
    CtrlSkinData = bsSkinData1
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    Title = 'Abrir Arquivo'
    InitialDir = 'C:\'
    Filter = 'Camadas e Datasets|*.shp;*.dwg;*.dxf;*.dgn;*.tif;*.ecw;*.jp2'
    FilterIndex = 1
    Left = 393
    Top = 104
  end
  object bsSkinMessage1: TbsSkinMessage
    AlphaBlend = False
    AlphaBlendAnimation = False
    AlphaBlendValue = 200
    SkinData = bsSkinData1
    CtrlSkinData = bsSkinData1
    ButtonSkinDataName = 'button'
    MessageLabelSkinDataName = 'stdlabel'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultButtonFont.Charset = DEFAULT_CHARSET
    DefaultButtonFont.Color = clWindowText
    DefaultButtonFont.Height = 14
    DefaultButtonFont.Name = 'Arial'
    DefaultButtonFont.Style = []
    UseSkinFont = True
    Left = 424
    Top = 72
  end
  object bsResourceStrData1: TbsResourceStrData
    ResStrings.Strings = (
      'MI_MINCAPTION=Mi&nimize'
      'MI_MAXCAPTION=Ma&ximize'
      'MI_CLOSECAPTION=&Close'
      'MI_RESTORECAPTION=&Restore'
      'MI_MINTOTRAYCAPTION=Minimize to &Tray'
      'MI_ROLLUPCAPTION=Ro&llUp'
      'MINBUTTON_HINT=Minimize'
      'MAXBUTTON_HINT=Maximize'
      'CLOSEBUTTON_HINT=Close'
      'TRAYBUTTON_HINT=Minimize to Tray'
      'ROLLUPBUTTON_HINT=Roll Up'
      'MENUBUTTON_HINT=System menu'
      'EDIT_UNDO=Undo'
      'EDIT_COPY=Copy'
      'EDIT_CUT=Cut'
      'EDIT_PASTE=Paste'
      'EDIT_DELETE=Delete'
      'EDIT_SELECTALL=Select All'
      'MSG_BTN_YES=&Yes'
      'MSG_BTN_NO=&No'
      'MSG_BTN_OK=OK'
      'MSG_BTN_CANCEL=Cancel'
      'MSG_BTN_ABORT=&Abort'
      'MSG_BTN_RETRY=&Retry'
      'MSG_BTN_IGNORE=&Ignore'
      'MSG_BTN_ALL=&All'
      'MSG_BTN_NOTOALL=N&oToAll'
      'MSG_BTN_YESTOALL=&YesToAll'
      'MSG_BTN_HELP=&Help'
      'MSG_BTN_OPEN=&Open'
      'MSG_BTN_SAVE=&Save'
      'MSG_BTN_CLOSE=Close'
      'MSG_BTN_BACK_HINT=Go To Last Folder Visited'
      'MSG_BTN_UP_HINT=Up One Level'
      'MSG_BTN_NEWFOLDER_HINT=Create New Folder'
      'MSG_BTN_VIEWMENU_HINT=View Menu'
      'MSG_BTN_STRETCH_HINT=Stretch Picture'
      'MSG_FILENAME=File name:'
      'MSG_FILETYPE=File type:'
      'MSG_NEWFOLDER=New Folder'
      'MSG_LV_DETAILS=Details'
      'MSG_LV_ICON=Large icons'
      'MSG_LV_SMALLICON=Small icons'
      'MSG_LV_LIST=List'
      'MSG_PREVIEWSKIN=Preview'
      'MSG_PREVIEWBUTTON=Button'
      'MSG_CAP_WARNING=Warning'
      'MSG_CAP_ERROR=Error'
      'MSG_CAP_INFORMATION=Information'
      'MSG_CAP_CONFIRM=Confirm'
      'CALC_CAP=Calculator'
      'ERROR=Error'
      'COLORGRID_CAP=Basic colors'
      'CUSTOMCOLORGRID_CAP=Custom colors'
      'ADDCUSTOMCOLORBUTTON_CAP=Add to Custom Colors'
      'FONTDLG_COLOR=Color:'
      'FONTDLG_NAME=Name:'
      'FONTDLG_SIZE=Size:'
      'FONTDLG_HEIGHT=Height:'
      'FONTDLG_EXAMPLE=Example:'
      'FONTDLG_STYLE=Style:'
      'FONTDLG_SCRIPT=Script:'
      'DB_DELETE_QUESTION=Delete record?'
      'DB_MULTIPLEDELETE_QUESTION=Delete all selected records?'
      'NODISKINDRIVE=There is no disk in Drive or Drive is not ready'
      'NOVALIDDRIVEID=Not a valid Drive ID'
      'FLV_NAME=Name'
      'FLV_SIZE=Size'
      'FLV_TYPE=Type'
      'FLV_LOOKIN=Look in: '
      'FLV_MODIFIED=Modified'
      'FLV_ATTRIBUTES=Attributes'
      'FLV_DISKSIZE=Disk Size'
      'FLV_FREESPACE=Free Space'
      'PRNDLG_NAME=Name:'
      'PRNDLG_PRINTER=Printer'
      'PRNDLG_PROPERTIES=Properties...'
      'PRNDLG_TYPE=Type:'
      'PRNDLG_STATUS=Status:'
      'PRNDLG_WHERE=Where:'
      'PRNDLG_COMMENT=Comment:'
      'PRNDLG_PRINTRANGE=Print range'
      'PRNDLG_COPIES=Copies'
      'PRNDLG_NUMCOPIES=Number of copies:'
      'PRNDLG_COLLATE=Collate'
      'PRNDLG_ALL=All'
      'PRNDLG_PAGES=Pages'
      'PRNDLG_SELECTION=Selection'
      'PRNDLG_PRINTTOFILE=Print to file'
      'PRNDLG_FROM=from:'
      'PRNDLG_TO=to:'
      'PRNDLG_ORIENTATION=Orientation'
      'PRNDLG_PAPER=Paper'
      'PRNDLG_PORTRAIT=Portrait'
      'PRNDLG_LANDSCAPE=Landscape'
      'PRNDLG_SOURCE=Source:'
      'PRNDLG_SIZE=Size:'
      'PRNDLG_MARGINS=Margins (millimeters)'
      'PRNDLG_MARGINS_INCHES=Margins (inches)'
      'PRNDLG_LEFT=Left:'
      'PRNDLG_RIGHT=Right:'
      'PRNDLG_TOP=Top:'
      'PRNDLG_BOTTOM=Bottom:'
      'PRNDLG_WARNING=There are no printers in your system!'
      'FIND_NEXT=Find next'
      'FIND_WHAT=Find what:'
      'FIND_DIRECTION=Direction'
      'FIND_DIRECTIONUP=Up'
      'FIND_DIRECTIONDOWN=Down'
      'FIND_MATCH_CASE=Match case'
      'FIND_MATCH_WHOLE_WORD_ONLY=Match whole word only'
      'FIND_REPLACE_WITH=Replace with:'
      'FIND_REPLACE=Replace'
      'FIND_REPLACE_All=Replace All'
      'FIND_REPLACE_CLOSE=Close')
    CharSet = DEFAULT_CHARSET
    Left = 456
    Top = 72
  end
  object Savedialog1: TbsSkinSaveDialog
    DialogWidth = 0
    DialogHeight = 0
    DialogMinWidth = 0
    DialogMinHeight = 0
    CheckFileExists = True
    MultiSelection = False
    AlphaBlend = False
    AlphaBlendValue = 225
    AlphaBlendAnimation = False
    CtrlAlphaBlend = False
    CtrlAlphaBlendValue = 225
    CtrlAlphaBlendAnimation = False
    LVHeaderSkinDataName = 'resizebutton'
    SkinData = bsSkinData1
    CtrlSkinData = bsSkinData1
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    Title = 'Salvar Projeto SIGGeo 2.0'
    Filter = 'Projeto SIGGeo 2.0|*.sig'
    FilterIndex = 1
    Left = 424
    Top = 104
  end
  object openProjeto: TbsSkinOpenDialog
    DialogWidth = 0
    DialogHeight = 0
    DialogMinWidth = 0
    DialogMinHeight = 0
    CheckFileExists = True
    MultiSelection = False
    AlphaBlend = False
    AlphaBlendValue = 225
    AlphaBlendAnimation = False
    CtrlAlphaBlend = False
    CtrlAlphaBlendValue = 225
    CtrlAlphaBlendAnimation = False
    LVHeaderSkinDataName = 'resizebutton'
    SkinData = bsSkinData1
    CtrlSkinData = bsSkinData1
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    Title = 'Abrir Projeto SIGGeo 2.0'
    Filter = 'Projeto SIGGeo 2.0|*.sig'
    FilterIndex = 1
    Left = 456
    Top = 104
  end
  object TimerAbreProjeto: TTimer
    Enabled = False
    Interval = 400
    OnTimer = TimerAbreProjetoTimer
    Left = 360
    Top = 73
  end
  object TimerPosEscala: TTimer
    Enabled = False
    Interval = 100
    OnTimer = TimerPosEscalaTimer
    Left = 360
    Top = 104
  end
  object pmGraficos: TbsSkinPopupMenu
    Images = ImageList2
    SkinData = bsSkinData1
    Left = 328
    Top = 168
    object ConfiguraodeTexto1: TMenuItem
      Caption = 'Configura'#231#227'o de Texto'
      ImageIndex = 23
    end
    object ConfiguraodePontos1: TMenuItem
      Caption = 'Configura'#231#227'o de Pontos'
      ImageIndex = 25
      OnClick = ConfiguraodePontos1Click
    end
    object ConfiguraodeLinhas1: TMenuItem
      Caption = 'Configura'#231#227'o de Linhas'
      ImageIndex = 28
      OnClick = ConfiguraodeLinhas1Click
    end
    object ConfiguraodeCirculos1: TMenuItem
      Caption = 'Configura'#231#227'o de Circulos'
      ImageIndex = 29
      OnClick = ConfiguraodeCirculos1Click
    end
    object ConfiguraodeRetngulos1: TMenuItem
      Caption = 'Configura'#231#227'o de Ret'#226'ngulos'
      ImageIndex = 26
      OnClick = ConfiguraodeRetngulos1Click
    end
    object ConfiguraodePoligonos1: TMenuItem
      Caption = 'Configura'#231#227'o de Poligonos'
      ImageIndex = 27
      OnClick = ConfiguraodePoligonos1Click
    end
  end
  object bsFontDialog1: TbsSkinFontDialog
    AlphaBlend = False
    AlphaBlendValue = 200
    AlphaBlendAnimation = False
    SkinData = bsSkinData1
    CtrlSkinData = bsSkinData1
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clBlue
    DefaultFont.Height = -19
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsItalic]
    Title = 'Font'
    ShowSizeEdit = True
    ShowHeightEdit = True
    Left = 265
    Top = 169
  end
  object RzLauncher1: TRzLauncher
    Action = 'Open'
    Timeout = -1
    Left = 424
    Top = 200
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [fdEffects, fdForceFontExist]
    Left = 264
    Top = 136
  end
  object ColorDialog1: TbsSkinColorDialog
    Color = clBlack
    Caption = 'Escolha a Cor'
    AlphaBlend = False
    AlphaBlendValue = 200
    AlphaBlendAnimation = False
    SkinData = bsSkinData1
    CtrlSkinData = bsSkinData1
    ButtonSkinDataName = 'button'
    LabelSkinDataName = 'stdlabel'
    EditSkinDataName = 'edit'
    DefaultLabelFont.Charset = DEFAULT_CHARSET
    DefaultLabelFont.Color = clWindowText
    DefaultLabelFont.Height = 14
    DefaultLabelFont.Name = 'Arial'
    DefaultLabelFont.Style = []
    DefaultButtonFont.Charset = DEFAULT_CHARSET
    DefaultButtonFont.Color = clWindowText
    DefaultButtonFont.Height = 14
    DefaultButtonFont.Name = 'Arial'
    DefaultButtonFont.Style = []
    DefaultEditFont.Charset = DEFAULT_CHARSET
    DefaultEditFont.Color = clWindowText
    DefaultEditFont.Height = 14
    DefaultEditFont.Name = 'Arial'
    DefaultEditFont.Style = []
    UseSkinFont = True
    Left = 456
    Top = 200
  end
  object ControlSizer1: TControlSizer
    Left = 456
    Top = 136
  end
  object popLegenda: TbsSkinPopupMenu
    Left = 456
    Top = 168
    object MoverLegenda1: TMenuItem
      Caption = 'Mover Legenda'
      OnClick = MoverLegenda1Click
    end
    object RedimensionarLegenda1: TMenuItem
      Caption = 'Redimensionar Legenda'
      OnClick = RedimensionarLegenda1Click
    end
  end
  object ppMapa: TbsSkinPopupMenu
    Left = 392
    Top = 168
    object MenuItem1: TMenuItem
      Caption = 'Mover Mapa'
      OnClick = MenuItem1Click
    end
    object MenuItem2: TMenuItem
      Caption = 'Redimensionar Mapa'
      OnClick = MenuItem2Click
    end
  end
  object OraIdent1: TOraSession
    ConnectPrompt = False
    Options.Net = True
    Username = 'setor5'
    Password = 'mudar123'
    Server = '192.168.10.41:1521:dbgeo'
    Left = 544
    Top = 328
  end
  object OraQueryIdent1: TOraQuery
    Session = OraIdent1
    SQL.Strings = (
      'select * from CADTESTE')
    Left = 576
    Top = 328
  end
  object ppConexao: TbsSkinPopupMenu
    SkinData = bsSkinData1
    Left = 360
    Top = 168
    object MenuItem3: TMenuItem
      Caption = 'Adicionar Camada Via SDE'
      Hint = 
        'Realiza Uma Conex'#227'o Utilizando o Servidor SDE. '#201' Mais Lento, por' +
        #233'm Dispensa a Instala'#231#227'o do Oracle Client No Computador'
      OnClick = MenuItem3Click
    end
    object MenuItem4: TMenuItem
      Caption = 'Adicionar Camada Via Conex'#227'o Direta'
      Hint = 
        'Realiza a Conex'#227'o Diretamente. A Conex'#227'o '#233' Mais Rapida e Estavel' +
        ', Por'#233'm Requer o Oracle Client Instalado'
      OnClick = MenuItem4Click
    end
  end
  object VerificarAtualizacao: TTimer
    Interval = 2000
    OnTimer = VerificarAtualizacaoTimer
    Left = 360
    Top = 136
  end
  object RzLauncher2: TRzLauncher
    Action = 'Open'
    FileName = 
      'C:\SIGGeo\SIGGeo 2.0\profiles\Atualizacao_Sistema\Atualiza_Siste' +
      'ma.exe'
    Timeout = -1
    Left = 296
    Top = 136
  end
  object OD: TbsOpenSkinDialog
    DialogWidth = 0
    DialogHeight = 0
    DialogMinWidth = 0
    DialogMinHeight = 0
    CompressedFilterIndex = 1
    UnCompressedFilterIndex = 2
    AlphaBlend = False
    AlphaBlendValue = 200
    AlphaBlendAnimation = False
    CtrlAlphaBlend = False
    CtrlAlphaBlendValue = 225
    CtrlAlphaBlendAnimation = False
    LVHeaderSkinDataName = 'resizebutton'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    Title = 'Open skin'
    Filter = 'Compressed skin (*.skn)|*.skn|UnCompressed skin (*.ini)|*.ini'
    FilterIndex = 1
    Left = 328
    Top = 136
  end
  object ppEscala: TbsSkinPopupMenu
    Left = 424
    Top = 168
    object MenuItem5: TMenuItem
      Caption = 'Mover Escala'
      OnClick = MenuItem5Click
    end
    object MenuItem6: TMenuItem
      Caption = 'Redimensionar Escala'
      OnClick = MenuItem6Click
    end
  end
  object PrintDialog1: TPrintDialog
    PrintToFile = True
    Left = 296
    Top = 168
  end
  object PrinterSetupDialog1: TPrinterSetupDialog
    Left = 392
    Top = 136
  end
  object ColorDialog2: TColorDialog
    Left = 424
    Top = 136
  end
  object OraSessionAnaliseProxEnt: TOraSession
    ConnectPrompt = False
    Options.Net = True
    Username = 'setor5'
    Password = 'mudar123'
    Server = '192.168.10.41:1521:dbgeo'
    Left = 272
    Top = 296
  end
  object qyAnaliseProxEntrada: TOraQuery
    Session = OraSessionAnaliseProxEnt
    SQL.Strings = (
      'select * from CADTESTE')
    Left = 304
    Top = 296
  end
  object OraSessionProxAnalise: TOraSession
    ConnectPrompt = False
    Options.Net = True
    Username = 'geo_sde'
    Password = 'geo'
    Server = '192.168.1.173:1521:DBGEO'
    Left = 272
    Top = 328
  end
  object qyAnaliseSaida: TOraQuery
    Session = OraSessionProxAnalise
    SQL.Strings = (
      'select * from CHAMADA')
    UpdateObject = upAnaliseSaida
    Left = 304
    Top = 328
  end
  object upAnaliseSaida: TOraUpdateSQL
    RefreshSQL.Strings = (
      'SELECT * FROM CHAMADA'
      'WHERE'
      '  OBJECTID = :OBJECTID')
    ModifySQL.Strings = (
      'UPDATE CHAMADA'
      'SET'
      '  OBJECTID = :OBJECTID,'
      '  GEO_ID = :GEO_ID,'
      '  ID = :ID,'
      '  DISTANCIA = :DISTANCIA'
      'WHERE'
      '  OBJECTID = :OLD_OBJECTID')
    InsertSQL.Strings = (
      'INSERT INTO CHAMADA'
      '  (OBJECTID, GEO_ID, ID, DISTANCIA)'
      'VALUES'
      '  (:OBJECTID, :GEO_ID, :ID, :DISTANCIA)')
    DeleteSQL.Strings = (
      'DELETE FROM CHAMADA'
      'WHERE'
      '  OBJECTID = :OBJECTID')
    Left = 336
    Top = 328
  end
  object pmTabelas: TbsSkinPopupMenu
    Images = ImageList2
    SkinData = bsSkinData1
    Left = 392
    Top = 200
    object MenuItem7: TMenuItem
      Caption = 'Tabela: Shapes Selecionados'
      Hint = 'Abrir Tabela dos Shapes Selecionados'
      ImageIndex = 43
      OnClick = MenuItem7Click
    end
  end
  object RzLauncher3: TRzLauncher
    Action = 'Open'
    FileName = 
      'C:\SIGGeo\SIGGeo 2.0\profiles\Atualizacao_Shapes\P_Atualiza_Shap' +
      'es.exe'
    Timeout = -1
    Left = 360
    Top = 200
  end
  object SaveDialog2: TbsSkinSaveDialog
    DialogWidth = 0
    DialogHeight = 0
    DialogMinWidth = 0
    DialogMinHeight = 0
    CheckFileExists = True
    MultiSelection = False
    AlphaBlend = False
    AlphaBlendValue = 225
    AlphaBlendAnimation = False
    CtrlAlphaBlend = False
    CtrlAlphaBlendValue = 225
    CtrlAlphaBlendAnimation = False
    LVHeaderSkinDataName = 'resizebutton'
    SkinData = bsSkinData1
    CtrlSkinData = bsSkinData1
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    Title = 'Salvar Shape'
    InitialDir = 'C:\SIGGeo\Camadas'
    Filter = 'Shapes|*.shp'
    FilterIndex = 1
    Left = 328
    Top = 200
  end
  object ppGraficos: TbsSkinPopupMenu
    Images = ImageList2
    SkinData = bsSkinData1
    Left = 296
    Top = 201
    object ppGraftext: TMenuItem
      AutoCheck = True
      Caption = 'Texto'
      ImageIndex = 23
      RadioItem = True
      OnClick = ppGraftextClick
    end
    object ppGrafponto: TMenuItem
      AutoCheck = True
      Caption = 'Ponto'
      ImageIndex = 25
      RadioItem = True
      OnClick = ppGrafpontoClick
    end
    object ppGrafLine: TMenuItem
      AutoCheck = True
      Caption = 'Linha'
      ImageIndex = 28
      RadioItem = True
      OnClick = ppGrafLineClick
    end
    object ppGrafCirc: TMenuItem
      AutoCheck = True
      Caption = 'C'#237'rculo'
      ImageIndex = 29
      RadioItem = True
      OnClick = ppGrafCircClick
    end
    object ppGrafRet: TMenuItem
      AutoCheck = True
      Caption = 'Ret'#226'ngulo'
      ImageIndex = 26
      RadioItem = True
      OnClick = ppGrafRetClick
    end
    object ppGrafpoli: TMenuItem
      AutoCheck = True
      Caption = 'Pol'#237'gono'
      ImageIndex = 27
      RadioItem = True
      OnClick = ppGrafpoliClick
    end
  end
  object SaveDialog3: TbsSkinSaveDialog
    DialogWidth = 0
    DialogHeight = 0
    DialogMinWidth = 0
    DialogMinHeight = 0
    CheckFileExists = True
    MultiSelection = False
    AlphaBlend = False
    AlphaBlendValue = 225
    AlphaBlendAnimation = False
    CtrlAlphaBlend = False
    CtrlAlphaBlendValue = 225
    CtrlAlphaBlendAnimation = False
    LVHeaderSkinDataName = 'resizebutton'
    SkinData = bsSkinData1
    CtrlSkinData = bsSkinData1
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    Title = 'Save file'
    Filter = 'All files|*.*'
    FilterIndex = 1
    Left = 264
    Top = 200
  end
end
