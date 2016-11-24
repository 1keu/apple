class Note < ActiveRecord::Base
	 belongs_to :product
	 has_many :images
	 belongs_to :note
	 validates :title, presence: true
  validates :content, presence: true, length: { maximum: 140 }
   validates :product_id, presence: true
    mount_uploader :image2, Image2Uploader
mount_uploader :image, ImageUploader
         
          # acts_as_taggable_on :tags のエイリアス
end
