require_dependency "morion/application_controller"

module Morion
  class MorionController < ApplicationController
    def index
      root = Rails.root.to_s
      regex = /.*(\.jpg|\.jpeg|\.png|\.svg)/

      app_assets_paths = Rails.application.assets.paths.select {|path| path =~ /#{root}/}
      app_assets_paths = app_assets_paths.map do |path|
        pathname = Pathname.new(path)
        pathname.exist? ? pathname.cleanpath : nil
      end.compact

      files_data = Find.find(*app_assets_paths).select {|path| path =~ regex }

      files_data = files_data.map do |path|
        filename = path.match(/(?:.+\/)([^#?]+)/)[1]
        extension = filename.match(/(\.[^\\]+)$/)[1]
        asset_path = path
        folder_path = path.gsub(root, "")

        app_assets_paths.each do |rails_path|
          asset_path.gsub!("#{rails_path}/", "")
        end

        {filename: filename, asset_path: asset_path, path: folder_path, extension: extension}
      end

      @folders = files_data.group_by {|file| file[:path].match(/(.*\/).*/)[1] }
    end

    protected
  end
end
