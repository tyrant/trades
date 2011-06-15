class Image < ActiveRecord::Base

  belongs_to :imageable, :polymorphic => :true

  has_attached_file :image, 
    :styles => { :thumb => '50x50>', :medium => '150x150>' },
    :path => ":rails_root/public/images/paperclip/:attachment/:id/:style/:filename"
  
end
