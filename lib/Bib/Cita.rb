Nodo = Struct.new(:value, :next)
Nodo2 = Struct.new(:value, :next, :prev)


class Cita 

    def initialize()
		@listadoble = Lista.new()
    end
        
    def to_s 
		string = "" 
		@listadoble.each do |dato|
			string << dato.to_s
		end
		return string
	end
		
	def insert_cita(dato)
		@listadoble.insert_head(dato)
	end
		
	def each
		@listadoble.each
	end
	
end