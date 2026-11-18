# My Dotfiles

## Requirements

Ensure you have the following installed on your system

### Git

arch
```
$ pacman -S git
```

mac
```
$ brew install git
```

### Stow

arch
```
$ pacman -S stow
```

```
$ brew install stow
```

### Installation

First checkout the dotfiles repo in your $HOME directory using git

```
$ git clone git@github.com:Tkdefender88/dotfiles.git
$ cd dotfiles
```

Then use GNU stow to create the symlinks

```
$ stow .
```
