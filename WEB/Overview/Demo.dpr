program Demo;

uses
  Vcl.Forms,
  UDemo in 'UDemo.pas' {Form41: TWebForm} {*.html};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm41, Form41);
  Application.Run;
end.
