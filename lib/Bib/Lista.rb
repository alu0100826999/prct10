Nodo = Struct.new(:value, :next)
Nodo2 = Struct.new(:value, :next, :prev)

class Lista
    attr_reader :inicio
    
    def initialize()
       @inicio = Nodo.new(nil)
    end
    
    def insert(nodo)    #push
        if (@inicio != nil)
            nodo.next = @inicio
            @inicio = nodo
        end
        true
    end
    
    def extract()   #pop
        if (@inicio != nil)
            @aux=Nodo.new(nil)
            aux = @inicio
            @inicio = @inicio.next
            return aux.value
        end
    end
    
end

class Listadoble
    
    include Enumerable
    
        attr_accessor :head, :tail
        
        def initialize()
            @tail=nil
            @head=nil
        end
        
        def insert_head(nodo)
            
            nodo_ = Nodo2.new(nodo,nil,nil)
            
            if(@tail==nil || @head==nil)
                @tail = nodo_
                @head = nodo_
            else
                nodo_.next = @head
                @head.prev = nodo_
                @head = nodo_
            end
            true
        
        end
        
        def extract_tail()
            
            nodo = @tail.value
            @tail = @tail.prev
            
            if(@tail == nil)
                @head = nil
            else
                @tail.next = nil
            end
            return nodo
            
        end
        
        def each
            nodo = @head
            while (nodo != nil) 
                yield nodo.value
                nodo = nodo.next
            end
        end
       
       
       
    
    
end