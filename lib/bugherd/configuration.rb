module BugHerd
  class Configuration

    attr_accessor :project_key

    def [](option)
      send(option)
    end

  end
end
