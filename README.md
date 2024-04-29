# GitHub Commit Hooks Collection

This repository is a curated collection of pre-commit and post-commit hooks that can be used to enhance your GitHub workflow.

## Overview

Commit hooks are scripts or programs that run automatically before or after a commit is made. They can be used to enforce coding standards, run tests, or perform other automated tasks to ensure the quality and consistency of your codebase.

### Directory Structure

The repository is organized into two main directories:

- `pre-commit-hooks`: Contains pre-commit hooks that run before a commit is made. These hooks can be used to check the code for issues, enforce coding standards, or run tests.
  
- `post-commit-hooks`: Contains post-commit hooks that run after a commit is made. These hooks can be used to trigger additional actions such as sending notifications, updating documentation, or deploying the code.

## Usage 

1. Clone the Repository
- git clone https://github.com/yourusername/commit-hooks-collection.git

2. Navigate to your project's .git/hooks directory and copy the hooks from the cloned repository:
- cp -r commit-hooks-collection/pre-commit/* .git/hooks/pre-commit/
- cp -r commit-hooks-collection/post-commit/* .git/hooks/post-commit/

3. Ensure that the hooks are executeable
- chmod +x .git/hooks/pre-commit/*
- chmod +x .git/hooks/post-commit/*


### pre-commit-hooks
- no_console_log_hook.sh: Pre-commit hook to prevent commits with uncommented 'console.log' statements in staged JavaScript files.

### post-commit-hooks
- slack-notifications.sh: Sends a Slack notification to a slack channel informing the team of every new commit. Make sure to update the value for SLACK_WEBHOOK_URL variable with your slack webhook URL.