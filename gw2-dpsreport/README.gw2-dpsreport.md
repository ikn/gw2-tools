gw2-dpsreport 1.1-next.

Upload a day's arcdps logs to `dps.report`.

# Dependencies

Bash (>= 3): https://www.gnu.org/software/bash/
curl: https://curl.haxx.se/
Jshon: http://kmkeen.com/jshon/
Zip: http://infozip.sourceforge.net/Zip.html
 - optional: compress files before upload

# Usage

`gw2-dps-report DAY`

- `DAY`: the day to upload logs for, as accepted by `date`, (eg. 'today',
  'last wednesday', '2001-02-03'); or the special value 'latest', which means
  only upload the single most recent log, from any day

## Environment variables

- `GW2_DPSREPORT_LOGS_PATH` (required): directory containing the encounter
  directories
- `GW2_DPSREPORT_URL`: the base URL to upload logs to (default:
  'https://dps.report')

# Notes

- Uploads the last log file for each encounter in the specified day, regardless
  of whether or not there was a successful attempt.
- A 'day' starts and ends at 5am, in your local timezone.
- Attempts are counted by excluding 'small' files, for some hard-coded
  definition.
- Logs may be uncompressed, or compressed using ZIP; other compression formats
  are unsupported.

# Wish list

- parallel uploading
- default for `GW2_DPSREPORT_LOGS_PATH` based on `WINEPREFIX`
- proper option handling with help and version options
- option to copy the result to the clipboard, environment variable to choose the
  clipboard
- better error checking and logging with verbosity option
- environment variable to change the day start/end time
- environment variable to change the parallel uploads limit
- environment variable to change the temp dir used for compression
- environment variable to adjust small-file thresholds
- instead of small-file thresholds, parse the log and use an encounter-duration
  threshold
