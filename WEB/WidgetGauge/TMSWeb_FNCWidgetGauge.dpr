program TMSWeb_FNCWidgetGauge;

uses
  Vcl.Forms,
  UDemo in 'UDemo.pas' {Form1: TWebForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
