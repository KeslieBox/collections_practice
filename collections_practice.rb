require 'pry'
def sort_array_asc(integers)
    integers.sort do |a, b|
        a<=>b
    end
end

def sort_array_desc(integers)
    integers.sort do |b, a|
        a <=> b
    end
end

def sort_array_char_count(strings)
    strings.sort do |a, b|
        a.length <=> b.length
    end
end

def swap_elements(swap_array)
    swap_array.sort do |b, a|
      b.length <=> a.length
    end
end

def swap_elements_from_to(array, index, destination_index)
    array.reverse{|a,b| a<=>b}
end

def reverse_array(array_int)
    array_copy = array_int.reverse{|a,b| a<=>b}
    array_copy     
end

def kesha_maker(array)
    array.each {|element| element[2] = "$"}     
end

def find_a(array)
    array.select{|i| i[0] == "a"}
end

def sum_array(array)
    array.inject(:+)
end

# def add_s(array)
#     array.each{|element| element <<"s" unless element[1]} 
# end

def add_s(array)
    array.each_with_index do |element, index|
        # binding.pry
        if index != 1 
            element<<"s"  
        end
    end
end