unit uConstantes;

//jcf:format=off

interface

const                                                                        
  sNOME_SERVIDOR_PG      = 'pg5Servidor.exe';
  sNOME_SERVIDOR_SG      = 'sg5Servidor.exe';
  sNOME_SERVIDOR_PJ      = 'spjServidor.exe';
  sNOME_APLICACAO_PG     = 'sajpg5app.exe';
  sNOME_APLICACAO_SG     = 'sajsg5app.exe';
  sNOME_APLICACAO_PJ     = 'spjClienteApp';
  sNOME_ARQUIVO_CONFIG   = 'spCfg.ini';
  sPATH_VISUALIZA_DTS    = 'C:\PluginDB1\Tools\VisualizaDTS\VisualizaDTS.exe';
  sPATH_SP_MONITOR       = 'C:\PluginDB1\Tools\spMonitor\spMonitor.exe';
  sPATH_SP_MONITOR3      = 'C:\PluginDB1\Tools\spMonitor3\spMonitor3.exe';
  sPATH_SELECT_SQL       = 'C:\PluginDB1\Tools\SelectSQL\SelectSQL.exe';
  sPATH_WINSPY           = 'C:\PluginDB1\Tools\WinSpy\WinSpy.exe';
  sPATH_ARQUIVO_DADOS    = 'C:\PluginDB1\Output\Dados.xml';
  sPATH_ARQUIVO_FILTRO   = 'C:\PluginDB1\Output\Filtro.txt';
  sPATH_ARQUIVO_LISTA    = 'C:\PluginDB1\Output\StringList.txt';
  sPATH_ARQUIVO_INI      = 'C:\PluginDB1\Params.ini';
  sPATH_VISUALIZADOR     = 'C:\PluginDB1\Visualizador.exe';
  sPATH_IMAGENS          = 'C:\PluginDB1\Imagens\';

  nNUMERO_TENTATIVAS_LEITURA = 20;
  nBORDA_DBGRID = 12;
  nTAMANHO_MAXIMO_ITEM_RTC = 8;
  sMENU_DB1 = 'DB&1';
  sSEPARADOR = '-';
  sINDEX_ASC = '_ASC';
  sINDEX_DESC = '_DESC';
  sNOME_PG = 'PG';
  sNOME_SG = 'SG';
  sNOME_PJ = 'PJ';
  sSECAO_ATALHOS = 'Atalhos';
  sMENSAGEM_ARQUIVO_NAO_ENCONTRADO = 'O arquivo %s n�o foi encontrado.';
  sCOMANDO_RMDIR = 'cmd.exe /c rmdir /s /q ';

  sURL_ITEM_RTC =
    'https://clm.unj.softplan.com.br/ccm/web/projects/Tribunais#action=com.ibm.team.workitem.viewWorkItem&id=%s';
  sURL_SALT_RTC =
    'https://clm.unj.softplan.com.br/ccm/web/projects/Tribunais#action=com.ibm.team.workitem.search&q=%s';
  sCOMANDO_RANSACK =
    '"C:\Program Files\Mythicsoft\Agent Ransack\AgentRansack.exe" -c "%s" -d "%s" -r -s';

implementation

//jcf:format=on

end.

