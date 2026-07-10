# Day 8 - Networking & Services

## Commands covered
- `ping -c 4 <host>` - check network reachability, round-trip time
- `curl -I <url>` - check HTTP status/headers of a web service (health check)
- `ss -tuln` - list listening TCP/UDP ports on local machine
- `systemctl status <service>` - check if a background service is active/running
- `sudo systemctl start/stop/restart <service>` - manage services

## Key concepts
- ping tests network path; curl tests the actual service/app response
- Render free tier apps "cold start" after inactivity (sleep, then wake on request)
- WSL + Docker Desktop: docker runs on Windows side, not as systemd service in WSL
- systemctl status shows: Loaded/enabled (auto-start on boot), Active (running/dead/failed), Main PID
