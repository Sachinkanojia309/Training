class Book < ApplicationRecord
  has_many :authors
  has_one :publisher

  # for has_many :through: 
  has_many :book_categories
  has_many :categories, through: :book_categories

  #for has_one :through
  has_one :book_record
  has_one :record, through: :book_record

  #for has_and_belongs_to_many
  has_and_belongs_to_many :borrowers

  #polymorphic
  has_many :feedbacks, as: :feedbackable
 
  scope :book_type, -> {where(book_type: "Mystery")}
  scope :greater_than_id, ->(var) { where("id > ?", var) }   #parameter scope
  scope :created_before, ->(time) { where("created_at < ?", time) if time.present? }

end
