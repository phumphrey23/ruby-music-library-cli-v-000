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
      self.all.select{|song| song.name == name}
    end

    def find_or_create_by_name(name)
      self.find_by_name(name) || self.create(name)
    end
  end
end

require_all 'lib'
