# terragrunt-github-actions

<hr>

Terragrunt GitHub Actions allow to execute Terragrunt commands within GitHub Actions.

<hr>

## Usage

Commands available:

- init
- plan
- apply

## Example

```hcl
on: [push]

jobs:
  terragrunt:
    name: 'Terragrunt'
    runs-on: ubuntu-latest
    steps:
      - name: Terragrunt init
        uses: nulldutra/terragrunt-gh-action@v1
        with:
          tf_version: 1.0.6
          tg_version: 0.36.7
          tg_command: 'init'
          tg_working_dir: '.'
          git_ssh_key:  ${{ secrets.git_ssh_key }}
```

## Inputs

| Input name     | Description                                         | Required |
|----------------|-----------------------------------------------------|----------|
| tf_version     | The terraform version to install and execute        | Yes      |
| tg_version     | The terragrunt version to install and execute       | Yes      |
| tg_command     | The terragrunt command to execute                   | Yes      |
| tg_working_dir | The working directory to execute terragrunt commands| Yes      |
| git_ssh_key    | The SSH Key to clone terraform modules              | NO       |

<hr>

* This is a refactoring of `https://github.com/marketplace/actions/terragrunt-github-actions`
