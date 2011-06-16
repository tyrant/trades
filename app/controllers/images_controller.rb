class ImagesController < ApplicationController
  
  def create
    @image = Image.new(params[:image])
    respond_to do |format|
      if @image.save
        format.html { render :json => @image.to_json }
      else
        format.html { render :json => @image.errors }
      end
    end
  end
  
end

# # What Uploadify is sending
# image postparams: {
#   "image"=>{
#     "token"=>"127ef15f4706a9536211c96b624100840e6f7ffb",
#     "image"=>{
#       "Filename"=>"128774217456355079.jpg", 
#       "folder"=>"/reviews/", 
#       "Filedata"=>#<ActionDispatch::Http::UploadedFile:0x00000102beb290 
#         @original_filename="128774217456355079.jpg",
#         @content_type="application/octet-stream", 
#         @headers="Content-Disposition: form-data; name=\"Filedata\"; filename=\"128774217456355079.jpg\"\r\nContent-Type: application/octet-stream\r\n",
#         @tempfile=#<File:/var/folders/X2/X2Asvy41FyGNVcuqsnvJ5++++TI/-Tmp-/RackMultipart20110616-28671-g2azye>
#       >
#     }
#   },
#   "Upload"=>"Submit Query",
#   "action"=>"create",
#   "controller"=>"images",
# }
# 
# # What Paperclip is sending.
# job params: {
#   "utf8"=>"✓",
#   "authenticity_token"=>"/U+TBcdrDgB0ZEN+ugffCE4sqbsBPhn5SexEozoK/4Y=",
#   "job"=>{
#     "title"=>"",
#     "description"=>"",
#     "trader_id"=>"",
#     "image"=>
#       "image"=>#<ActionDispatch::Http::UploadedFile:0x00000102871470
#         @original_filename="128774217456355079.jpg",
#         @content_type="image/jpeg",
#         @headers="Content-Disposition: form-data; name=\"job[image][avatar]\"; filename=\"128774217456355079.jpg\"\r\nContent-Type: image/jpeg\r\n",
#         @tempfile=#<File:/var/folders/X2/X2Asvy41FyGNVcuqsnvJ5++++TI/-Tmp-/RackMultipart20110616-28671-1s2w200>
#       >
#     },
#     "image_tokens"=>""
#   }, 
#   "commit"=>"Create a new job",
#   "action"=>"create",
#   "controller"=>"jobs"
# }
