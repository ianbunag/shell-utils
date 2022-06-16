# shell-**utils**

Shell utility scripts

## Clean branches

Remove non base branches
- Alias in preferred shell
- Pass mode as first argument
- Pass in ignored branch patterns

### Registration
```sh
# Run with no force delete
alias gc="sh /path/to/shell-utils/clean-branches.sh normal main$ master$"
# Run with force delete
alias gcf="sh /path/to/shell-utils/clean-branches.sh force main$ master$"
```

### Usage
```sh
# Run with no force delete
gc
# Run with force delete
gcf
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