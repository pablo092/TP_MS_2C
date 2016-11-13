function F = obtenerValores(trans,longitud)
    var = symvar(trans);
    syms respuesta;
    respuesta = randn(longitud,1);
    for i=1:longitud
        
    %Sustituimos el valor de z por el numero i    
    resp = subs(trans,var,i);
    
    %Guardamos la resp en la matriz con 5 digitos
    respuesta(i,1)=vpa(resp,5);
    
    end
    F=respuesta;
end