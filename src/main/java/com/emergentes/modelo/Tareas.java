
package com.emergentes.modelo;

public class Tareas {
    private int id;
    private String Tarea;
    private String Prioridad;
    private String completado;
    private String Fecha;

    public Tareas() {
        this.id = 0;
        this.Tarea = "";
        this.Prioridad = "";
        this.completado = "";
        this.Fecha = "";
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTarea() {
        return Tarea;
    }

    public void setTarea(String Tarea) {
        this.Tarea = Tarea;
    }

    public String getPrioridad() {
        return Prioridad;
    }

    public void setPrioridad(String Prioridad) {
        this.Prioridad = Prioridad;
    }

    public String getCompletado() {
        return completado;
    }

    public void setCompletado(String completado) {
        this.completado = completado;
    }

    public String getFecha() {
        return Fecha;
    }

    public void setFecha(String Fecha) {
        this.Fecha = Fecha;
    }
    
}
