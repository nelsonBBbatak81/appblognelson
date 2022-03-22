class Blog < ApplicationRecord
  include PgSearch::Model
  belongs_to :user
  belongs_to :category
  has_many :taggings
  has_many :tags, through: :taggings, dependent: :destroy
  after_validation :set_slug, only: [:create, :update]

  has_one_attached :urlimage

  # pg_search_scope :search_by_title, against: :title, using: [:tsearch]
  
  def tag_list=(tags_string)
    tag_titles = tags_string.split(/[,\s]+/).collect{|s| s.strip.downcase}.uniq
    new_or_found_tags = tag_titles.collect { |title| Tag.find_or_create_by(title: title) }
    self.tags = new_or_found_tags
  end
  
  private
  
    def set_slug
      self.slug = title.to_s.parameterize
    end
end
