object frmRelimp3: TfrmRelimp3
  Left = 223
  Top = 204
  Width = 696
  Height = 480
  HorzScrollBar.Position = 120
  Caption = 'frmRelimp3'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object qrcProd: TQuickRep
    Tag = 1
    Left = -122
    Top = 2
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE'
      'QRSTRINGSBAND1')
    Functions.DATA = (
      '0'
      '0'
      #39#39
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = A4
    Page.Values = (
      150.000000000000000000
      2970.000000000000000000
      100.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      150.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.OutputBin = Auto
    PrintIfEmpty = True
    ReportTitle = 'Layout'
    SnapToGrid = True
    Units = MM
    Zoom = 100
    object QRBand1: TQRBand
      Left = 38
      Top = 38
      Width = 700
      Height = 67
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        177.270833333333300000
        1852.083333333333000000)
      BandType = rbPageHeader
      object QRLabel4: TQRLabel
        Left = 86
        Top = 5
        Width = 63
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          227.541666666666700000
          13.229166666666670000
          166.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabel4'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel5: TQRLabel
        Left = 86
        Top = 22
        Width = 63
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          227.541666666666700000
          58.208333333333330000
          166.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabel5'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel6: TQRLabel
        Left = 86
        Top = 39
        Width = 63
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          227.541666666666700000
          103.187500000000000000
          166.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabel6'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRImage2: TQRImage
        Left = 5
        Top = 3
        Width = 69
        Height = 52
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          137.583333333333300000
          13.229166666666670000
          7.937500000000000000
          182.562500000000000000)
        Picture.Data = {
          0A544A504547496D6167655F120000FFD8FFE000104A46494600010100012C01
          2C0000FFDB0043000503040404030504040405050506070C08070707070F0B0B
          090C110F1212110F111113161C1713141A1511111821181A1D1D1F1F1F131722
          24221E241C1E1F1EFFDB0043010505050706070E08080E1E1411141E1E1E1E1E
          1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E
          1E1E1E1E1E1E1E1E1E1E1E1E1EFFC20011080056006103012200021101031101
          FFC4001B00000202030100000000000000000000000506000402030701FFC400
          190100030101010000000000000000000000020304010005FFDA000C03010002
          100310000001ECB22F8E88308446565B182ABC5C419B9FE79DD6977C056F754B
          2A8D750498C31D3CE1BC3A1D4923A1A2012A536DE64F9D837ACBFEF5F7857749
          DE29F416CDC6699CA52155FA12C06AC27350153B484645752B71404CF9D55B57
          991C644CD37062FC9E4666546F6ACEE6E406302CB9F2BF554D30596FAED7DC44
          434A7813D1D105D99249BCB691D028492724E9832B79D3E63480BB69B1BF3C7B
          5B78FBE6714C15EF1B7E834E4D92BB3D926EC0F20887D324737BBA4CD266E4B2
          8F7C90CB292777FFC40025100002030002010401050000000000000003040102
          0500061011121314150721223435FFDA0008010100010502F0CEC92191BD7BE7
          7E5CFF0069ED3251BAEB9387D5B0EC9BD62277D76ABC58D5617F2F36483FD7AD
          6738B65B9AF6A31AB24B44ADEDA2B158B1744E760348F72F9A5FAB1E182D0017
          E4F78F537AEE386595D2B6C67B31B3A71C9DAD49E265D5D1631D96EE71FCB5A8
          7E40C20793879AF78E022B195229ADBBAD2A35FF00503FBFE3A17FBB8B71C69F
          B4D528C35BA39179F9B9A897DBA5EB2058E63468F6EF7FC3DEA296D459001B8C
          679145BA78217EC39E3B93719699B1C5EF9AE3A770F9D8560952CC599EE349FC
          5F75B5C678D2B01559D2B0BF4A2159D0EBF4233662475E65AD337E7EFE342B6B
          23314647090F57AEE41C2DA7A1D6F4D5223D775592691418F9B9A94E3F5A0AE1
          82E2526AAF92DFE3108F525F25A1539BF9F99ABCADBB1A1CB17B33DCC2CECBCA
          9D2715B2CDB71F064B436D2F0D9F53ED32D39F68AD36324659641F54A1E7B7F8
          5EB682A11728E99A7B718AB476152303A86FB41B7AF34E342F3186B7C265D856
          17F4AC387D42C56ACD6E79316D9377D2031242C2F4B9A0384B7D74D67D667D39
          3CF5F0D672479262F2729B8E7E2DDE0F1ADC5F31214C7889F5F1FFC400211100
          0104020300030100000000000000000100020311102104123113225141FFDA00
          08010301013F016B4B8D05D2F4152A5D3AFA9CD2D3470D3D1B69F3D8D23864D5
          EA73BBB6F32065690AFEA34981B48FA6B24EAB2D39E444F90534A8A5F8B4F087
          26276AD3B911B7D2A4E47C9A605C68A48C7DCE4807D4FE3C7F89B047F88340F3
          3FFFC40026110002020102060105000000000000000001020003110410051221
          223142321341516171FFDA0008010201013F01660A3262B303927A4BAE753C99
          CC4B9C1E4063166F8988DCC33B3F7362575F5EB0010812CAF3E228E46FEECC3E
          E2564932F1691D929FAA3E71F398A3F3BA0EBBBFEA0F1B6A2A7B170A626B8E9C
          F2DC8445E21A76F68DC434CBEF1F889B8E2842669AAB10779DC807CCB34541F5
          95E874E3D2050BD06FFFC4003C10000201020304050B02040700000000000102
          0300110412211322314132425161A1051014202352718191B1C172E1061583D1
          3334436273A2F0FFDA0008010100063F02F3148D5426D3282DCFBEA59D230D2C
          77052A3DB32C5186B359346EDF0A91229E46CE4DB5B596808E47D9C9AAFB4275
          AC3A452E7609ED018CEF1D3E952626745455E163C6B3B2A2AE5B95CB7F1BD24C
          9C1C5FD4F46834602EEE470A2827E8375F4B7C34A3E89367DA6F3A38BEBDBDD4
          ECEAD13322DFB98731579537AD6DD516A48551D9D3A2D9071A40E2F248C0365E
          4BD828E166CB146DC0AF3EEBD095F1409B7BBAFE93FDAA1C313ECCEEAFFB4F9D
          A57E0B457790C873CB229D557FF5AA34CE1883BC72F7544D8790A48CDED0AF6F
          652FA54C448EB986B7AD316E3E42B5C5B9F90AD8C129792D7E42B11179424775
          8CECDB4E8FD3BEAEE152EA3ABA034F1C8F24A84EE4B6EB7315BE2D22E8E3BEB8
          5450F69CE7E03F7B54F8A76CF26206CEC3ABC82D2E6D02DEE031F97DAA1453C6
          52DC7BBF6AC37FC3F9F3FF0049ABCB49275E523FEC4D3A90A541D0EB7EEE753E
          10B947C3B921FB3AC0F8D6FE8648C1B778E3F71E61964C8E05BB8D2240AAA167
          0E11F80E447C8D28530A997316E2780FDEA3CE549DAF547CFF003585123945D8
          F102FCE8E1E2713E63B8C54A11DFDF5E8CD1C48E7A53B9F01E15904F1CBEC9B5
          435E51319504621B8F0EB50C3CCD090416B8522C790E3AF3AC599DD7DA461094
          D37799F1ADACA0271C918EA027CE75B67235F75FAA7F15BCBADF2DBBFB3C2B0D
          88B68F331F0B7E2B03E508082AD1E50D6BD0CD899A59C8CCB67DD5BF6D6C7D2A
          58A70BA367DD2076F7D34B22C79608CDDC2D89BF6D795F1908B9DA6751DBBD9A
          D4B2B15DD605BE6180FBD59CB1B10CF7EDEA8FCFA93AA8BB18CDBE94988BF12B
          B63F0BE53E352E195B8BB18CFBA6FA53FF000FF95BD9CA86D1B1A212133A7268
          E80F4730AF36934AFE4DE4E3B5C5CDA48C38D3C7C272859BF51ADAC7764420DA
          FD27B6E8F95E998B66CF21607D467B13945EC2A59324C223C0451937B9E1C2A5
          324524459B864637F0ACE4CB16207091626F1D2B6787C41C444385E327EE2B67
          2CDE8E9CED191F617A13CB2B4B883A6D1D0803E15BAF99C1BAD96FAD1955A442
          2E32329B0BF306D492451B46BC2CC3CED16170B1E41FEA39A30E25E62EA37ACD
          BABF4ADA3C072BF09236B7D6A2915D2460BA8E1A91AD2AB2B823B471A16BEA24
          FC53DC1FF14DBE94B1C003E20480DAD7CA37B8F6566C462EDDD18A30450B3B46
          D6691DB301F0A8B6724C188E909377FB5209A3871087894366AE0691304C9183
          D273CA9D4BC8F2329DF66E7DB6ACB3E1EF18D33C7A8A0F84C43C5DB91B77E948
          BB7858039B58ED5132E1A2728C7759AEA6FC6865C2246A3A2808029A046C3AE6
          25F36525AB362F10F22E9A13957E9593070175F7BA2B4AB2B3ED39B2391E1413
          6E25C272CFD21EAE778407F79374F857B1C6CC9FAC06AD3130B7C6323F35FE66
          05FE993F9ABCD8D91BF4285A0DB2DA30EB49BDEAFF00FFC40026100100020201
          0304020301000000000000011121003141516171108191A1B1D120C1F0E1FFDA
          0008010100013F21F414F214D39DBABAE721EAA4F27FCBC4A35930EC54A56959
          B3480CB9D1293AE026E4B0980F2931DA327C92C902DC4D26F578E59D94C081E6
          3AC63D026D09AAE85EE3350D4FF0710172025A03AE4380C12CB659B09D5D1AC8
          E035613A73A39070C32B7A1B4891BEF8D5EA8D8D39DF5710FEED8092DC4D5EB1
          A701CA129F36AFAE0195A0AE4595F063F0557778088F2E272C8F78472478DFA4
          B8E0D535B7A077C87DC98281F811F79448605C36DDE480B46888CCFC118C3350
          857583FC27E8C063CA7E8CE2FA73489CFC65A984C8766C6E06225E9DDB13CFDE
          047DA496B3474D9EE71921FF00A483B397843B5C505B4A5C09313DDB70683020
          CD31DEED3937095DA2491F2B3FDBDDEBFE2F189840246D8547B0B92C94382E4F
          909F1815DED6CBDC1107C394F087DFE1FD1E92C6683120F0E4D7B2853A1EA8F8
          C8063260600AA86F7CCE19E511284D3A2B97BC6D556E30C06F690D3435CE4212
          CFCC8169D51D72F03DC8D997C038C894FF00791609DB39922429F9309AA87DA0
          5815B887C64B3C6E2490DF5D649E96C0C4E93F26DED8618215A241FC962A63E1
          9461EB05405D9BECE5FCB4B2A40EA6FCE190CC242F3F21EC618040FA59B1BD38
          B6D075C17D15EF83085526B2184A7B480F8485DD3D3C0F481D04F56518BC41C4
          191E1EC3DCC06AC80E86FF009D1C2EDD72A268F27D99DDA2D49DCD98A9EC281E
          3792EEF819934FBBA0E32740903A5007D189A22C97F400D7C18D7A5E73A27DD1
          7DFF00812615812B1D3060E187822AD2479EFE703AD78200DCECF55C0C204339
          EC36C1FC1D27CC64C31D87821589D8C3DC64DA1A14E859D2D9C56DD4262F75AE
          6CF7C28548C488AAEA7ACAF0888435BDFB465D98211CD10A3E6F2A7E839E12FD
          E4A3324DF4094DF6325C32D454E8E9F6724C44828EF86C30A24D91C5371141B5
          388A26F2AB759423CB5F588E7C861BDD01F78262E9712EF330F39C2BF30F3A3E
          B2584A102BAFB320EBC94D8E0A5C174940AFB9B31ACE25171BDEBF586F2EDE30
          3C8F7E9904C305E646FA60B681205C4C6D8704497EA5BB641F8CDC0035DF0AF9
          CA68094847BF3ED380865314B2AC5A2098C893E41D38EA17FAF428C244E4E294
          AE6FB7014F1000C7D3F78F1D9953F2C11BEF047E18C689C7EF5CE852924789D7
          B6402020C1AF51FFDA000C03010002000300000010EFF3B9FF008F3C83781B1F
          C73C857B85F3E37D64D77CAA5794B0338006183EF3CFFFC40022110100020103
          0403010000000000000000010011211031415181B1C16171F091FFDA00080103
          01013F10E404BE064811CE225CCE872EBA0BAB71028B8C4AE60D3895EB3964B7
          3C683683B4134F31DA39C8C6BBD91870353C12E58400A7662DBA2160FDD78DE3
          67CEEFEFE4C03394F05C9A9FBBC5162BF3E9F529D0DA1737358EDEF09A15AFFF
          C400231101000201030305010000000000000000010011211031514171B16181
          91C1F0A1FFDA0008010201013F108037AE5FB711604B7BDBA62ABFB13232D0AA
          BBE1CF4ADFAC38364CBCB0CC681E29994F14AD611C641968709501B796940C02
          DF10C0F3F7CB8BC7782F10BD6BCE6FE06320388E83BB4768994A471297781518
          140D19307BD78DE37F50169FBB42EC3EF8F300543DB3E21873CEC7EEF11645F5
          BF3F52B43685933698CE042A9A35FFC400241001010003010003000300030101
          00000001110021314151617110819120A1B1F0F1FFDA0008010100013F10C585
          705FC998381A0902786EEF1B1521A337CAF44177ABEE04170C24DE62541551F3
          01283EEA6861F61AF34D70A2E8E71119B4556D3B9ED0AC43CA00A506C2E22951
          50EC27855F145E66B52F760221E7E29A64DE351774D94B3F4E7F5FF0176412B7
          E72E2EF4134DCBB76AE0447E08AA41EE2E069940159652ED466BDCD6EC00B017
          00911E041B9E98B6725926E0DBE06F2BA1C780668D431AE2E060D19EF6B50090
          7F40C8B6D72B9B6F6D02A8BA3E323BF0602820723AAA2E34250AE91208A3A901
          6A2856E5D5CFACC5785A055740F52807AB84432A31B3273E221768E42652E09D
          FAD59A38FC6B1D83922431268601D87EE10140EEE4F10E7FEFCE6B99F01C4CBB
          E1061B22A86C65D0E347D98B3563496878085D75BADB73291B21402453E1BDF3
          3A56327A6CA827E0252E44D0C0B40034F41A7ECE8E7E9869910781B1FDAFF0FC
          61E308C8393D12FE8AA6832DCB0F6096218F81B21C70E77683A94B5A0BF03107
          E6CBF7015C0B7F1FFA6596871C2FD08F9ED6B730024ED610EC311D09D57CE594
          A952F59F40BD03DCBE22DE42A7FD3F88BA13923C4C467A2223FE624299D2B2D0
          9227A89CC4D2E7560C50007A614D19A12021A6AC078EF993841B9E576297183F
          87A922277E93601D571D4F38F1D9648027AEE385E88D05E2A847EBFD99B5F988
          16D08BB1AA772ECA428D6A082885FC328003B43948D523B5C86C7F8F12AEC013
          8233B9F71FC3310E0CBCDBE083E4F8E36DD3AAD4A78A23C5321F2D1E8469F297
          FDE550160228025551FAFAC21775CD4F512E384113B648C4A5226BA412501B73
          50F5810203418D7CE16FCD69933ED2E1497E8D8AB0B0433C2B89B44DBC289A22
          3993CD67FF0047F84466CF5603EECC02A78ACF3E92D1F23C7068B5F9A83D06BA
          C5036DF13695F659E24FDA4C0FF527A9F5FE2E2B7C9FA69F47E8324362601387
          0BE836EFA2670D6D3A5EA31F94FBC30164E9AB9C089D0A5C1A534550D36E014F
          01FF00049D2D420B01B5668CA35F34FA100154C38ED0A8A23919D91E4AA7C060
          338A501CD01F8E278E53F48D38FA8C7C0CC2B5A28A7BB55F839A6719B268202C
          76B5CBF449D68F145815E2CDCC300DB578730D228E136CADDD321AAB90349FF4
          EBF9D803515151364588362ACD24606DF2108549B9509F38D93711478E085E19
          882801901A74B697F631235889806C2C86A221575BCBB62BB3700C8B8300760D
          6CA3FE621F1D3592A01586CE9071E254D5AF843FB21C6CC29297B627936302DB
          2076CA5854589BFDC8C4E621A12AEC6D2189AEE7FF00A99A5D9255811F615D75
          035BC0361328E16850DD8BAEE2D2E9EE6FD3F3A424B83323468134AD745DB237
          F0BCA9146B6E0D99C310B825203A0D78B8F6FD77A8D9AF4B5DB31801E6907610
          0257C6443F0F465AC56EEEB047B8938236487A158B827F38F50B414A8170135A
          A9CE3C17557AF1371F7FEE19A97034F5894D9DC097F162FEB0BFDDC992248956
          9B3E4C0B3A2222402EBE2C0DE53344D0EF00C50201A3695F99F7067ECDFDEAA7
          F4180E70D0040CA561A80FF1FFD9}
        Stretch = True
      end
    end
    object QRBand2: TQRBand
      Left = 38
      Top = 105
      Width = 700
      Height = 48
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        127.000000000000000000
        1852.083333333333000000)
      BandType = rbTitle
      object QRLabel1: TQRLabel
        Left = 7
        Top = 5
        Width = 685
        Height = 36
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          95.250000000000000000
          18.520833333333330000
          13.229166666666670000
          1812.395833333333000000)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = False
        AutoStretch = False
        Caption = '              '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 20
      end
    end
    object QRStringsBand1: TQRStringsBand
      Left = 38
      Top = 153
      Width = 700
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = QRStringsBand1BeforePrint
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        55.562500000000000000
        1852.083333333333000000)
      Master = qrcProd
      PrintBefore = False
      object QRLabel2: TQRLabel
        Left = 8
        Top = 2
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          5.291666666666667000
          171.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabel2'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
    end
    object QRSysData1: TQRSysData
      Left = 680
      Top = 1016
      Width = 38
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1799.166666666667000000
        2688.166666666667000000
        100.541666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      Color = clWhite
      Data = qrsDate
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      FontSize = 10
    end
    object QRSysData2: TQRSysData
      Left = 680
      Top = 1040
      Width = 49
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1799.166666666667000000
        2751.666666666667000000
        129.645833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      Color = clWhite
      Data = qrsPageNumber
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      FontSize = 10
    end
  end
end
