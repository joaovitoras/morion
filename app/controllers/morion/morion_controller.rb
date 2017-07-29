require_dependency "morion/application_controller"

module Morion
  class MorionController < ApplicationController
    def index
      @folders = FoldersAndFilesFinder.new.files_by_folders
    end

    protected
  end
end
