unit Wizard;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, TntStdCtrls, ExtCtrls, TntExtCtrls;

type
  TfrmWizard = class(TForm)
    TntPanel1: TTntPanel;
    Bevel1: TBevel;
    TntButton1: TTntButton;
    TntButton2: TTntButton;
    TntButton3: TTntButton;
    Panel1: TPanel;
    Bevel2: TBevel;
    lblWizardTitle: TTntLabel;
    lblWizardDetails: TTntLabel;
    Image1: TImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmWizard: TfrmWizard;

implementation

{$R *.dfm}

end.
