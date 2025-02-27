# machine_setup
![build status](https://github.com/praisetompane/machine_setup/actions/workflows/machine_setup.yaml/badge.svg) <br>

## Objectives
An automated repo to setup machine.

## Dependencies
```shell
./brew.sh
```

## Usage
- Install all packages
```shell
./install.sh all
```

- Install specific package
```shell
# Please substitute package_name with a package(i.e. folder).
./install.sh package_name
```
### Example:
```shell
# Install text_editors package
./install.sh text_editors
```