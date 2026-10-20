# Linux Cron Job Automation

A beginner-friendly DevOps practice project demonstrating scheduled task automation on Linux using Cron and Bash scripting.

## Project Objectives

- Understand Linux Cron scheduling.
- Automate recurring tasks using Bash.
- Create timestamped compressed backups.
- Collect disk and memory usage reports.
- Capture errors in a separate log file.

## Technologies

- Linux / Ubuntu
- Bash scripting
- Cron
- Git and GitHub

## Project Structure

```text
cron-lab/
├── log_time.sh
├── backup.sh
├── system_report.sh
├── test_error.sh
├── data/
├── backups/
├── logs/
├── reports/
├── screenshots/
├── .gitignore
└── README.md
```

## Cron Schedule

```cron
* * * * * /bin/bash /home/jannatul/cron-lab/log_time.sh
*/5 * * * * /bin/bash /home/jannatul/cron-lab/backup.sh 2>> /home/jannatul/cron-lab/logs/error.log
*/10 * * * * /bin/bash /home/jannatul/cron-lab/system_report.sh
```

These schedules run the logging script every minute, the backup script every five minutes, and the system report every ten minutes.

Update the paths if you install the project in a different location.

## Features

### Scheduled Logging
Records execution timestamps in a log file.

### Automated Backup
Creates timestamped compressed `.tar.gz` archives of sample data.

### System Monitoring
Collects disk and memory usage information.

### Error Logging
Redirects standard error output to a dedicated error log.

## How to Run

1. Clone or download the repository.
2. Review and update the script paths.
3. Make scripts executable:

   `chmod +x *.sh`

4. Test each script manually.
5. Add the required schedules using `crontab -e`.
6. Verify jobs with `crontab -l`.
7. Inspect generated backups, reports, and logs.

## Verification

- Confirm scheduled jobs are listed.
- Check that backup archives are generated.
- Inspect the system report.
- Test error redirection using `test_error.sh`.

## Learning Outcomes

Practiced Cron expressions, Bash scripting, automated backups, basic system monitoring, and error logging.

## Disclaimer

This is a learning project. Test scripts in a safe environment before using them on production systems.
