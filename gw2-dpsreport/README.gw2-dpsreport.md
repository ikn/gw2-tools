gw2-dpsreport 1.0-next.

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
  'last wednesday', '2001-02-03')

## Environment variables

- `LOGS_PATH` (required): directory containing the encounter directories
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

- determine and display whether the last attempt was a success (if the API
  exposes this information)
- proper option handling / error checking / logging
- option to change the day start/end time
- option to adjust small-file thresholds
- option to copy the result to the clipboard
- parallel uploading
- instead of small-file thresholds, parse the log and use an encounter-duration
  threshold
- option to change the temp dir used for compression
