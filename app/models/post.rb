class Post < ActiveRecord::Base
    validates :title, presence: true, length: {minimum: 5}
    validates :body, presence: true
    has_attached_file :image, styles: {large: "1920x1080#", fullscreen: "1980X600#" }
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
