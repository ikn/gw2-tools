gw2-dpsreport 1.2.

Upload a day's [arcdps](https://www.deltaconnected.com/arcdps/) logs to
[dps.report](https://dps.report/).

# Dependencies

Bash (>= 3): https://www.gnu.org/software/bash/
curl: https://curl.haxx.se/
Jshon: http://kmkeen.com/jshon/ formats
GNU Parallel: https://www.gnu.org/software/parallel/
p7zip: http://p7zip.sourceforge.net/
 - optional: compress files before upload
 - optional: work with log files compressed in formats other than Zip

# Usage

`gw2-dpsreport DAY`

- `DAY`: the day to upload logs for, as accepted by `date`, (eg. 'today',
  'last wednesday', 'friday 3 weeks ago', '2001-02-03'); or the special value
  'latest', which means only upload the single most recent log, from any day

## Environment variables

- `GW2_DPSREPORT_LOGS_PATH` (required): directory containing the encounter
  directories
- `GW2_DPSREPORT_URL`: the base URL to upload logs to (default:
  'https://dps.report')
- `GW2_DPSREPORT_UPLOAD_PARALLEL_LIMIT`: maximum allowed parallel uploads (0
  means no maximum) (default: 5)
- `GW2_DPSREPORT_SIZE_THRESHOLD_CUSTOM`: logs compressed in a format other than
  Zip are excluded if they have a size smaller than this many bytes (default: 0)

# Notes

- Uploads the last log file for each encounter in the specified day, regardless
  of whether or not there was a successful attempt.
- A 'day' starts and ends at 5am, in your local timezone.
- 'Small' log files are excluded, for some hard-coded definition (also see
  `GW2_DPSREPORT_SIZE_THRESHOLD_CUSTOM`).
- Logs may be uncompressed, or compressed using any format supported by p7zip
  (if it's installed).  File extension is used to determine whether to
  decompress/compress.

# Wish list

- default for `GW2_DPSREPORT_LOGS_PATH` based on `WINEPREFIX`
- proper option handling with help and version options
- option to copy the result to the clipboard, environment variable to choose the
  clipboard
- use pipes, not temporary files (restart upload on decompress/compress error)
- better error checking and logging with verbosity option
- environment variable to change the day start/end time
- environment variable to change the temp dir used for compression
- environment variable to adjust small-file thresholds
