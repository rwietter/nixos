{ pkgs, ... }:

# Run `espanso service unregister && espanso service register` to register the espanso daemon
{
  services.espanso = {
    enable = false; # [BUG]: read-write register error
    package = pkgs.espanso;
    matches = {
      base = {
        matches = [
          {
            trigger = ":now";
            replace = "It's {{currentdate}} {{currenttime}}";
          }
          {
            trigger = ":code";
            replace = "```{{language}}\n{{code}}\n```";
          }
        ];
      };
      global_vars = {
        global_vars = [
          {
            name = "currentdate";
            type = "date";
            params = {
              format = "%d/%m/%Y";
            };
          }
          {
            name = "currenttime";
            type = "date";
            params = {
              format = "%R";
            };
          }
          {
            name = "language";
            type = "text";
          }
          {
            name = "code";
            type = "text";
          }
        ];
      };
    };
  };
}
