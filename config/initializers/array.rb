class Array

  def delete_at!(index)
    self.delete_at(index)
    self
  end

  def delete_last
    self.delete_at(self.length-1)
    self
  end
end