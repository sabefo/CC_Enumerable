# Dado un array de números imprime únicamente los elementos que contienen un indice impar
# Utiliza: Enumerable#each_with_index
def print_odd_indexed_integers(array)
	array_2 = []
	array.each_with_index do |x,i|
		if i % 2 == 1
			puts array[i]
		end
	end
end

# Dado un array de números regresa un array con solo sol numeros impares
# Utiliza: Enumerable#select
def odd_integers(array)
	array_2 = []
	array.select {|x| 
		if x.even? == false
			array_2.push(x)
		end
	}
end


# Dado un array y un límite regresa el primer numero que sea menor al límite 
# Utiliza: Enumerable#find
def first_under(array, limit)
	array.find{|x| x < limit}
end


# Dado un array de strings y regresa un nuevo array donde todos los elementos contengan al final un signo de admiración. 
# Utiliza: Enumerable#map
def add_bang(array)
	array.map{|a| a + "!"}
end

# Dado un array de números calcula la suma de todos sus elementos. 
# Utiliza: Enumerable#reduce
# Repite el ejercicio con Enumerable#inject
def sum(array)
	array.reduce(:+)
end

def sum(array)
	array.inject{|index, key| index + key }
end
# Dado un array de string reorganizalo en grupos de tres y ordénalos alfabéticamente.  
# Utiliza: Enumerable#each_slice
# using slice
def sorted_triples(array)
	array_2 = []
	i = 0
	divide = array.length / 3
	array_2 << array.slice(0, divide)
	array_2 << array.slice(divide, divide)
	array_2
	n = array.length
	p array_2 << array.slice(divide*2, divide)
	p array_2.each_slice
end
#using each_slice
def sorted_triples(array)
	array_2 = []
	array_2 = array.each_slice(3).to_a
	for i in 0...array_2.length
		array_2[i] = array_2[i].sort!
	end
	p array_2
end

# Driver code... no modifiques nada de este código 
