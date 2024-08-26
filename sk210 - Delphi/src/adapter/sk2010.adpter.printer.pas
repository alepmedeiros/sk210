unit sk2010.adpter.printer;

interface

uses T1_V2_20230816;

type
  TTopWisePrint = class
  private
    FPrintTabel: JPrintTemplate;
  public
    function Add(Value: String): TTopWisePrint;
  end;

implementation

{ TTopWisePrint }

{ TTopWisePrint }

function TTopWisePrint.Add(Value: String): TTopWisePrint;
begin
  FPrintTabel.add(Value);
end;

end.
