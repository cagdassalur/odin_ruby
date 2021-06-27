class ArrayHelper
  def self.all_equal?(ls, exception)
    return (ls.uniq.size <= 1 and ls[0] != exception)
  end
end
