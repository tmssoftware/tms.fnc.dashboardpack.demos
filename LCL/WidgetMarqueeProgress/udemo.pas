unit UDemo;

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls,
  LCLTMSFNCWidgetMarqueeContinuousProgress, LCLTMSFNCWidgetMarqueeProgress;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Timer1: TTimer;
    TMSFNCWidgetMarqueeProgress1: TTMSFNCWidgetMarqueeProgress;
    TMSFNCWidgetMarqueeContinuousProgress1: TTMSFNCWidgetMarqueeContinuousProgress;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    function UpdateProgress(AProgress: Single): Single;
    procedure UpdateAll;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  TMSFNCWidgetMarqueeProgress1.Value := Random(12);
  TMSFNCWidgetMarqueeProgress1.CaptionOptions.Text := 'Server Chicago';
  TMSFNCWidgetMarqueeContinuousProgress1.CenterText := 'Working...';
  TMSFNCWidgetMarqueeProgress1.MarqueeAnimation.Active := true;
  TMSFNCWidgetMarqueeContinuousProgress1.MarqueeAnimation.Active := true;
end;

function TForm1.UpdateProgress(AProgress: Single): Single;
var
  AIncr: Single;
begin
  result := AProgress;
  if AProgress >= 100 then
    exit;
  AIncr := 0;
  while AIncr = 0 do
    AIncr := Random(12);
  AProgress := AProgress + AIncr;
  if AProgress >= 100 then
    AProgress := 100;
  result := AProgress;
end;

procedure TForm1.UpdateAll;
begin
  if (TMSFNCWidgetMarqueeProgress1.Value < 100) then
    TMSFNCWidgetMarqueeProgress1.Value := UpdateProgress(TMSFNCWidgetMarqueeProgress1.Value);

  if (TMSFNCWidgetMarqueeProgress1.Value = 100) then
  begin
    Timer1.Enabled := false;
    TMSFNCWidgetMarqueeContinuousProgress1.MarqueeAnimation.Active := false;
    TMSFNCWidgetMarqueeContinuousProgress1.CenterText := 'Finished';
    Label1.Caption := 'Server Backup Finished';
  end;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  UpdateAll;
end;

end.
