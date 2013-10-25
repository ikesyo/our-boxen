class people::ikesyo {
  include alfred
  include appcleaner
  include better_touch_tools
  include chrome
  include clipmenu
  include dropbox
  include firefox
  include mou
  include skype
  include sourcetree
  include sublime_text_2
  include vagrant
  include virtualbox
  include zsh

  # homebrewでインストール
  package {
    [
      'gibo',
      'git-flow',
      'sbt',
      'scala',
      'tree',
      'xctool',
    ]:
  }
  
  package {
    'Bartender':
      source   => "http://www.macbartender.com/Demo/Bartender.zip",
      provider => compressed_app;
    'Bitcasa':
      source   => "https://www.bitcasa.com/download/mac",
      provider => pkgdmg;
    'CleanArchiver':
      source   => "http://www.sopht.jp/pub/Mac/CleanArchiver-3.0a6.dmg",
      provider => appdmg;
    'Copy':
      source   => "https://copy.com/install/mac/Copy.dmg",
      provider => appdmg;
    'CotEditor':
      source   => "http://sourceforge.jp/frs/redir.php?m=osdn&f=%2Fcoteditor%2F54872%2FCotEditor_1.3.1_For10.7.dmg",
      provider => appdmg;
    'GitHub for Mac':
      source   => "https://central.github.com/mac/latest",
      provider => compressed_app;
    'Google Japanese Input':
      source   => "http://dl.google.com/japanese-ime/latest/GoogleJapaneseInput.dmg",
      provider => pkgdmg;
    'Kobito':
      source   => "http://kobito.qiita.com/download/Kobito_v1.8.2.zip",
      provider => compressed_app;
    'XtraFinder':
      source   => "http://www.trankynam.com/xtrafinder/downloads/XtraFinder.dmg",
      provider => pkgdmg;
  }

  $home     = "/Users/${::boxen_user}"
  $src      = "${home}/src"
  $dotfiles = "${src}/dotfiles"
}
