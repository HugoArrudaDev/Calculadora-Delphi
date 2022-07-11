program PRJcalc;

uses
  Vcl.Forms,
  ProgCalc in 'ProgCalc.pas' {Calc},
  Sobre in 'Sobre.pas' {SobreF};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TCalc, Calc);
  Application.Run;
end.
