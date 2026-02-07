# Dotfiles
My personal configuration files, managed with GNU Stow.

## Introduction
A `stow` package is a top-level directory that defines a sub-file system of config files. Any such files placed inside a package are symbolically linked into a given target directory, and any sub-paths are mirrored to preserve structure.

## Usage
Run any `stow` command from the repository root. Specify a package `<source>`, that is a sub-directory, to link or process all by using the `*/` glob pattern.

```sh
stow [OPTIONS] <source>
```

Common options used by me are shown below.

- `-R`: Reapply all symbolic links, that is first remove and then relink.
- `-D`: Remove the links in the given packages.
- `-v`: Enable verbose logging. (Useful when debugging and transparency.)
- `-n`: Perform a dry run to preview any would-be changes.

*No need for an explicit `-t`; the default target is your home directory.*

## Configuration
A `.stowrc` file sets default `stow` options, which is why the target can be omitted.
