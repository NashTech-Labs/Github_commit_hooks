#!/bin/bash

# Post-commit hook to send a notification to Slack channel after a commit.

# Slack webhook URL
SLACK_WEBHOOK_URL="https://hooks.slack.com/services/YOUR/WEBHOOK/URL"

# Function to send a message to Slack channel
send_slack_notification() {
    local message="$1"
    curl -s -X POST -H 'Content-type: application/json' --data "{\"text\":\"$message\"}" "$SLACK_WEBHOOK_URL" > /dev/null
}

# Get the commit details
commit_message=$(git log -1 --pretty=%B)
commit_author=$(git log -1 --pretty=%an)
commit_date=$(git log -1 --pretty=%cd)

# Construct the notification message
notification_message="New commit by *${commit_author}* on *${commit_date}*:\n${commit_message}"

# Send notification to Slack channel
send_slack_notification "$notification_message"
