unit sk210.adpter.interfaces;

interface

uses
  sk210.utils.enums;

type
  IPrinter = interface
    function Add(Value: String): IPrinter; overload;
    function Add(Value: String; FontSize: Integer): IPrinter; overload;
    function Add(Value: String; FontSize: Integer; Alinhamento: TAlinhamento): IPrinter; overload;
    procedure Print;
  end;

implementation

end.
