<p align="center">
  <img
    src="https://raw.githubusercontent.com/Shanuka-Dulshan/project-assets/refs/heads/main/git-cleanup/git-cleanup-cover.png"
    alt="git-cleanup — Guided Git history cleanup"
    width="100%"
  />
</p>

<p align="left">
  <a href="https://github.com/Shanuka-Dulshan/git-cleanup">
    <img src="https://img.shields.io/badge/platform-Codespaces%20%7C%20Linux-2563EB?style=flat-square&logo=linux&logoColor=white" alt="Platform" />
  </a>
  <a href="https://www.gnu.org/software/bash/">
    <img src="https://img.shields.io/badge/shell-Bash-4EAA25?style=flat-square&logo=gnubash&logoColor=white" alt="Bash" />
  </a>
  <a href="https://github.com/newren/git-filter-repo">
    <img src="https://img.shields.io/badge/Git-history%20cleanup-F05032?style=flat-square&logo=git&logoColor=white" alt="Git history cleanup" />
  </a>
  <a href="LICENSE">
    <img src="https://img.shields.io/badge/license-MIT-blue?style=flat-square" alt="MIT License" />
  </a>
  <a href="https://github.com/Shanuka-Dulshan/git-cleanup/stargazers">
    <img src="https://img.shields.io/github/stars/Shanuka-Dulshan/git-cleanup?style=flat-square&logo=github" alt="GitHub stars" />
  </a>
  <a href="https://github.com/Shanuka-Dulshan/git-cleanup/issues">
    <img src="https://img.shields.io/github/issues/Shanuka-Dulshan/git-cleanup?style=flat-square" alt="GitHub issues" />
  </a>
</p>
# git-cleanup


**Remove a file or folder from Git history with a guided wizard. No Git expertise needed.**

Accidentally committed something? Select it. Confirm the cleanup. Push the cleaned history.

That's it. No manuals, no 3 a.m. Stack Overflow rabbit holes, no whispering "please don't break" at your terminal.

---

## Who is this for?

You know *exactly* what you want gone (a private doc, an API key file, that `final_FINAL_v2.pdf`), but you don't know the history-rewriting commands to make it happen safely. This tool asks simple questions, does the scary parts for you, and explains things in plain English.

## What you need

- A GitHub repo with the thing you want to remove
- A **GitHub Codespace** (a terminal in your browser, nothing to install on your own computer)

> Note: the lightweight web editor (the one you get by pressing `.`) has no terminal, so it won't work. You need a full Codespace.

## Quick start

**1. Open a Codespace on your repo**
On your repo page: green **Code** button → **Codespaces** tab → **Create codespace on main**.

**2. Open the terminal**
Press **Ctrl + `** (or menu: Terminal → New Terminal).

**3. Install the tool**

```bash
curl -fsSL https://raw.githubusercontent.com/Shanuka-Dulshan/git-cleanup/main/install.sh | bash
```

If it tells you it added something to your PATH, run:

```bash
source ~/.bashrc
```

**4. Run it**

```bash
git-cleanup
```

If you get `command not found`, run it directly:

```bash
~/.local/bin/git-cleanup
```

## What the wizard does

1. **Checks your setup.** Looks for Git and git-filter-repo, and offers to install the latter if it's missing.
2. **Lets you pick what to remove.** Search by name and choose from a list. Files and folders that were deleted long ago are included, because Git remembers everything (that's the problem).
3. **Makes a backup first.** Saves a `.bundle` file so you can undo if something goes wrong.
4. **Asks you to confirm.** Nothing is rewritten until you type `yes`.
5. **Cleans your history.** Removes the file or folder from every commit on every branch and tag.
6. **Verifies the result.** Checks that the path is really gone.
7. **Optionally pushes to GitHub.** Shows exactly which branches and tags will be overwritten, and only pushes if you type `push`.

Nothing destructive happens silently. If the tool needs to bypass a safety check, it tells you why and asks first.

## Good to know

- **Collaborators will need to re-clone.** Rewriting history changes commit IDs, so old copies won't match.
- **Forks, open pull requests, and GitHub's caches may still hold the old data.** This tool cleans *your* repo. It can't reach into other people's copies. If you need those purged, contact GitHub Support.
- **If it was a password, key, or token: change it.** Removing a secret from history does not un-leak it. Assume it was seen, and rotate it.
- **Codespaces are temporary.** The backup lives inside the Codespace, so download it before deleting the Codespace if you want to keep it.
- **Protected branches** may reject the force-push. The tool will explain what to do. You'll need to temporarily allow force pushes in your repo's branch settings.
- **One path per run.** To remove several things, run it again.
- **Renamed files:** if the file had a different name earlier in history, run the tool again with the old name.

## What this is not

- Not a replacement for Git or git-filter-repo
- Not a secret scanner (try [Gitleaks](https://github.com/gitleaks/gitleaks) for that)
- Not a guarantee that your data vanishes from the entire internet

## Built on git-filter-repo

The heavy lifting is done by [**git-filter-repo**](https://github.com/newren/git-filter-repo), the excellent history-rewriting tool by Elijah Newren, which is also what the Git project itself recommends. This tool is just a friendly wizard wrapped around it. All the credit for the actual rewriting goes to that project.

## Disclaimer

**Use at your own risk.** Rewriting Git history is a destructive operation. This software is provided "as is", without warranty of any kind, express or implied, including but not limited to warranties of merchantability, fitness for a particular purpose, and non-infringement. In no event shall the authors or copyright holders be liable for any claim, damages, or other liability, including data loss, arising from the use of this software. Always keep a backup of anything you can't afford to lose. The tool makes one for you, but you're responsible for checking it.

## License

[MIT](LICENSE). Use it, copy it, change it, share it. Have fun.
