module Morion
  module Config
    class << self
      # Configuration option to specify a blacklist of folders you want to Morion don't work with.
      attr_accessor :blacklist

      # Configuration option to specify a whitelist of folders you want to Morion to work with.
      attr_accessor :whitelist

      def set_default_values
        @blacklist = []
        @whitelist = []
      end
    end

    set_default_values
  end
end
