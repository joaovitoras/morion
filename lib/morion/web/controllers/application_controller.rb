require 'sinatra/base'
require 'sinatra/asset_pipeline'

module Morion
  module Web
    class ApplicationController < Sinatra::Base
      helpers ApplicationHelper

      set :assets_paths, [Dir.pwd, File.expand_path('../assets', __dir__)]

      register Sinatra::AssetPipeline

      # set folder for templates to ../views, but make the path absolute
      set :views, File.expand_path('../views', __dir__)

      set_default :blacklist, ['node_modules']

      # don't enable logging when running tests
      configure :development do
        enable :logging
      end

      # will be used to display 404 error pages
      not_found do
        title 'Not Found!'
        erb :not_found
      end
    end
  end
end
