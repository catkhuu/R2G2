class Profile < ApplicationRecord
  belongs_to :user
  validates :why_i_run, length: { maximum: 140 }
  validates :experience, :user_id, presence: true
  validates :goals, length: { minimum: 15, maximum: 200 }, presence: true
  validates :need_to_knows, length: { maximum: 200 }
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "http://www.freeiconspng.com/uploads/shoe-icon-27.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
