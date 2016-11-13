function F = filtroFIR(x)
    
    fprintf('Entro en la funci�n filtroFIR().\n');
    
    syms z;
    filtro = (z+1.1)/((z^2)-0.1);
    F = x*filtro;
    
    fprintf('Salgo de la funci�n filtroFIR().\n');
end