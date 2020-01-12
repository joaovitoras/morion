require 'find'
require 'morion/file_ref'

module Morion
  class FoldersAndFilesFinder
    EXTENSION_FILTER_REGEX = /.*(\.jpg|\.jpeg|\.png|\.svg)/.freeze

    def initialize(blacklist:)
      @current_path = Dir.pwd
      @current_path_slashed = @current_path + '/'
      @blacklist = blacklist
    end

    def files_by_folders
      files = file_paths.map do |path|
        FileRef.new(path, @current_path_slashed)
      end

      format_result(files)
    end

    def file_paths
      Find.find(@current_path).select do |path|
        path =~ EXTENSION_FILTER_REGEX && permitted_path?(path)
      end
    end

    def format_result(files)
      files.group_by(&:folder_path)
    end

    private

    def permitted_path?(path)
      if @blacklist.any?
        !blacklisted?(path)
      else
        true
      end
    end

    def blacklisted?(path)
      include_path?(path)
    end

    def include_path?(path)
      @blacklist.any? do |filter|
        path.match(/#{filter}/)
      end
    end
  end
end
