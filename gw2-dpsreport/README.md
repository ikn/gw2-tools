gw2-dpsreport: upload a day's arcdps logs to `dps.report`.

# Dependencies

Bash (>= 3): https://www.gnu.org/software/bash/
curl: https://curl.haxx.se/
Jshon: http://kmkeen.com/jshon/

# Usage

`gw2-dps-report LOGS_PATH DAY`

- `LOGS_PATH`: directory containing the encounter directories
- `DAY`: the day to upload logs for, as accepted by `date`, (eg. 'today',
  'last wednesday', '2001-02-03')

## Environment variables

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

- compress uncompressed files before upload
- determine and display whether the last attempt was a success (if the API
  exposes this information)
- proper option handling / error checking / logging
- option to change the day start/end time
- option to adjust small file thresholds
