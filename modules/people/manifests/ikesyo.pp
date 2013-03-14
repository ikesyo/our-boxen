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
  
  package {
    'Kobito':
      source   => "http://kobito.qiita.com/download/Kobito_v1.2.0.zip",
      provider => compressed_app;
    'XtraFinder':
      source   => "http://www.trankynam.com/xtrafinder/downloads/XtraFinder.dmg",
      provider => pkgdmg;
    'Google 日本語入力':
      source   => "http://dl.google.com/japanese-ime/1.8.1310.1/googlejapaneseinput.dmg",
      provider => pkgdmg;
  }

  $home     = "/Users/${::luser}"
  $src      = "${home}/src"
  $dotfiles = "${src}/dotfiles"
}