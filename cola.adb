package body Cola is
   

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
      
   --Inserta un elemento en la cola
   procedure Insert(Item: in Tipodato; Cola: in out Tipocola) is
   
   begin
      
      if Is_Full(Cola) then raise Overflow; 
      else Cola.Final := Cola.Final rem Cola.Max + 1; --Rem resto de una division entera
      Cola.Elemento(Cola.Final) := Item; -- primero se resuelve el resto y despues la suma
      end if; 
      
      end insert;
   
   --Elimina el primer elemento de la cola
   procedure Delete(Cola: in out Tipocola; Item: out tipodato) is
   
   begin
      
      if Is_Empty(Cola) then raise Underflow; 
      else Cola.Frente:= Cola.Frente rem Cola.Max + 1; 
      Item:= Cola.Elemento(Cola.Frente);
      end if;
      
   end Delete;
   
   --Devuelve el primer elemento de la cola sin eliminarlo
   function Front (Cola: Tipocola) return Tipodato is
   
   begin
      
      if not Is_Empty(cola) then
         return cola.elemento(cola.frente);
      else
        raise Underflow;
      end if;
     
   end Front;
   
exception
   
     when Underflow =>
      begin
      Put_Line("LA COLA ESTA VACIA"); end;
         
      when Overflow => 
      begin
      Put_Line("LA COLA ESTA LLENA");
      end;
         
  
end cola;

