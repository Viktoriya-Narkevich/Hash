unit UInfo;

interface
uses Classes, SysUtils;
type
  TKey = string;
  TInfo = class
  private
    FTitle: TKey;
    FDirector: string;
    FActors: string;
    FSummary: string;
  protected
  public
    constructor Create; overload;
    constructor Create(ATitle:TKey;ADirectors,AActors,ASummary:string);  overload;
    class procedure ShowTitle(ARow:TStrings);
    class function Hash(AKey:TKey):Integer;
    procedure Show(ARow:TStrings);
    function LoadFromFile(var F:TextFile):Boolean;
    procedure SaveToFile(var F:TextFile);
    function IsEqualKey(Akey: TKey): Boolean;
    property Key:TKey read FTitle;
    property Directors:string read FDirector;
    property Actors:string read FActors;
    property Summary:string read FSummary;
  end;
implementation

{ TInfo }
function GetValue (var str : string; var value:string) : boolean;
var i,len:Integer;
begin
  str:=Trim(str);
  len:=Length(str);
  i:=1;
  if len>0 then
    begin
      while (i<=len) and (str[i]<>#9) do inc(i);
      value:=Trim(Copy(str, 1, i-1));
      Result:=True;
      Delete(str,1,i);
    end
  else
    Result:=False;
end;


constructor TInfo.Create;
begin
  FTitle:='';
  FDirector:='';
  FActors:='';
  FSummary:='';
  inherited Create;
end;

constructor TInfo.Create(ATitle: TKey; ADirectors, AActors,
  ASummary: string);
begin
  inherited Create;
  FTitle:=ATitle;
  FDirector:=ADirectors;
  FActors:=AActors;
  FSummary:=ASummary;
end;

class function TInfo.Hash(AKey: TKey): Integer;
var
  i:Integer;
begin
  Result:=0;
  for i:=1 to Length(AKey)do
  Result:=Result+Ord(AKey[i]);
end;

function TInfo.IsEqualKey(Akey:TKey): Boolean;
begin
  result:=(Akey=FTitle);
end;

function TInfo.LoadFromFile(var F: TextFile): Boolean;
var
  tmp:string;
begin
  if Eof(F)
    then Result:=False
    else
      begin
        readln(F,tmp);
        result:=GetValue(tmp,FTitle) and GetValue(tmp,FDirector)
          and GetValue(tmp,FActors) and GetValue(tmp,FSummary)
          and(FTitle<>'');
      end;
end;

const
  Tab = #9;

procedure TInfo.SaveToFile(var F: TextFile);
begin
  Writeln(f,FTitle+#$9+FDirector+#$9+FActors+#$9+FSummary);
end;

procedure TInfo.Show(ARow: TStrings);
begin
  ARow[1]:=FTitle;
  ARow[2]:=FDirector;
  ARow[3]:=FActors;
  ARow[4]:=FSummary;
end;

class procedure TInfo.ShowTitle(ARow: TStrings);
begin
  ARow[0]:='�';
  ARow[1]:='��������';
  ARow[2]:='��������';
  ARow[3]:='������';
  ARow[4]:='��������';
end;

end.
