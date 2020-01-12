module Morion
  class FileRef
    FILENAME_REGEX = %r{(?:.+/)([^#?]+)}.freeze
    EXTENSION_REGEX = /\.[^.]*$/.freeze

    attr_accessor :path, :filename, :extension, :folder_path, :relative_path

    def initialize(path, current_path)
      @path = path
      @current_path = current_path
      @filename = @path.match(FILENAME_REGEX)[1]
      @extension = filename.match(EXTENSION_REGEX)[0]
      @relative_path = @path.gsub(@current_path, '')
      @folder_path = @relative_path.match(%r{(.*)/.*})[1]
    end
  end
end
