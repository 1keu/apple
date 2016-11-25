class Product < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :notes
  devise :database_authenticatable, :registerable, :validatable
	mount_uploader :image, ImageUploader
	 has_many :evaluations, class_name: "ReputationSystem::Evaluation", as: :source
end
 def liked?(note)
    evaluations.where(target_type: note.class, reputation_name: :likes, target_id: note.id).present?
  end