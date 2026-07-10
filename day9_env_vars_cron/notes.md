# Day 9 - Environment Variables & Cron

## Commands covered
- `export VAR="value"` - set environment variable (temporary, session only)
- `echo $VAR` - print a variable's value
- `echo 'export VAR="value"' >> ~/.bashrc` - make variable permanent
- `source ~/.bashrc` - reload shell config immediately
- `crontab -e` - edit scheduled cron jobs
- `crontab -l` - list current cron jobs
- `crontab -r` - remove all cron jobs
- `echo "job line" | crontab -` - add a cron job without opening an editor (safer, avoids editor keybinding conflicts)
- `service cron status` - check if cron daemon is running

## Key concepts
- Env variables set with `export` only last for the current terminal session
- `.bashrc` runs automatically on every new shell -> permanent variables go there
- Cron time syntax: `minute hour day-of-month month day-of-week command` (use `*` for "any")
- Example: `0 * * * *` = runs every hour, on the hour
- Cron needs full/absolute paths (doesn't know current directory context)
- `>> file 2>&1` redirects both normal output and errors into a log file
- WSL note: cron daemon may need manual start via `service cron start` (varies by setup)
