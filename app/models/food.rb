class Food < ActiveRecord::Base
   has_many :serving_sizes, :dependent => :destroy
   validates_presence_of :name
end
