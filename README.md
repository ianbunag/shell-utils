# shell-utils

Shell utility scripts

## Clean branches

Remove non base branches
- Alias in preferred shell
- Pass mode as first argument
- Pass in ignored branch patterns

```sh
# Run with no force delete
alias gc="sh /path/to/shell-utils/clean-branches.sh normal main$ master$"
# Run with force delete
alias gcf="sh /path/to/shell-utils/clean-branches.sh force main$ master$"
```
