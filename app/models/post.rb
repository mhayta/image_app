class Post < ApplicationRecord
    acts_as_votable
    belongs_to :user
    has_many :comments
    has_attached_file :image, styles: { medium: "600x300#", small: "300x150>" }
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
