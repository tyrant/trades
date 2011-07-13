class String

  def numeric?
    self.to_s.match(/\A[+-]?\d+?(\.\d+)?\Z/) == nil ? false : true 
  end
  
  def slugify
    self.downcase.gsub(/[^a-z0-9]/i, '-').gsub(/-{2,}/, '-')
  end
  
end
