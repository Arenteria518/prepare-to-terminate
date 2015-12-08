class Post < ActiveRecord::Base
    validates :title, presence: true, length: {minimum: 5}
    validates :body, presence: true
    has_attached_file :image, styles: {thumbnail: "720x400#", fullscreen: "1980X600#" }
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
    
    def slug
        title.downcase.gsub(" ", "-")
    end
    
    def to_param 
        "#{id}-#{slug}"
    end
end
