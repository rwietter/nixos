{ pkgs, config, lib, ...}:

{
 options = {
		up.enable = lib.mkOption {
			type = lib.types.bool;
			default = true;
			description = "Enable Ultimate Plumber, a tool for writing Linux pipes with instant live preview";
			example = true;
		};
	};

	config = lib.mkIf config.up.enable {
		home.packages = [
			pkgs.up
		];
	};
}

# Usage example:
# inxi -Fxz | up
# Then write in interactive shell `grep somepattern` and see live results!
