gw2-dpsreport 1.8.

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
- xclip: https://github.com/astrand/xclip
    - optional: `--clipboard` option

# Usage

Run `gw2-dpsreport --help` to print usage information.

# Possible additions

Just some notes on how the program could be improved.  I don't plan to ever
implement any of these.

- option to upload the 'best attempt' for failed encounters
  (`--on-failure=best`) (but this would require parsing, or uploading, every log
  for the day)
- don't print an extra newline with no logs and `--clipboard'
- use pipes, not temporary files (restart upload on decompress/compress error)
- better logging with verbosity option
- environment variable to change the day start/end time
- environment variable to change the temp dir used for compression
