#!/bin/bash

# Check for an environment variable, say LOG_TO_CONSOLE
if [ "$LOG_TO_CONSOLE" == "true" ]; then
    sed -i 's/#ForwardToConsole=no/ForwardToConsole=yes/' /etc/systemd/journald.conf
    systemctl restart systemd-journald
fi

# Now, execute the CMD
exec "$@"