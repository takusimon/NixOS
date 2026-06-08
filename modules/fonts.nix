{config,pkgs,...}:
let
  myFont = pkgs.stdenvNoCC.mkDerivation {
    pname = "my-font";
    version = "1.0";

    src = ../home/fonts;

    installPhase = ''
      mkdir -p $out/share/fonts/opentype
      cp *.otf $out/share/fonts/opentype/
    '';
  };
in
{
 # Fonts available system wide
 fonts.packages = with pkgs; [
 	noto-fonts
	noto-fonts-cjk-sans
	noto-fonts-color-emoji
	nerd-fonts.jetbrains-mono
	font-awesome
	myFont
	];
}