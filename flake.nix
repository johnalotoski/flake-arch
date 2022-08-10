{
  description = "Flake architecture selection";
  # A nix flake which simply outputs a systems list.
  # Flakes which utilize a systems list can be parameterized with this flake as an input.
  # When needed, this flake input can be overridden to a different system.
  #
  # Example:
  # Overriding the flake input to describe only a single system for CI and to
  # work around errors like https://github.com/NixOS/nix/issues/4265

  outputs = { self }: {
    systems = [
      "aarch64-darwin"
    ];
  };
}
