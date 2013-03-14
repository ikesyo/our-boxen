class people::ikesyo {
  include dropbox
  include chrome
  include firefox
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
    'CleanArchiver':
      source   => "http://www.sopht.jp/pub/Mac/CleanArchiver-3.0a6.dmg",
      provider => compressed_app;
    'BetterTouchTool':
      source   => "http://www.boastr.de/BetterTouchTool.zip",
      provider => compressed_app;
    'ClipMenu':
      source   => "https://dl.dropbox.com/u/1140644/clipmenu/ClipMenu_0.4.3.dmg",
      provider => compressed_app;
    'CotEditor':
      source   => "http://sourceforge.jp/frs/redir.php?m=osdn&f=%2Fcoteditor%2F54872%2FCotEditor_1.3.1_For10.7.dmg",
      provider => compressed_app;
    'SourceTree':
      source   => "http://downloads.atlassian.com/software/sourcetree/SourceTree_1.5.7.1.dmg",
      provider => compressed_app;
  }

  $home     = "/Users/${::luser}"
  $src      = "${home}/src"
  $dotfiles = "${src}/dotfiles"
}