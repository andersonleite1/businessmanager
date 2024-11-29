package dev.andersonleite.erp.controller;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.Serializable;
import java.util.Arrays;
import java.util.List;

import javax.faces.convert.Converter;
import javax.faces.view.ViewScoped;
import javax.inject.Inject;
import javax.inject.Named;
import javax.servlet.http.HttpServletResponse;
import javax.faces.context.FacesContext;

import org.apache.poi.ss.usermodel.*;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import dev.andersonleite.erp.model.Empresa;
import dev.andersonleite.erp.model.RamoAtividade;
import dev.andersonleite.erp.model.TipoEmpresa;
import dev.andersonleite.erp.repository.Empresas;
import dev.andersonleite.erp.repository.RamoAtividades;
import dev.andersonleite.erp.service.EmpresaRegistroServiço;
import dev.andersonleite.erp.util.FacesMessages;

@Named
@ViewScoped
public class GestaoEmpresasBean implements Serializable {

    private static final long serialVersionUID = 1L;
    
    @Inject
    private Empresas empresas;
    
    @Inject
    private FacesMessages messages;
    
    @Inject
    private RamoAtividades ramoAtividades;
    
    @Inject
    private EmpresaRegistroServiço empresaRegistroServiço;
    
    private List<Empresa> listaEmpresas;
    
    private String termoPesquisa;
    
    private Converter ramoAtividadeConverter;
    
    private Empresa empresa;
    
    public void prepararNovaEmpresa() {
        empresa = new Empresa();
    }
    
    public void prepararEdicao() {
        ramoAtividadeConverter = new RamoAtividadeConverter(Arrays.asList(empresa.getRamoAtividade()));
    }
    
    public void salvar() {
        empresaRegistroServiço.salvar(empresa);
        
        atualizarRegistros();
        
        messages.info("Empresa salva com sucesso!");
        
//        RequestContext.getCurrentInstance().update(Arrays.asList(
//                "frm:empresasDataTable", "frm:messages"));
    }
    
    public void excluir() {
        empresaRegistroServiço.remover(empresa);
        
        empresa = null;
        
        atualizarRegistros();
        
        messages.info("Empresa excluída com sucesso!");
    }
    
    public void pesquisar() {
        listaEmpresas = empresas.pesquisar(termoPesquisa);
        
        if (listaEmpresas.isEmpty()) {
            messages.info("Sua consulta não retornou registros.");
        }
    }
    
    public void todasEmpresas() {
        listaEmpresas = empresas.todas();
    }
    
    public List<RamoAtividade> completarRamoAtividade(String termo) {
        List<RamoAtividade> listaRamoAtividades = ramoAtividades.pesquisar(termo);
        
        ramoAtividadeConverter = new RamoAtividadeConverter(listaRamoAtividades);
        
        return listaRamoAtividades;
    }
    
    private void atualizarRegistros() {
        if (jaHouvePesquisa()) {
            pesquisar();
        } else {
            todasEmpresas();
        }
    }
    
    private boolean jaHouvePesquisa() {
        return termoPesquisa != null && !"".equals(termoPesquisa);
    }
    
    public List<Empresa> getListaEmpresas() {
        return listaEmpresas;
    }
    
    public String getTermoPesquisa() {
        return termoPesquisa;
    }
    
    public void setTermoPesquisa(String termoPesquisa) {
        this.termoPesquisa = termoPesquisa;
    }
    
    public TipoEmpresa[] getTiposEmpresa() {
        return TipoEmpresa.values();
    }
    
    public Converter getRamoAtividadeConverter() {
        return ramoAtividadeConverter;
    }
    
    public Empresa getEmpresa() {
        return empresa;
    }
    
    public void setEmpresa(Empresa empresa) {
        this.empresa = empresa;
    }
    
    public boolean isEmpresaSeleciona() {
        return empresa != null && empresa.getId() != null;
    }
    
    public void exportarParaExcel() {
        List<Empresa> empresas = this.listaEmpresas;

        try (Workbook workbook = new XSSFWorkbook()) {
            Sheet sheet = workbook.createSheet("Empresas");

            CellStyle headerStyle = workbook.createCellStyle();
            Font headerFont = workbook.createFont();
            headerFont.setBold(true);
            headerStyle.setFont(headerFont);
            headerStyle.setAlignment(HorizontalAlignment.CENTER);
            headerStyle.setBorderTop(BorderStyle.THIN);
            headerStyle.setBorderBottom(BorderStyle.THIN);
            headerStyle.setBorderLeft(BorderStyle.THIN);
            headerStyle.setBorderRight(BorderStyle.THIN);

            CellStyle dataStyle = workbook.createCellStyle();
            dataStyle.setAlignment(HorizontalAlignment.CENTER);
            dataStyle.setBorderTop(BorderStyle.THIN);
            dataStyle.setBorderBottom(BorderStyle.THIN);
            dataStyle.setBorderLeft(BorderStyle.THIN);
            dataStyle.setBorderRight(BorderStyle.THIN);

            sheet.setColumnWidth(0, 6000);
            sheet.setColumnWidth(1, 6000);
            sheet.setColumnWidth(2, 6000);

            int rowIndex = 0;

            Row headerRow = sheet.createRow(rowIndex++);
            headerRow.createCell(0).setCellValue("Nome Fantasia");
            headerRow.createCell(1).setCellValue("Razão Social");
            headerRow.createCell(2).setCellValue("Ramo Atividade");

            for (Cell cell : headerRow) {
                cell.setCellStyle(headerStyle);
            }

            for (Empresa empresa : empresas) {
                Row dataRow = sheet.createRow(rowIndex++);
                Cell cell0 = dataRow.createCell(0);
                cell0.setCellValue(empresa.getNomeFantasia());
                cell0.setCellStyle(dataStyle);

                Cell cell1 = dataRow.createCell(1);
                cell1.setCellValue(empresa.getRazaoSocial());
                cell1.setCellStyle(dataStyle);

                Cell cell2 = dataRow.createCell(2);
                cell2.setCellValue(empresa.getRamoAtividade().getDescricao());
                cell2.setCellStyle(dataStyle);
            }

            ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
            workbook.write(outputStream);

            HttpServletResponse response = (HttpServletResponse) FacesContext.getCurrentInstance().getExternalContext().getResponse();
            response.setContentType("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet");
            response.setHeader("Content-Disposition", "attachment; filename=Empresas.xlsx");
            response.getOutputStream().write(outputStream.toByteArray());
            response.getOutputStream().flush();
            FacesContext.getCurrentInstance().responseComplete();

        } catch (IOException e) {
            e.printStackTrace();
        }
    }

}
