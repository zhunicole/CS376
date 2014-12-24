class Post < ActiveRecord::Base
  belongs_to :user
  def self.col(num)
    Post.all.select{|p| p.column == num}
  end
end
