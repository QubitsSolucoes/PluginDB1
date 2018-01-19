unit uCompilacao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, CheckLst, Buttons, uFuncoes;

type
  TfCompilacao = class(TForm)
    CheckListBoxProjetos: TCheckListBox;
    PanelBotoes: TPanel;
    BitBtnCompilar: TBitBtn;
    PanelPesquisa: TPanel;
    EditPesquisa: TEdit;
    lbFiltroProjetos: TLabel;
    BitBtnOK: TBitBtn;
    procedure FormKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure CheckListBoxProjetosKeyPress(Sender: TObject; var Key: char);
    procedure BitBtnOKClick(Sender: TObject);
  private
    FoFuncoes: TFuncoes;
    FsFiltro: string;
    FsUltimaConfiguracao: string;

    procedure ExibirProjetosCarregados;
    procedure CarregarFiltros;
    procedure CarregarUltimaConfiguracao;
  public
    property Funcoes: TFuncoes write FoFuncoes;
    property Filtro: string write FsFiltro;
    property UltimaConfiguracao: string write FsUltimaConfiguracao;
    function PegarUltimoProjetoMarcado: string;
    function PegarProjetosSelecionados: string;
    function PegarFiltrosProjetos: string;
  end;

var
  fCompilacao: TfCompilacao;

implementation

uses
  ToolsAPI;

{$R *.DFM}

procedure TfCompilacao.FormKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    Close;
end;

procedure TfCompilacao.ExibirProjetosCarregados;
var
  slProjetos: TStringList;
  slFiltro: TStringList;
  nContadorProjetos: smallint;
  nContadorFiltros: smallint;
  sNomeProjeto: string;
  sFiltro: string;
  bExibeProjeto: boolean;
begin
  CheckListBoxProjetos.Items.Clear;

  slProjetos := TStringList.Create;
  slFiltro := TStringList.Create;
  try
    slFiltro.CommaText := EditPesquisa.Text;
    slProjetos.CommaText := FoFuncoes.PegarProjetosCarregados;

    for nContadorProjetos := 0 to Pred(slProjetos.Count) do
    begin
      sNomeProjeto := slProjetos[nContadorProjetos];
      bExibeProjeto := True;

      for nContadorFiltros := 0 to Pred(slFiltro.Count) do
      begin
        sFiltro := UpperCase(slFiltro[nContadorFiltros]);
        bExibeProjeto := Pos(sFiltro, UpperCase(sNomeProjeto)) > 0;

        if bExibeProjeto then
          Break;
      end;

      if not bExibeProjeto then
        Continue;

      CheckListBoxProjetos.Items.Add(sNomeProjeto);
    end;
  finally
    FreeAndNil(slFiltro);
    FreeAndNil(slProjetos);
  end;
end;

function TfCompilacao.PegarUltimoProjetoMarcado: string;
var
  nContador: byte;
begin
  result := EmptyStr;
  for nContador := 0 to Pred(CheckListBoxProjetos.Items.Count) do
  begin
    if CheckListBoxProjetos.Checked[nContador] then
      result := CheckListBoxProjetos.Items[nContador];
  end;
end;

procedure TfCompilacao.FormShow(Sender: TObject);
begin
  CarregarFiltros;
  ExibirProjetosCarregados;
  CarregarUltimaConfiguracao;
end;

function TfCompilacao.PegarProjetosSelecionados: string;
var
  nContador: byte;
  slProjetos: TStringList;
begin
  slProjetos := TStringList.Create;
  try
    for nContador := 0 to Pred(CheckListBoxProjetos.Items.Count) do
    begin
      if CheckListBoxProjetos.Checked[nContador] then
        slProjetos.Add(CheckListBoxProjetos.Items[nContador]);
    end;
    result := slProjetos.CommaText;
  finally
    FreeAndNil(slProjetos);
  end;
end;

procedure TfCompilacao.CheckListBoxProjetosKeyPress(Sender: TObject; var Key: char);
begin
  if Key = #32 then
  begin
    Key := #0;

    if CheckListBoxProjetos.ItemIndex < 0 then
      Exit;

    CheckListBoxProjetos.Checked[CheckListBoxProjetos.ItemIndex] :=
      not CheckListBoxProjetos.Checked[CheckListBoxProjetos.ItemIndex];
  end;
end;

function TfCompilacao.PegarFiltrosProjetos: string;
begin
  result := Trim(EditPesquisa.Text);
end;

procedure TfCompilacao.CarregarFiltros;
begin
  EditPesquisa.Text := FsFiltro;
end;

procedure TfCompilacao.CarregarUltimaConfiguracao;
var
  slUltimaConfiguracao: TStringList;
  nContador: smallint;
  nPosicaoProjeto: smallint;
begin
  slUltimaConfiguracao := TStringList.Create;
  try
    slUltimaConfiguracao.CommaText := FsUltimaConfiguracao;

    for nContador := 0 to Pred(slUltimaConfiguracao.Count) do
    begin
      nPosicaoProjeto := CheckListBoxProjetos.Items.IndexOf(slUltimaConfiguracao[nContador]);

      if nPosicaoProjeto >= 0 then
        CheckListBoxProjetos.Checked[nPosicaoProjeto] := True;
    end;

  finally
    FreeAndNil(slUltimaConfiguracao);
  end;
end;

procedure TfCompilacao.BitBtnOKClick(Sender: TObject);
begin
  ExibirProjetosCarregados;
end;

end.

