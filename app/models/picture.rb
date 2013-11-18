class Picture < ActiveRecord::Base
  attr_accessible :reef_tank_id, :image, :name
  
   belongs_to :reef_tank
   
   mount_uploader :image, ImageUploader
   
  

     after_save :enqueue_image

     def image_name
       File.basename(image.path || image.filename) if image
     end

     def enqueue_image
      # perform(id, key) if key.present?
     # perform2(id, key) if key.present?
     end

    
       def perform(id, key)
         picture = Picture.find(id)
         picture.key = key
        # picture.remote_image_url = picture.image.direct_fog_url(with_path: true)
         picture.save!
         picture.update_column(:image_processed, true)
       end
      
       def perform2(id, key)
          @user = current_user.id
          @reef_tank = ReefTank.where(:user_id => @user).last
          picture = Picture.find(id)
       
          picture.update_column(:reef_tank_id, @reef_tank,id)
        end
      
      
      
   end