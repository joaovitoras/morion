module Morion
  class Engine < ::Rails::Engine
    require 'jquery-rails'
    require 'font-awesome-sass'
    require 'find'
    require_relative 'folders_and_files_finder'
    require_relative 'file'

    isolate_namespace Morion

    config.assets.precompile += [
      '*.png',
      '*.svg'
    ]
  end
end
