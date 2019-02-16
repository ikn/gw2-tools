gw2-arcdps-install 0-next.

Install [arcdps](https://www.deltaconnected.com/arcdps/).

# Dependencies

Bash: https://www.gnu.org/software/bash/
wget: https://www.gnu.org/software/wget/

# Usage

Run `gw2-arcdps-install --help` to print usage information.

## Environment variables

- `GW2_INSTALL_PATH` or `WINEPREFIX` (required): directory containing the
  Guild Wars 2 executable, or try to work out this directory from the Wine data
  directory

# Notes

- Doesn't set up chainloading to the original `d3d9.dll` - that must be set up
  manually.
- Only works for the 64-bit version of Guild Wars 2.
