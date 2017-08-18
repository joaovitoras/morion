module Morion
  class File
    FILENAME_REGEX = /(?:.+\/)([^#?]+)/
    EXTENSION_REGEX = /\.[^.]*$/

    def initialize(path, assets_paths, rails_root)
      @path = path
      @assets_paths = assets_paths
      @rails_root = rails_root
    end

    def filename
      @path.match(FILENAME_REGEX)[1]
    end

    def extension
      filename.match(EXTENSION_REGEX)[1]
    end

    def asset_path
      file_path = @path

      @assets_paths.each do |rails_path|
        file_path = file_path.gsub("#{rails_path}/", "")
      end

      file_path
    end

    def folder_path
      @path.gsub(@rails_root, "").match(/(.*)\/.*/)[1]
    end
  end
end
