unit sk2010.adpter.printer;

interface

uses T1_V2_20230816;

type
  TAlign = (LEFT, CENTER, RIGHT);

  TTopWisePrint = class
  private
    FPrintTabel: JPrintTemplate;
    FTextUnit: JTextUnit;
  public
    function Add(Value: String; font: Integer; Alinhamento: TAlign): TTopWisePrint;
  end;

implementation

{ TTopWisePrint }

{ TTopWisePrint }

function TTopWisePrint.Add(Value: String; font: Integer; Alinhamento: TAlign): TTopWisePrint;
begin
  FPrintTabel.add()FTe;
end;

end.
