class Post < ActiveRecord::Base
  attr_accessible :body, :publish_date, :title, :category_ids, :address, :city, :phoneno
  validates_presence_of :title, :body, :publish_date, :user_id, :address, :city

  #required fields
  belongs_to :user
  has_and_belongs_to_many :categories

  #setting up relationships
  scope :published, lambda { where (['publish_date <= ?', Date.today])}
  scope :by_user_id, lambda {|uid| where(:user_id => uid)}
  scope :by_category_id, lambda {|cid| joins(:categories).where (['categories.id =?', cid]) }
end

#create accessible attributes for post
