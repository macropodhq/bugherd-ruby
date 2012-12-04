require 'bugherd/configuration'

module BugHerd
require 'bugherd/railtie'
  class << self

    attr_writer :configuration

    def configuration
      @configuration ||= Configuration.new
    end

    def configure
      yield(configuration)
    end
  end
end
