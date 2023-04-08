generic
   
   type tipodato is private;

   package cola is
      
      type tipoCola(max: positive) is limited private;
      
      function Is_Empty(cola : tipocola) return Boolean;
      --chaquea si la cola esta vacia
      
      function Is_Full(cola : tipocola) return Boolean;
      --chequea si la cola esta llena
      
      procedure insert(Item : in tipodato; cola : in out tipocola);
      --Inserta un elemento en la cola
      
      procedure delete(cola : in out tipocola; Item: out tipodato);
      --Elimina el primer elemento de la cola
      
      function Front(cola : tipocola) return tipodato;
      --Devuelve el elemento de la cola sin ser eliminado
      private
      
      type Arreglocola is array(Positive range <>) of tipodato;
      type Tipocola(Max: Positive) is
         
         record
            
            Elemento:Arreglocola(1..Max);
            frente:positive:=max;
            final:positive:=max;      

      end record;
      

end cola;
