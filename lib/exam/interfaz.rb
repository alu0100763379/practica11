class Interfaz
   attr_accessor :examen, :contestado
   def initialize(examen, respuesta)
        @examen=examen
        @contestado=respuesta
        
   end
   
    def nota()
        bien=0
        mal=0
	   while (@examen.correctas.head != nil)
	        if @examen.correctas.head.value == @contestado.head.value
	            bien = bien+1
	            @examen.correctas.walk
	            @contestado.walk
	        else
	            mal = mal+1
	            @examen.correctas.walk
	            @contestado.walk
	        end
	        
	   end
	   
	  if mal == 0
	       return 10 
	  end
	  
	  if bien == 0
	       return 0
	  end
	  
	  if ((mal !=0) and (bien !=0))
	       if (bien>mal)
	           return 6
	       else
	           return 4
	       end
	        
	  end
	  
	    
	    
    end
   
    
end