# GitHub Commit Hooks Collection

This repository is a curated collection of pre-commit and post-commit hooks that can be used to enhance your GitHub workflow.

## Overview

Commit hooks are scripts or programs that run automatically before or after a commit is made. They can be used to enforce coding standards, run tests, or perform other automated tasks to ensure the quality and consistency of your codebase.

### Directory Structure

The repository is organized into two main directories:

- `pre-commit-hooks`: Contains pre-commit hooks that run before a commit is made. These hooks can be used to check the code for issues, enforce coding standards, or run tests.
  
- `post-commit-hooks`: Contains post-commit hooks that run after a commit is made. These hooks can be used to trigger additional actions such as sending notifications, updating documentation, or deploying the code.

### pre-commit-hooks
no_console_log_hook.sh: Pre-commit hook to prevent commits with uncommented 'console.log' statements in staged JavaScript files.
