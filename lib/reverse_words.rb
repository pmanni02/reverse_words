# A method to reverse each word in a sentence, in place.
def reverse_words(my_words)
  if my_words == nil
    return nil
  elsif my_words.length == 1
    return my_words
  end

  i = 0
  j = 0
  k = 0
  while my_words[k] != nil

    while my_words[k] != " " && my_words[k] != nil
      k += 1
    end

    k > 0 ? j = k - 1 : j = k
    while i < j
      temp = my_words[i]
      my_words[i] = my_words[j]
      my_words[j] = temp

      i += 1
      j -= 1
    end

    k += 1
    i = k
  end

  return my_words
end
