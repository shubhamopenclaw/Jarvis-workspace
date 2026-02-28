# HEARTBEAT.md

# ALPHANIX Operational Heartbeat
# This file governs proactive checks. Follow strictly. 
# If nothing needs attention, reply HEARTBEAT_OK.

## 🚀 Active Operation Protocol
- **Cron Monitoring:** If a manual cron run is active, check status every 30-60s.
- **Cron Error Recovery:** Check `openclaw cron list` for 'error' status. If found, attempt manual retry immediately.
- **GitHub Pulse:** Ensure workspace changes are pushed to `Jarvis-workspace` origin.

## 🛡️ Maintenance
- **File Hygiene:** If `design_history.md` or `social_trends.md` exceed 500 lines, flag for archiving.

