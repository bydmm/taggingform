require 'taggingform/engine'
require 'taggingform/helper'

module TaggingForm
  
  def self.setup
    yield self
  end
  
end