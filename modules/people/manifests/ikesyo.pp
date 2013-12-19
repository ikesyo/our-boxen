class people::ikesyo {
  # boxen/puppet-osx
  include osx::finder::show_external_hard_drives_on_desktop
  include osx::finder::show_removable_media_on_desktop
  include osx::finder::unhide_library
  include osx::global::enable_keyboard_control_access
  include osx::global::expand_print_dialog
  include osx::global::expand_save_dialog
  include osx::no_network_dsstores
  include osx::software_update
  include osx::universal_access::ctrl_mod_zoom

  class { 'osx::global::key_repeat_delay':
    delay => 25
  }
  class { 'osx::global::key_repeat_rate':
    rate => 2
  }

  # OSX Defaults
  # https://gist.github.com/jfryman/4963514
  boxen::osx_defaults { 'Always use current directory in default search':
    user   => $::boxen_user,
    key    => 'FXDefaultSearchScope',
    domain => 'com.apple.finder',
    value  => 'SCcf',
  }
  boxen::osx_defaults { 'Put my Dock on the right':
    user   => $::boxen_user,
    key    => 'orientation',
    domain => 'com.apple.dock',
    value  => 'right',
  }
  boxen::osx_defaults { 'Make function keys do real things, and not apple things':
    user   => $::boxen_user,
    key    => 'com.apple.keyboard.fnState',
    domain => 'NSGlobalDomain',
    type   => 'boolean',
    value  => true,
  }
  
  # Key Remap
  include keyremap4macbook
  include keyremap4macbook::login_item  
  keyremap4macbook::remap { 'jis_command2eisuukana_prefer_command': }
  keyremap4macbook::remap { 'jis_eisuu2commandL_eisuu': }
  keyremap4macbook::remap { 'jis_kana2commandR_kana': }
  
  # android
  include android::studio
      
  # applications
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

  # homebrew
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
      source   => "https://d1kbf262vwnlmm.cloudfront.net/Bitcasa_1.4.1287.dmg",
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
      source   => "https://github-central.s3.amazonaws.com/mac/GitHub%20for%20Mac%20164.zip",
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
  
  #shell
  include zsh

  $home     = "/Users/${::boxen_user}"
  $src      = "${home}/src"
  $dotfiles = "${src}/dotfiles"
}
