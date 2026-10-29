# Security Policy

Security is especially important for `git-cleanup` because it can rewrite Git history and interact with remote repositories.

## Reporting a Vulnerability

Please report suspected security vulnerabilities privately through GitHub's private vulnerability reporting feature, if it is enabled for this repository.

Do not publish exploit details, credentials, or sensitive information in a public issue before the vulnerability has been assessed.

Include the following information when possible:

- A description of the vulnerability
- The affected version
- Steps to reproduce the issue
- The potential impact
- Any suggested mitigation

If private vulnerability reporting is unavailable, contact the maintainer through an available private contact method rather than publishing sensitive details publicly.

## Security Scope

Security reports are particularly relevant to:

- Unintended deletion or rewriting of Git history
- Unexpected remote pushes or force pushes
- Bypassing safety confirmations
- Execution of unintended commands
- Exposure of credentials or sensitive repository information
- Operations affecting repositories, branches, or tags outside the user's intended scope

## Supported Versions

Security fixes are prioritized for the latest version of `git-cleanup`. Users should update to the latest release when practical.

## Responsible Disclosure

Please allow the maintainer reasonable time to investigate and address a reported vulnerability before publicly disclosing technical details.
