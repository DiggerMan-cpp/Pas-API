

program AimStuff;

uses
	pasapi, CVector;

type
	TAim = record
		front : CVector;
		source : CVector;
		sourceBeforeLookBehind : CVector;
		up : CVector;
	end;

var
	RefLocalPlayerCameraExtZoom : ^Single;
	RefLocalPlayerAspectRatio : ^Single;
	RefInternalCameraExtZoom : ^Single;
	RefInternalAspectRatio : ^Single;
	ArrayCameraExtZoom : ^Single;
	ArrayAspectRatio : ^Single;
	ArrayCameraMode : ^Char;
	RefInternalCameraMode : ^Char;
	RefLocalPlayerAim : ^TAim;
	ArrayPlayerAim : ^TAim;
	RefInternalAim : ^TAim;

procedure UpdateCameraExtZoomAndAspectRatio;
procedure ApplyCameraExtZoomAndAspectRatio;
procedure SetCameraExtZoomAndAspectRatio(nPlayer : Integer; fCameraExtZoom, fAspectRatio : Single);
function GetAspectRatio : Single;
function GetCameraExtZoom : Single;
procedure ApplyCameraExtZoomAndAspectRatio(nPlayer : Integer);
procedure SetCameraMode(nMode : Char; nPlayer : Integer);
function GetCameraMode(nPlayer : Integer) : Char;
function GetCameraMode : Char;
procedure Initialize;
procedure UpdateAim;
procedure ApplyAim;
function GetAim : ^TAim;
procedure SetAim(nPlayer : Integer; const pAim : ^TAim);
procedure ApplyAim(nPlayer : Integer);
function GetAim(nPlayer : Integer) : ^TAim;


implementation

// tyt nichego net

end.
