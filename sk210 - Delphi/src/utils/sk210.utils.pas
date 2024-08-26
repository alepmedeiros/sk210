unit sk210.utils;

interface

uses
  System.SysUtils,
  System.Classes,
  System.Types,
  FMX.Objects,
  FMX.Types,
  FMX.Graphics,
  System.UITypes;

type
  TUtils = class
  private
  public
    class procedure ResourceImage(Resource: String; Image: TImage); overload;
    class procedure ResourceImage(Resource: String; Image: TFMXObject);
      overload;
    class procedure ResourceImage(Resource: String; Image: TBitmap); overload;
    class function UpperCameCase(Value: String): String;
    class procedure ImageColor(Image: TImage; Color: TAlphaColor);
  end;

implementation

{ TUtils }

class procedure TUtils.ImageColor(Image: TImage; Color: TAlphaColor);
begin
  Image.Bitmap.ReplaceOpaqueColor(Color);
end;

class procedure TUtils.ResourceImage(Resource: String; Image: TImage);
begin
  var lResource := TResourceStream.Create(HInstance, Resource, RT_RCDATA);
  try
    Image.Bitmap.LoadFromStream(lResource);
  finally
    lResource.Free;
  end;
end;

class procedure TUtils.ResourceImage(Resource: String; Image: TFMXObject);
begin
  var
  lResource := TResourceStream.Create(HInstance, Resource, RT_RCDATA);
  try
    TShape(Image).Fill.Bitmap.Bitmap.LoadFromStream(lResource);
  finally
    lResource.Free;
  end;
end;

class procedure TUtils.ResourceImage(Resource: String; Image: TBitmap);
begin
  var lResource := TResourceStream.Create(HInstance, Resource, RT_RCDATA);
  try
    Image.LoadFromStream(lResource);
  finally
    lResource.Free;
  end;
end;

class function TUtils.UpperCameCase(Value: String): String;
begin
  Result := UpperCase(Copy(Value,1,1)) +
    LowerCase(Copy(Value, 2, Length(Value)));
end;

end.
