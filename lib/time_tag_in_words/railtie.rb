require 'time_tag_in_words/view_helpers'

module TimeTagInWords
  class Railtie < Rails::Railtie
    initializer "time_tag_in_words.view_helpers" do
      ActionView::Base.send :include, TimeTagInWords::ViewHelpers
    end
  end
end
