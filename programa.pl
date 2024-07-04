persona(nora,empleado,compras).
persona(pedro,cadete,compras).
persona(roque,pasante,ventas).
persona(maria,empleado,ventas).
persona(juan,cadete,ventas).
persona(felipe,empleado,administracion).
persona(hugo,empleado,administracion).

trabajaEnVentas(Persona):-persona(Persona,_,ventas).
trabajaEnCompras(Persona):-persona(Persona,_,compras).

mismoDepartamento(Persona1,Persona2):- persona(Persona1,_,Departamento), persona(Persona2,_,Departamento).

cargoSuperior(Persona1,Persona2):-
    persona(Persona1,empleado,_),
    not(persona(Persona2,empleado,_)),
     mismoDepartamento(Persona1,Persona2).

/* 
1
?- trabajaEnVentas(felipe).
false.

?- trabajaEnVentas(roque). 
true.

2
?- mismoDepartamento(roque,juan).    
true.

?- mismoDepartamento(pedro,juan). 
false.

3


?- cargoSuperior(roque,maria).
false.

?- cargoSuperior(roque,juan).  
false.

?- cargoSuperior(maria,roque). 
true.

?- cargoSuperior(nora,juan).   
false.
\*