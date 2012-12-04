require 'bugherd/helpers/bugherd_helper'

module BugHerdHelper
  class Railtie < Rails::Railtie
    initializer "BugHerdHelper" do
      ActionView::Base.send :include, BugHerdHelper
    end
  end
end
