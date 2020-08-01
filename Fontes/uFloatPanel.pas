unit uFloatPanel;

interface

uses
  System.SysUtils, System.Classes, Vcl.Controls, Vcl.ExtCtrls, Messages, Windows,
  Vcl.Graphics;

type
  TFloatPanel = class(TPanel)
  private
    FDesignMode: Boolean;
    procedure SetDesignMode(const Value: Boolean);
  protected
    { Protected declarations }
  public
    procedure WM_MouseDown(var msg: TMsg); message WM_LBUTTONDOWN;
    constructor Create(AOwner : TComponent); override;
    destructor Destroy; override;
  published
    Image: TImage;
    property DesignMode: Boolean read FDesignMode write SetDesignMode;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Exemplos', [TFloatPanel]);
end;

{ TFloatPanel }

constructor TFloatPanel.Create(AOwner: TComponent);
begin
  inherited;
  Self.Height := 50;
  Self.Width := 50;
  Self.Caption := 'FloatPanel';
  Self.Color := clBlack;

  Image := TImage.Create(nil);
  Image.Parent := Self;
  Image.Height := 40;
  Image.Width := 40;
  Image.Top := 5;
  Image.Left := 5;
  Image.Stretch := True;
  Image.Visible := True;
  Image.Picture.LoadFromFile('D:\Projetos\FloatPanel\Imagen\Reator.png');
end;

destructor TFloatPanel.Destroy;
begin
  if (Image <> nil) then
    FreeAndNil(Image);
  inherited;
end;

procedure TFloatPanel.SetDesignMode(const Value: Boolean);
begin
  FDesignMode := Value;
end;

procedure TFloatPanel.WM_MouseDown(var msg: TMsg);
begin
  if (not DesignMode) then
    Exit;
  ReleaseCapture;
  PostMessage(handle, WM_SYSCOMMAND, $F012, 0);
end;

end.
