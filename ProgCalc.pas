unit ProgCalc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IdBaseComponent, IdNetworkCalculator,
  Vcl.Buttons, Sobre, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TCalc = class(TForm)
    Visor: TEdit;
    Um: TSpeedButton;
    Dois: TSpeedButton;
    Tres: TSpeedButton;
    Quatro: TSpeedButton;
    Cinco: TSpeedButton;
    Seis: TSpeedButton;
    Sete: TSpeedButton;
    Oito: TSpeedButton;
    Nove: TSpeedButton;
    Zero: TSpeedButton;
    Mais: TSpeedButton;
    Menos: TSpeedButton;
    Dividir: TSpeedButton;
    Multiplicar: TSpeedButton;
    Virgula: TSpeedButton;
    Igual: TSpeedButton;
    Limpar: TSpeedButton;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    procedure UmClick(Sender: TObject);
    procedure DoisClick(Sender: TObject);
    procedure MaisClick(Sender: TObject);
    procedure MenosClick(Sender: TObject);
    procedure DividirClick(Sender: TObject);
    procedure MultiplicarClick(Sender: TObject);
    procedure VirgulaClick(Sender: TObject);
    procedure LimparClick(Sender: TObject);
    procedure IgualClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Calc: TCalc;
  valor1: real;
  valor2: real;
  funcao: Integer;

implementation

{$R *.dfm}

procedure TCalc.Button1Click(Sender: TObject);
begin
  SobreF := TSobreF.Create(Self);
  SobreF.ShowModal;
end;

procedure TCalc.DividirClick(Sender: TObject);
begin
  valor1 := StrToFloat(visor.Text);
  visor.Text := '';
  funcao := 4;
end;

procedure TCalc.DoisClick(Sender: TObject);
begin
   visor.Text := visor.Text + (Sender as TSpeedButton).Caption
end;

procedure TCalc.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_NUMPAD1 then
    um.Click;
  if Key = VK_NUMPAD2 then
    dois.click;
  if Key = VK_NUMPAD3 then
    tres.click;
  if Key = VK_NUMPAD4 then
    quatro.click;
  if Key = VK_NUMPAD5 then
    cinco.click;
  if Key = VK_NUMPAD6 then
    seis.click;
  if Key = VK_NUMPAD7 then
    sete.click;
  if Key = VK_NUMPAD8 then
    oito.click;
  if Key = VK_NUMPAD9 then
    nove.click;
  if Key = VK_NUMPAD0 then
    zero.click;
  if Key = VK_ADD then
    mais.click;
  if Key = VK_SUBTRACT then
    menos.click;
  if Key = VK_MULTIPLY then
    multiplicar.click;
  if Key = VK_DIVIDE then
    dividir.click;
  if Key = VK_RETURN then
    igual.click;
  if Key = VK_DECIMAL then
    virgula.Click;
  if Key = VK_DELETE then
    limpar.click;
end;


procedure TCalc.FormShow(Sender: TObject);
begin
  Valor1 := 0;
  Valor2 := 0;
end;

procedure TCalc.IgualClick(Sender: TObject);
var
  soma: real;
begin
  valor2:=StrToFloat(visor.Text);
  case (funcao) of
  1:
  begin
    soma:=valor1+valor2;
    visor.text:=FloatToStr(soma);
  end;
  2:
  begin
    soma:=valor1-valor2;
    visor.text:=FloatToStr(soma);
  end;
  3:
  begin
    soma:=valor1*valor2;
    visor.text:=FloatToStr(soma);
  end;
  4:
  begin
    if(valor2<>0)then
      begin
        soma:=valor1/valor2;
        visor.text:=FloatToStr(soma);
      end
    else
      begin
        SHowMessage('Divisão por zero NÃO EXISTE SEU BURRO!');
        visor.Text:='ERRO';
      end

    end
end;
end;

procedure TCalc.LimparClick(Sender: TObject);
begin
  visor.Text:='';
end;

procedure TCalc.MaisClick(Sender: TObject);
begin
  valor1 := StrToFloat(visor.Text);
  visor.Text := '';
  funcao := 1;
end;

procedure TCalc.MenosClick(Sender: TObject);
begin
  valor1 := StrToFloat(visor.Text);
  visor.Text := '';
  funcao := 2;
end;

procedure TCalc.MultiplicarClick(Sender: TObject);
begin
  valor1 := StrToFloat(visor.Text);
  visor.Text := '';
  funcao := 3;
end;

procedure TCalc.UmClick(Sender: TObject);
begin
  visor.Text := visor.Text + (Sender as TSpeedButton).Caption
end;

procedure TCalc.VirgulaClick(Sender: TObject);
begin
  visor.Text := visor.Text + ',';
end;

end.
