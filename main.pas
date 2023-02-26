{$APPTYPE CONSOLE}
uses pasapi;
uses Windows;

function GetBase: Cardinal;
begin
  Result := Cardinal(GetModuleHandleA('samp.dll'));
end;

function GetAPIVersion: Cardinal;
begin
  Result := PASAPI_VERSION;
end;

begin
end.
