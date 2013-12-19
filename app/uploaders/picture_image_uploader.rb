# encoding: utf-8

class PictureImageUploader < CarrierWave::Uploader::Base
  
    include CarrierWaveDirect::Uploader
  
    include CarrierWave::RMagick

    # Include the Sprockets helpers for Rails 3.1+ asset pipeline compatibility:
    include Sprockets::Helpers::RailsHelper
    include Sprockets::Helpers::IsolatedHelper

    include CarrierWave::MimeTypes
    process :set_content_type
 
    # Create different versions of your uploaded files:
    version :thumb do
       process :resize_to_limit => [200, 200]
     end

    # Add a white list of extensions which are allowed to be uploaded.
    # For images you might use something like this:
     def extension_white_list
        %w(jpg jpeg gif png)
    end

    # Override the filename of the uploaded files:
    # Avoid using model.id or version_name here, see uploader/store.rb for details.
    # def filename
    #   "something.jpg" if original_filename
    # end

  end
