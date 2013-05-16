program SIGGeo;

uses
  Forms,
  Windows,
  Dialogs,
  U_Menu in 'U_Menu.pas' {frmMenu},
  U_DMGeo in 'U_DMGeo.pas' {dmGeo: TDataModule},
  U_CAD in 'U_CAD.pas' {frmCAD},
  U_SDE in 'U_SDE.pas' {frmSDE},
  U_Identificador in 'U_Identificador.pas' {frmIdentificador},
  U_frameClasses in 'U_frameClasses.pas' {frmframeClasses: TFrame},
  U_frameElevacao in 'U_frameElevacao.pas' {frmElevacao: TFrame},
  U_FrameLegenda in 'U_FrameLegenda.pas' {frmFrameLegenda: TFrame},
  U_Legenda in 'U_Legenda.pas' {frmLegenda},
  U_ConfigLeg in 'U_ConfigLeg.pas' {frmConfigLeg},
  U_LegendaECW in 'U_LegendaECW.pas' {frmLegendaECW},
  U_ConfigProj in 'U_ConfigProj.pas' {frmConfigProj},
  U_LoginProj in 'U_LoginProj.pas' {frmLoginProj},
  U_GrafPoli in 'U_GrafPoli.pas' {frmGrafPoli},
  U_LocalizarSimples in 'U_LocalizarSimples.pas' {frmLocalizarSimples},
  U_ProjError in 'U_ProjError.pas' {frmProjError},
  U_GrafLinha in 'U_GrafLinha.pas' {frmGrafLinha},
  U_GrafRetangulo in 'U_GrafRetangulo.pas' {frmGrafRetangulo},
  U_Query in 'U_Query.pas' {frmQuery},
  U_PropView in 'U_PropView.pas' {frmPropView},
  U_GrafCirculo in 'U_GrafCirculo.pas' {frmGrafCirculo},
  U_GrafPonto in 'U_GrafPonto.pas' {frmGrafPonto},
  U_GrafInsCoordsUTM in 'U_GrafInsCoordsUTM.pas' {frmGrafInsCoordUTM},
  U_GrafTexto in 'U_GrafTexto.pas' {frmGrafTexto},
  U_A3 in 'U_A3.pas' {frmA3},
  U_A3_Legenda in 'U_A3_Legenda.pas' {frmA3_leg},
  U_A3_Retrato in 'U_A3_Retrato.pas' {frmA3Ret_SL},
  U_A3_Retrato_Leg in 'U_A3_Retrato_Leg.pas' {frmA3Retrato},
  U_A4_Legenda in 'U_A4_Legenda.pas' {frmA4_leg},
  U_A4_Retrato in 'U_A4_Retrato.pas' {frmA4Retrato},
  U_A4_Retrato_Leg in 'U_A4_Retrato_Leg.pas' {frmA4RetLeg},
  U_Princ in 'U_Princ.pas' {frmLayout},
  U_Menu_ly in 'U_Menu_ly.pas' {frmA4},
  U_Print in 'U_Print.pas' {frmPrint},
  U_NovaConSDE in 'U_NovaConSDE.pas' {frmNovaConexaoSDE},
  U_Sobre in 'U_Sobre.pas' {frmSobre},
  U_Splash in 'U_Splash.pas' {frmSplash},
  U_Join in 'U_Join.pas' {frmJoin},
  U_IdentMaisInformacoes in 'U_IdentMaisInformacoes.pas' {frmIdentMais},
  U_ConfigurarMaisInf in 'U_ConfigurarMaisInf.pas' {frmConfigIDentificador},
  U_DirectConnect in 'U_DirectConnect.pas' {frmDirectConnect},
  U_NovaConexaoDireta in 'U_NovaConexaoDireta.pas' {frmNovaConexaoDireta},
  U_Exportar in 'U_Exportar.pas' {frmExportar},
  U_Relimp in 'U_Relimp.pas' {frmRelImp},
  U_RelSimples in 'U_RelSimples.pas' {frmRelSimples},
  U_NovoJoin in 'U_NovoJoin.pas' {frmNovoJoin},
  U_NovaIdentMais in 'U_NovaIdentMais.pas' {frmAdicionarNova1N},
  U_PreviewRel in 'U_PreviewRel.pas' {frmPreviewRel},
  U_Relimp2 in 'U_Relimp2.pas' {frmRelimp2},
  U_Relimp3 in 'U_Relimp3.pas' {frmRelimp3},
  U_RemoverJoin in 'U_RemoverJoin.pas' {frmRemoverJoins},
  U_RemoverIdent1N in 'U_RemoverIdent1N.pas' {frmRemoverIDent1N},
  U_analiseProximidade in 'U_analiseProximidade.pas' {frmAnaliseProximidade},
  U_ConexaoAnaliseOrigem in 'U_ConexaoAnaliseOrigem.pas' {frmConexaoAnaliseOrigem},
  U_ConexaoAnaliseSaida in 'U_ConexaoAnaliseSaida.pas' {frmConexaoAnaliseSaida},
  U_TabelaSelecionados in 'U_TabelaSelecionados.pas' {frmTabelaSelecionados},
  U_GrafInsCoordLatLong in 'U_GrafInsCoordLatLong.pas' {frmGrafInsCoordLatLong},
  U_ConfigSistema in 'U_ConfigSistema.pas' {frmConfigSistema},
  U_CriarCamada in 'U_CriarCamada.pas' {frmCriarCamada};

{$R *.res}

Var HprevHist : HWND;

{begin
  Application.Initialize;
  HprevHist := FindWindow(Nil, PChar('TheProgrammer'));
  if HprevHist = 0 then begin
  Application.Title := 'TheProgrammer';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
  end else
  MessageDlg('Você não pode executar outra cópia do aplicativo', mtInformation, [mbOK], 0);
}
begin
  Application.Initialize;
  HprevHist := FindWindow(Nil, PChar('SIGGeo 2.0 - EPD/VR'));
  if HprevHist = 0 then
     begin
        frmSplash:=tfrmSplash.create(application);
        frmSplash.show;
        frmSplash.refresh;
        Application.Title := 'SIGGeo 2.0 - EPD/VR';
        Application.CreateForm(TdmGeo, dmGeo);
  Application.CreateForm(TfrmMenu, frmMenu);
  Application.Run;
     end
       else
          showmessage('Já Existe Uma Cópia do SIGGeo Rodando No Momento!');


end.
