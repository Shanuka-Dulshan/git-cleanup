# Contributing to git-cleanup

Thanks for your interest in contributing to `git-cleanup`!

Contributions are welcome, but all changes are subject to maintainer review. The goal is to keep this tool simple, reliable, and safe to use.

## Before You Start

- Check existing issues and pull requests before starting work.
- Open an issue to discuss major changes before implementing them.
- Keep pull requests focused and easy to review.
- Be respectful and constructive in discussions.

## What Can You Contribute?

- Bug fixes and reliability improvements
- Better error handling and user feedback
- Compatibility fixes
- Documentation improvements
- Tests and edge-case handling
- Feature proposals that fit the project's scope

## Submitting a Pull Request

1. Fork this repository.
2. Create a branch for your changes.
3. Make your changes and test them locally.
4. Review your changes for unrelated files or accidental sensitive data.
5. Commit your changes with a clear commit message.
6. Push your branch to your fork.
7. Open a pull request against the `main` branch, explaining what changed, why it is needed, and how you tested it.

Submitting a pull request does not guarantee acceptance. The maintainer may request changes or decline contributions that do not fit the project's goals or quality standards.

## Safety Requirements

Because `git-cleanup` can rewrite Git history and interact with remote repositories, safety is a priority.

- Do not silently remove safety confirmations or safeguards.
- Do not introduce automatic destructive operations without explicit user confirmation.
- Handle Git errors and unexpected repository states explicitly.
- Do not modify unrelated repositories, branches, or tags.
- Test failure scenarios as well as successful operations.
- Never include credentials, access tokens, private repository data, or other secrets in commits, logs, tests, or screenshots.

Test destructive operations only against disposable repositories containing test data. Never use a real project or repository containing data you care about for destructive testing.

## Review Process

Every contribution is reviewed before merging. The maintainer may request changes, decline a proposal, or close a pull request that introduces unacceptable risks, lacks sufficient testing, or falls outside the project's scope.

Please keep discussions focused on the code and the problem being solved.

## Reporting Bugs

Use GitHub Issues to report reproducible bugs or suggest improvements. Include:

- Your operating system and relevant Git version
- Steps to reproduce the problem
- Expected behavior
- Actual behavior
- Relevant error messages, with secrets removed

Do not post credentials, private repository contents, or sensitive security details in public issues.

Thanks for helping improve `git-cleanup`!
