require File.dirname(__FILE__) + "/../lib/remodel"

class Book < Remodel::Entity
  has_many :chapters, :class => 'Chapter', :reverse => :book
  property :title, :short => 't', :class => 'String'
  property :year, :class => 'Integer'
  property :author, :class => 'String', :default => '(anonymous)'
end

class Chapter < Remodel::Entity
  has_one :book, :class => Book, :reverse => :chapters
  property :title, :class => String
end

