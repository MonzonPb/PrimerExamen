package Examen.modelo;


public class Gestion_vacunas {
    private int id;
    private String nombre;
    private int peso;
    private double talla;
    private String estado;

    public Gestion_vacunas() {
        id=0;
        nombre="";
        peso=0;
        talla=0;
        estado="";
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getPeso() {
        return peso;
    }

    public void setPeso(int peso) {
        this.peso = peso;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }
    
    public double getTalla(){
        return talla;
    }
    
    public void setTalla(double talla){
        this.talla=talla;
    }
    
}
