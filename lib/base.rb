class Base

	extend Concerns::Findable
	extend Concerns::ClassMethods

	attr_accessor :name

	@@all = []

	def self.all
		@@all
	end

	def save
		@@all << self
		self
	end

	def self.create(name)
		new(name).save
	end

end
