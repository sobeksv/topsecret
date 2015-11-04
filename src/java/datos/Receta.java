/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package datos;

/**
 *
 * @author mrlm
 */
public class Receta {
    String medicamento;
    String dosis;
    String fechaInicio;
    String fechaFin;

    public Receta() {
    }

    public Receta(String medicamento, String dosis, String fechaInicio, String fechaFin) {
        this.medicamento = medicamento;
        this.dosis = dosis;
        this.fechaInicio = fechaInicio;
        this.fechaFin = fechaFin;
    }

    public String getMedicamento() {
        return medicamento;
    }

    public void setMedicamento(String medicamento) {
        this.medicamento = medicamento;
    }

    public String getDosis() {
        return dosis;
    }

    public void setDosis(String dosis) {
        this.dosis = dosis;
    }

    public String getFechaInicio() {
        return fechaInicio;
    }

    public void setFechaInicio(String fechaInicio) {
        this.fechaInicio = fechaInicio;
    }

    public String getFechaFin() {
        return fechaFin;
    }

    public void setFechaFin(String fechaFin) {
        this.fechaFin = fechaFin;
    }
    
    
    
    
}
