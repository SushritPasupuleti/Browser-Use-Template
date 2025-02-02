{ pkgs ? import <nixpkgs> { } }:
with pkgs;
mkShell rec {
  name = "sd-env";
  LD_LIBRARY_PATH = lib.makeLibraryPath [
    gcc-unwrapped
    zlib
    libglvnd
    glib
    linuxPackages.nvidia_x11
    openssl
    systemd
    glibc
    glibc.dev

    glib
    cups.lib
    cups
    nss
    nssTools
    alsa-lib
    dbus
    at-spi2-core
    libdrm
    expat
    xorg.libX11
    xorg.libXcomposite
    xorg.libXdamage
    xorg.libXext
    xorg.libXfixes
    xorg.libXrandr
    xorg.libxcb
    mesa
    libxkbcommon
    pango
    cairo
    nspr
  ];
  buildInputs = [
    python312
    python312Packages.pip
    # playwright
    # python312Packages.playwright
    git
    # playwright-driver
    nodejs
    # playwright-test
  ];
  # PLAYWRIGHT_BROWSERS_PATH = "${pkgs.playwright-driver.browsers}";
  # PLAYWRIGHT_SKIP_VALIDATE_HOST_REQUIREMENTS=true;
}
