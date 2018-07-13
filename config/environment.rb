require 'bundler'
Bundler.require

module Concerns

  module ClassMethods

    def destroy_all
      self.all.clear
    end

  end

  module Findable
    def find_by_name(name)
      all.detect{|a| a.name == name}
    end

    def find_or_create_by_name(name)
      find_by_name(name) || create(name)
    end
  end
end

require_all 'lib'
