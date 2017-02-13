class Pin < ActiveRecord::Base
  belongs_to :user

  # paperclip gem usage
  has_attached_file :image, styles: { medium: "300X300>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
