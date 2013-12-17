class Picture < ActiveRecord::Base
  attr_accessible :reef_tank_id, :picture_image, :name
   belongs_to :reef_tank
   mount_uploader :picture_image, PictureImageUploader
   
  

     after_save :enqueue_image

     def image_name
       File.basename(picture_image.path || picture_image.filename) if picture_image
     end

     def enqueue_image
       perform(id, key) if key.present?
     end

      
     
       def perform(id, key)
         picture = Picture.find(id)
         picture.key = key
         picture.remote_picture_image_url = picture.picture_image.direct_fog_url(with_path: true)
         picture.save!
         picture.update_column(:image_processed, true)
       end

      
   end