unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ExtCtrls, uFloatPanel, Vcl.StdCtrls, dxGDIPlusClasses;

type
  TfrmPrincipal = class(TForm)
    cbDesignMode: TCheckBox;
    FloatPanel: TFloatPanel;
    procedure cbDesignModeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.cbDesignModeClick(Sender: TObject);
begin
  FloatPanel.DesignMode := cbDesignMode.Checked;
end;

end.
