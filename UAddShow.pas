unit UAddShow;

interface   

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, UInfo;

type
  TFormAdd = class(TForm)
    Edit_Title: TEdit;
    Edit_Director: TEdit;
    lbl_Title: TLabel;
    lbl_Director: TLabel;
    lbl_Actors: TLabel;
    lbl_Summary: TLabel;
    btn_Ok: TButton;
    btn_Cancel: TButton;
    mmo_Summary: TMemo;
    mmo_Actors: TMemo;
    procedure btn_OkClick(Sender: TObject);
    procedure Edit_Change(Sender: TObject);
  private
    FInfo: TInfo;
  public
    property Info:TInfo read FInfo;
  end;

implementation

{$R *.dfm}

procedure TFormAdd.btn_OkClick(Sender: TObject);
begin
  if Trim(Edit_Title.Text)='' then
  begin
    MessageDlg('Не введен ключ', mtError, [mbOK], 0);
    Edit_Title.SetFocus;
    Exit;
  end;
  FInfo:=TInfo.Create(Edit_Title.Text,Edit_Director.Text,mmo_Actors.Text,mmo_Summary.Text);
  ModalResult:=mrOK;
end;

procedure TFormAdd.Edit_Change(Sender: TObject);
begin
  btn_Ok.Enabled:=(Edit_Title.Text<>'') and (mmo_Actors.Text<>'') and
                  (mmo_Summary.Text<>'') and (Edit_Director.Text<>'')
end;

end.
