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

### Skate

arch
```
$ pacman -S skate
```

mac
```
$ brew install skate
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

Set the following keys in skate

```
$ skate set cloudsmith_user <your user>
$ skate set cloudsmith_api_key <your cloudsmith api key>
$ skate set gitlab_signoz_mcp_api_key <your signoz gitlab key>
```
