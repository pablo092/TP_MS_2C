function F = transformadaZ(x)

    fprintf('Entré en la funcion transformadaZ().\n');
    syms z
    [~, t2] = size(x);
    longitud = length(x);
    n = (0:longitud-1);
    if t2 == 1
        n = transpose(n);
    end
    
    fprintf('Aplico la definición de Transformada Z.\n');
    %Aplicamos definición de Transformada Z
    F = sum(x.*(z.^-n));
    fprintf('Terminé de aplicar la definición de Transformada Z.\n\n');
end