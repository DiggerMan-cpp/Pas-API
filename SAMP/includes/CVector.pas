
{$CVector}

unit pasapi;

interface

uses
  PasAPI.Common;

type
  VectorCompressed = record
    x, y, z: Word;
  end;

  TCVector = class
  public
    x, y, z: Single;

    constructor Create; overload;
    constructor Create(A_X, A_Y, A_Z: Single); overload;

    procedure Set(A_X, A_Y, A_Z: Single);
    function GetLength: Single;
    function GetLengthSquared: Single;
    procedure Normalize;
    function Dot(const A_Vec: TCVector): Single;
    function Cross(const A_Vec: TCVector): TCVector;
    procedure ZeroNearZero;
  end;

implementation

{ TCVector }

constructor TCVector.Create;
begin
  x := 0;
  y := 0;
  z := 0;
end;

constructor TCVector.Create(A_X, A_Y, A_Z: Single);
begin
  x := A_X;
  y := A_Y;
  z := A_Z;
end;

procedure TCVector.Set(A_X, A_Y, A_Z: Single);
begin
  x := A_X;
  y := A_Y;
  z := A_Z;
end;

function TCVector.GetLength: Single;
begin
  Result := Sqrt(x * x + y * y + z * z);
end;

function TCVector.GetLengthSquared: Single;
begin
  Result := x * x + y * y + z * z;
end;

procedure TCVector.Normalize;
var
  Len: Single;
begin
  Len := GetLength;
  if Len > 0 then
  begin
    x := x / Len;
    y := y / Len;
    z := z / Len;
  end;
end;

function TCVector.Dot(const A_Vec: TCVector): Single;
begin
  Result := x * A_Vec.x + y * A_Vec.y + z * A_Vec.z;
end;

function TCVector.Cross(const A_Vec: TCVector): TCVector;
begin
  Result := TCVector.Create(
    y * A_Vec.z - z * A_Vec.y,
    z * A_Vec.x - x * A_Vec.z,
    x * A_Vec.y - y * A_Vec.x
  );
end;

procedure TCVector.ZeroNearZero;
begin
  if Abs(x) < 0.00001 then x := 0;
  if Abs(y) < 0.00001 then y := 0;
  if Abs(z) < 0.00001 then z := 0;
end;

end.
