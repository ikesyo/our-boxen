class people::ikesyo {
  include dropbox
  include chrome
  include firefox
  include skype
  include sublime_text_2
  include sparrow
  include appcleaner
  include mou
  include zsh

  # homebrewでインストール
  package {
    [
      'git-flow',
    ]:
  }

  $home     = "/Users/${::luser}"
  $src      = "${home}/src"
  $dotfiles = "${src}/dotfiles"
}