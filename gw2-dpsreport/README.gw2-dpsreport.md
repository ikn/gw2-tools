gw2-dpsreport 1.3-next.

Upload a day's [arcdps](https://www.deltaconnected.com/arcdps/) logs to
[dps.report](https://dps.report/).

# Dependencies

- Bash (>= 3): https://www.gnu.org/software/bash/
- curl: https://curl.haxx.se/
- Jshon: http://kmkeen.com/jshon/ formats
- GNU Parallel: https://www.gnu.org/software/parallel/
- p7zip: http://p7zip.sourceforge.net/
    - optional: compress files before upload
    - optional: work with log files compressed in formats other than Zip

# Usage

Run `gw2-dpsreport --help` to print usage information.

# Wish list

- proper option handling with help and version options
- option to copy the result to the clipboard, environment variable to choose the
  clipboard
- use pipes, not temporary files (restart upload on decompress/compress error)
- better error checking and logging with verbosity option
- environment variable to change the day start/end time
- environment variable to change the temp dir used for compression
- environment variable to adjust small-file thresholds
