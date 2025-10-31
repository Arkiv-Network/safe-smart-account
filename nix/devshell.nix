{
  pkgs,
  perSystem,
}:
perSystem.devshell.mkShell {
  packages = [
    perSystem.op-nix."solc-v0.7.6"
    pkgs.foundry
    pkgs.go-ethereum
    pkgs.nodejs
  ];

  env = [
    {
      name = "NIX_PATH";
      value = "nixpkgs=${toString pkgs.path}";
    }
    {
      name = "NIX_DIR";
      eval = "$PRJ_ROOT/nix";
    }
  ];

  commands = [ ];
}
