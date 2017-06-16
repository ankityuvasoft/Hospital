class Photo < ActiveRecord::Base
	#Mounts paperclip image
	has_attached_file :image
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/



	   # path: ":rails_root/public/images/:id/:filename",
    # url: "/images/:id/:filename"

  #do_not_validate_attachment_file_type :image
end
