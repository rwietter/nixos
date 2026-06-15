{ nixpkgs-unstable, ... }:

{
  systemd.user.services.clipse = {
    Unit = {
      Description = "Clipse clipboard listener";
      After = [ "graphical-session.target" ];
      PartOf = [ "graphical-session.target" ];
    };

    Service = {
      ExecStart = "${nixpkgs-unstable.clipse-x11}/bin/clipse -listen-x11";
      Restart = "on-failure";
    };

    Install = {
      WantedBy = [ "graphical-session.target" ];
    };
  };
}
