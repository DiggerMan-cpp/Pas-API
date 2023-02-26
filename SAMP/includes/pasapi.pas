program PASAPI;

{$IFNDEF PASAPI}
const PASAPI = 0;
{$ENDIF}
const PASAPIVERSION = 1;
const PASAPINAMESPACE = 'pasapi';

{$PACKRECORDS 1}

{$IFDEF PASAPI_EXPORT}
exports GetBase, GetAPIVersion;
{$ENDIF}

function GetBase: Longword;
begin
  Result := GetBase();
end;

function GetAPIVersion: Longword;
begin
  Result := GetAPIVersion();
end;

function GetAddress(Offset: Longint): Longword;
begin
  Result := GetBase() + Offset;
end;

type
  GTAREF = Integer;
  ID = Word;
  NUMBER = Byte;
  CMDPROC = procedure(const Str: String);

var
  D3DCOLOR: Longword;
  TICK: Longword;
  BOOL: Integer;
  ID3DXFont: Pointer;
  ID3DXSprite: Pointer;
  ID3DXRenderToSurface: Pointer;
  IDirect3DSurface9: Pointer;
  IDirect3DTexture9: Pointer;
  IDirect3DDevice9: Pointer;
  IDirect3DStateBlock9: Pointer;
  CDXUTDialog: Pointer;
  CDXUTListBox: Pointer;
  CDXUTEditBox: Pointer;
  CDXUTScrollBar: Pointer;
  CDXUTIMEEditBox: Pointer;

begin
end
