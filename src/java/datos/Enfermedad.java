/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package datos;

/**
 *
 * @author men
 */
public class Enfermedad {
    int idEnfermedad;
    int idExpediente;
    String Descripcion;

    public Enfermedad(int idEnfermedad, int idExpediente, String Descripcion) {
        this.idEnfermedad = idEnfermedad;
        this.idExpediente = idExpediente;
        this.Descripcion = Descripcion;
    }

    public Enfermedad() {
    }

    public int getIdEnfermedad() {
        return idEnfermedad;
    }

    public void setIdEnfermedad(int idEnfermedad) {
        this.idEnfermedad = idEnfermedad;
    }

    public int getIdExpediente() {
        return idExpediente;
    }

    public void setIdExpediente(int idExpediente) {
        this.idExpediente = idExpediente;
    }

    public String getDescripcion() {
        return Descripcion;
    }

    public void setDescripcion(String Descripcion) {
        this.Descripcion = Descripcion;
    }
    
    
    
}
