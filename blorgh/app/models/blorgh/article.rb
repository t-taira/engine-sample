module Blorgh
  class Article < ActiveRecord::Base
    include Concerns::Article

    has_many :comments
  end
end
