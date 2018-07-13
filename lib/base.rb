class Base

	extend Concerns::Findable
	extend Concerns::ClassMethods

	attr_accessor :name

	@@all = []

	def self.all
		@@all
	end

	def save
		self.class.all << self
	end

	def self.create(name)
		new(name).tap{ |i| i.save }
	end


end
