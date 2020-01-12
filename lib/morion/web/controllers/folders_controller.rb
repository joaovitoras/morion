require 'morion/folders_and_files_finder'

module Morion
  module Web
    class FoldersController < ApplicationController
      get '/' do
        title 'Folders'

        @folders = FoldersAndFilesFinder.new(blacklist: settings.blacklist).files_by_folders
        erb :folders
      end
    end
  end
end
