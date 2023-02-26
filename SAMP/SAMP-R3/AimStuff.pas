function RefLocalPlayerCameraExtZoom: float;
begin
  Result := PFloat(GetAddress(0x143D20))^;
end;

function RefLocalPlayerAspectRatio: float;
begin
  Result := PFloat(GetAddress(0x1468D8))^;
end;

function RefInternalCameraExtZoom: PFloat;
begin
  Result := PPointer(GetAddress(0x1039BC))^;
end;

function RefInternalAspectRatio: PFloat;
begin
  Result := PPointer(GetAddress(0x1039B8))^;
end;

function ArrayCameraExtZoom: PFloat;
begin
  Result := PFloat(GetAddress(0x143E00));
end;

function ArrayAspectRatio: PFloat;
begin
  Result := PFloat(GetAddress(0x146908));
end;

function ArrayCameraMode: PChar;
begin
  Result := PChar(GetAddress(0x143D28));
end;

function RefInternalCameraMode: PChar;
begin
  Result := PPointer(GetAddress(0x11395C))^;
end;

function RefLocalPlayerAim: AimStuff.Aim;
begin
  Result := PAimStuff.Aim(GetAddress(0x144148))^;
end;

function ArrayPlayerAim: PAimStuff.Aim;
begin
  Result := PAimStuff.Aim(GetAddress(0x144178));
end;

var AimStuff.Aim*& AimStuff.RefInternalAim: Pointer;
Begin
  AimStuff.RefInternalAim := GetAddress(0x1039B0);
End;

Procedure AimStuff.UpdateCameraExtZoomAndAspectRatio;
Begin
  GetAddress(0x9C0B0);
End;

Procedure AimStuff.ApplyCameraExtZoomAndAspectRatio;
Begin
  GetAddress(0x9C0D0);
End;

Procedure AimStuff.SetCameraExtZoomAndAspectRatio(nPlayer: NUMBER; fCameraExtZoom: Float; fAspectRatio: Float);
Begin
  GetAddress(0x9C0F0)(nPlayer, fCameraExtZoom, fAspectRatio);
End;

Function AimStuff.GetAspectRatio: Float;
Begin
  Result := GetAddress(0x9C110);
End;

Function AimStuff.GetCameraExtZoom: Float;
Begin
  Result := GetAddress(0x9C120);
End;

Procedure AimStuff.ApplyCameraExtZoomAndAspectRatio(nPlayer: NUMBER);
Begin
  GetAddress(0x9C140)(nPlayer);
End;

Procedure AimStuff.SetCameraMode(nMode: Char; nPlayer: NUMBER);
Begin
  GetAddress(0x9C180)(nMode, nPlayer);
End;

Function AimStuff.GetCameraMode(nPlayer: NUMBER): Char;
Begin
  Result := GetAddress(0x9C1A0)(nPlayer);
End;

Function AimStuff.GetCameraMode: Char;
Begin
  Result := GetAddress(0x9C1B0);
End;

Procedure AimStuff.Initialize;
Begin
  GetAddress(0x9C1C0);
End;

Procedure AimStuff.UpdateAim;
Begin
  GetAddress(0x9C230);
End;

Procedure AimStuff.ApplyAim;
Begin
  GetAddress(0x9C250);
End;

Function AimStuff.GetAim: AimStuff.Aim*;
Begin
  Result := GetAddress(0x9C270);
End;

Procedure AimStuff.SetAim(nPlayer: Integer; pAim: ^AimStuff.Aim);
Begin
  GetAddress(0x9C280)(nPlayer, pAim);
End;

Procedure AimStuff.ApplyAim(nPlayer: Integer);
Begin
  GetAddress(0x9C2B0)(nPlayer);
End;

Function AimStuff.GetAim(nPlayer: Integer): AimStuff.Aim*;
Begin
  Result := GetAddress(0x9C2E0)(nPlayer);
End;
