def select_elements_starting_with_a(array)
  array.select{|element| element[0] == 'a'} 
end

def select_elements_starting_with_vowel(array)
  array.select{|element| ['a','e','i','o','u'].include?(element[0]) } 
end

def remove_nils_from_array(array)
  array.compact
end

def remove_nils_and_false_from_array(array)
  array.select { |element| element }
end

def reverse_every_element_in_array(array)
  array.map { |element|  element.reverse}
end

def every_possible_pairing_of_students(array)
  new_array = []
  while array.count > 0 do
    first=array.pop
    array.each {|element| new_array << [element,first] }
  end
  return new_array
end

def all_elements_except_first_3(array)
  array.drop(3)

end

def add_element_to_beginning_of_array(array,element)
  array.unshift(element)

end

def array_sort_by_last_letter_of_word array
  array.sort { |element_1,element_2| element_1[-1,1] <=> element_2[-1,1]}
end

def get_first_half_of_string word
  word.slice(0,(word.length/2.0).ceil)
end

def make_numbers_negative number
  number.abs*-1
end

def separate_array_into_even_and_odd_numbers array
  [array.select { |element| element.even?}, array.select {|element| element.odd?}]

end

def number_of_elements_that_are_palindromes array
  array.select {|word| word==word.reverse}
end

def shortest_word_in_array array
  array.sort {|word1, word2| word1.length <=> word2.length }.first
end

def longest_word_in_array array
  array.sort {|word1, word2| word1.length <=> word2.length }.last
end
