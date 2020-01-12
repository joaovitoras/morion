require 'morion/web/helpers/application_helper'
require 'morion/web/controllers/application_controller'
require 'morion/web/controllers/folders_controller'

module Morion
  module Web
    def self.app
      FoldersController
    end
  end
end
