pkgs.mkShell {
  buildInputs = [
    pkgs.wget
    pkgs.python311
  ];

  shellHook = ''
    export PYTHON="${pkgs.python311}/bin/python"
  '';
}