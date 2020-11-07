class Blog < ApplicationRecord
  default_scope -> { order(created_at: :desc) }

  has_many :tag_maps, dependent: :destroy
  has_many :tags, through: :tag_maps

  validates :title, presence: true, length: { maximum: 100 }
  validates :content, presence: true

  # タグの更新処理
  def save_tag(sent_tags)
    current_tags = tags.pluck(:name) unless tags.nil?
    old_tags = current_tags - sent_tags
    new_tags = sent_tags - current_tags

    # タグを消去する
    old_tags.each do |old_tag|
      tags.delete Tag.find_by(name: old_tag)
    end

    # タグを作成する
    new_tags.each do |new_tag|
      new_blog_tag = Tag.find_or_create_by(name: new_tag)
      tags << new_blog_tag
    end
  end
end

