# Blorgh/lib/concerns/models/article
module Concerns::Article
  extend ActiveSupport::Concern

  included do
    attr_accessor :author_name
    belongs_to :author, class_name: Blorgh.author_class.to_s

    before_save :set_author

    private
    def set_author
      self.author = Blorgh.author_class.find_or_create_by(name: author_name)
    end
  end

  def summary
    "#{title} #{text} by #{author}"
  end

  module ClassMethods
    def some_class_method
      'some class method string'
    end
  end
end