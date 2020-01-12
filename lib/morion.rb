require 'morion/version'
require 'morion/web'

module Morion
  class Error < StandardError
  end

  module_function

  def start
    Web.app.run!
  end
end
