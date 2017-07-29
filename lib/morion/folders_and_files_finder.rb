module Morion
  class FoldersAndFilesFinder
    EXTENSION_FILTER_REGEX = /.*(\.jpg|\.jpeg|\.png|\.svg)/

    def initialize
      @rails_root = Rails.root.to_s
    end

    def folder_paths
      app_assets_paths = Rails.application.assets.paths.select {|path| path =~ /#{@rails_root}/}
      app_assets_paths.map do |path|
        pathname = Pathname.new(path)
        pathname.exist? ? pathname.cleanpath : nil
      end.compact
    end

    def file_paths
      Find.find(*folder_paths).select do |path|
        path =~ EXTENSION_FILTER_REGEX
      end
    end

    def files_by_folders
      files = file_paths.map do |path|
        File.new(path, folder_paths, @rails_root)
      end

      @folders = files.group_by {|file| file.folder_path }
    end
  end
end
