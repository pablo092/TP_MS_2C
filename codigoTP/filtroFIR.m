function F = filtroFIR(x)
    syms z;
    filtro=(z+1.1)/((z^2)-0.1);
    F=x*filtro;
end