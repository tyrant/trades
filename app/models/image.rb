class Image < ActiveRecord::Base

  belongs_to :imageable, :polymorphic => :true

  has_attached_file :image, 
    :styles => { :thumb => '50x50>', :medium => '150x150>' },
    :path => ":rails_root/public/images/paperclip/:attachment/:id/:style/:filename"

  # Array#delete_at! can be found in config/initializers/array.rb.
  def path(type)
    '/images/paperclip' + self.image.url(type).split('/').delete_at!(1).join('/')
  end
  
end
