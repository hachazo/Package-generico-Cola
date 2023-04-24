package body Cola is
   
   --Limpia los elementos de la cola   
   procedure clear(Cola: in out Tipocola) is
  
   begin
  
      Cola.Frente:= cola.max;
      Cola.Final:= cola.max;
   
   end clear;
   
   --Inserta un elemento en la cola
   procedure Insert(Item: in Tipodato; Cola: in out Tipocola) is
   
   begin
   
      if Is_Full(Cola) then 
	  raise Overflow;
	  else
      Cola.Final := Cola.final rem cola.max+1; 
	  Cola.Elemento(Cola.Final):= item;
      end if;
      end insert;
	  
   --Elimina el primer elemento de la cola
   procedure Delete(Cola: in out Tipocola; Item: out tipodato) is
   
   begin
   
   if Is_empty(Cola) then raise Underflow;
         else Cola.Frente:= Cola.Frente rem cola.max + 1;
         item:= cola.elemento(cola.frente);
      end if;
	  
   end Delete;
	  
   --chequea si la cola esta vacia
   function Is_Empty(Cola: Tipocola) return Boolean is
   
   begin
      
      return Cola.Frente=Cola.Final;
      
   end Is_Empty;
   
   --Chaquea si la cola esta llena
   function Is_Full(Cola: Tipocola) return Boolean is
      
      Siguiente:Positive;
      
   begin
   
      if Cola.Final=Cola.Max then
         Siguiente:=1;
      else
         Siguiente:=Cola.Final+1;
      end if;
            
   return siguiente=cola.frente;
   
   end Is_Full;
   
   
end cola;

