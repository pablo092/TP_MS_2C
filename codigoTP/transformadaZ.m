function F = transformadaZ(x)

    fprintf('Entro en la funci�n transformadaZ().\n');
    syms z
    [~, t2] = size(x);
    longitud = length(x);
    n = (0:longitud-1);
    if t2 == 1
        n = transpose(n);
    end
    
    fprintf('Aplico la definici�n de Transformada Z.\n');
    %Aplicamos definici�n de Transformada Z
    F = sum(x.*(z.^-n));
    fprintf('Salgo de la funci�n transformadaZ().\n\n');
end