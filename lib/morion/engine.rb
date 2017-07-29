module Morion
  class Engine < ::Rails::Engine
    require 'jquery-rails'
    require 'font-awesome-rails'
    require 'find'

    isolate_namespace Morion

    config.assets.precompile += [
      '*.png',
      '*.svg'
    ]
  end
end
