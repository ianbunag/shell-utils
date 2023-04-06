# shell-utils

Shell utility scripts

- [Clean branches](#clean-branches)
  - [Registration](#registration)
  - [Usage](#usage)
- [Google Chrome](#google-chrome)
  - [Registration](#registration-1)
  - [Usage](#usage-1)
- [JIRA identified git commit](#jira-identified-git-commit)
  - [Registration](#registration-2)
  - [Usage](#usage-2)

## Clean branches

Remove non base branches

- Alias in preferred shell
- Pass mode as first argument
- Pass in ignored branch patterns

### Registration

```sh
# Run with no force delete
alias gx="sh /path/to/shell-utils/clean-branches.sh normal main$ master$"
# Run with force delete
alias gxf="sh /path/to/shell-utils/clean-branches.sh force main$ master$"
```

### Usage

```sh
# Run with no force delete
gx
# Run with force delete
gxf
```

## Google Chrome

Remove non base branches

- Open current directory in Google Chrome
- Open HTML file in Google Chrome

### Registration

```sh
alias c="sh /path/to/shell-utils/google-chrome.sh"
```

### Usage

```sh
# Open current directory in Google Chrome
c
# Open HTML file in Google Chrome
c index.html
```

## JIRA identified git commit

Automatically prefix JIRA identity to commit message

- For branch names with pattern XXX-1234-short-description
- Identity will be extracted as XXX-1234

### Registration

```sh
alias gcj="sh /path/to/shell-utils/jira-git-commit.sh"
```

### Usage

```sh
gcj Fix logging

git log
commit 1f017dde805405c98336730886919e3c238fbd6b (HEAD -> XXX-1234-short-description)
Author: Some User <some.user@gmail.com>
Date:   Fri Jul 1 09:59:01 2022 +0800

    XXX-1234: Fix logging
```
