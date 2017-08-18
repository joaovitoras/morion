require "morion/config"
require "morion/engine"

module Morion
  def self.config(&block)
    if block_given?
      block.call(Morion::Config)
    else
      Morion::Config
    end
  end
end
