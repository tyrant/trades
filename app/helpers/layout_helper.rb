# These helper methods can be called in your template to set variables to be used in the layout
# This module should be included in all views globally,
# to do so you may need to add this line to your ApplicationController
#   helper :layout
module LayoutHelper
  def title(page_title, show_title = true)
    content_for(:title) { h(page_title.to_s) }
    @show_title = show_title
  end

  def show_title?
    @show_title
  end

  def stylesheet(*args)
    content_for(:head) { stylesheet_link_tag(*args) }
  end

  def javascript(*args)
    content_for(:head) { javascript_include_tag(*args) }
  end
  
  def js_var(name)
    name = '"' + name + '"' if name.instance_of? String
    name = name.to_s if name.to_s.numeric?
    name + ';'
  end
  
  # Each Javascript Job hash needs lat, lng, title, id. Return '[{lat: xx, lng: xx, title: xx, id: xx}, {..}, ..., {..}]'.
  def js_jobs(jobs = {}, default = '{}')
    return "[];" if jobs.nil? || jobs.empty?
    '[' + jobs.map{|j| "{ lat: #{j.address.lat}, lng: #{j.address.lng}, title: '#{j.title}', id: #{j.id} }" }.join(', ') + '];'
  end

end
