{ lib, pkgs, ...}:

{
  systemd = {
    services.nix-cleanup = {
      description = "Cleanup old NixOS generations";
      serviceConfig = {
        Type = "oneshot";
        ExecStart = pkgs.writeScript "nix-cleanup" ''
          #!${pkgs.bash}/bin/bash
          ${pkgs.nix}/bin/nix-env --profile /nix/var/nix/profiles/system --delete-generations +5d
          ${pkgs.nix}/bin/nix-store --gc
          ${pkgs.nix}/bin/nix-store --optimize
        '';
      };
    };
    timers.nix-cleanup = {
      description = "Timer for NixOS generations cleanup";
      wantedBy = [ "timers.target" ];
      timerConfig = {
        OnCalendar = "weekly";
        Persistent = true;
      };
    };
  };
  
  nix.optimise.automatic = true;
  nix.settings.auto-optimise-store = false; # True will run at each compilation and can be slow
  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 5d";
  };
}