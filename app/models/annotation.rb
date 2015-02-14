class Annotation < ActiveRecord::Base
  belongs_to :document
  
  def spellcheck
    #Do stuff
    puts "Hello World"
  end
end
