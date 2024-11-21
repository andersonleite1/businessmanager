package dev.andersonleite.erp.service;

import java.io.Serializable;

import javax.inject.Inject;

import dev.andersonleite.erp.model.Empresa;
import dev.andersonleite.erp.repository.Empresas;
import dev.andersonleite.erp.util.Transacional;

public class EmpresaRegistroServiço implements Serializable {

    private static final long serialVersionUID = 1L;

    @Inject
    private Empresas empresas;

    @Transacional
    public void salvar(Empresa empresa) {
        empresas.save(empresa);
    }

    @Transacional
    public void remover(Empresa empresa) {
        empresas.delete(empresa);
    }

}