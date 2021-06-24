
def substrings(source, dict)
  srcs = source.downcase.split().uniq
  out = {}
  for src in srcs
    for dword in dict
      if src.include?(dword)
        out[dword] = out.fetch(dword, 0)+1
      end
    end
  end
  return out
end


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)