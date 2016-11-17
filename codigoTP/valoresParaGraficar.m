function F = valoresParaGraficar(trans,longitud)
    
    fprintf('Entro en la funcion obtenerValores().\n');
    
    var = symvar(trans);
    syms respuesta;
    respuesta = randn(longitud,1);
    
    fprintf('Entro al for.\n');
    for i=1:longitud
        
    %Sustituimos el valor de z por el numero i    
    resp = subs(trans,var,i);
    
    %Guardamos la resp en la matriz con 5 digitos
    respuesta(i,1) = vpa(resp,5);
    
    end
    fprintf('Salgo del for.\n');
    
    F = respuesta;
    
    fprintf('Salgo de la función obtenerValores().\n\n');
end