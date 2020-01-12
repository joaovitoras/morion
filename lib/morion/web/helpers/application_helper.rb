module Morion
  module Web
    module ApplicationHelper
      def title(value = nil)
        @title = value
      end

      def img(path, params = {})
        "<img src='assets/#{path}' class='#{params[:class]}' />"
      end
    end
  end
end
