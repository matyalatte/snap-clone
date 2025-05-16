# snap-clone

A tiny shell script to download snapshots of git repositories.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![donate](https://img.shields.io/static/v1?label=donate&message=%E2%9D%A4&logo=GitHub&color=%23fe8e86)](https://github.com/sponsors/matyalatte)

## About

snap-clone is an alternative to `git clone --depth=1` without requiring git. It downloads and extracts archives of git repositories by using curl and tar. Currently, it **only works for public github (or gitlab) repositories**.

## Requirements

- POSIX compliant shell
- curl
- tar

## Usage

```
snap-clone <https-url> [ref]

Examples:
  snap-clone https://github.com/user/repo          # clones default branch
  snap-clone https://gitlab.com/user/repo main     # clones branch
  snap-clone https://github.com/user/repo v1.0.0   # clones tag
  snap-clone https://gitlab.com/user/repo <sha>    # clones commit
  snap-clone https://gitlab.gnome.org/user/repo    # clones from a gitlab instance
  snap-clone https://gitlab.com/user/repo.git      # .git also works
```

## Installation

```shell
sudo apt install curl tar
sudo curl -L https://raw.githubusercontent.com/matyalatte/snap-clone/main/snap-clone -o /usr/local/bin/snap-clone
sudo chmod +x /usr/local/bin/snap-clone
```
