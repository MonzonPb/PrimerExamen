
package Examen.modelo;

import java.util.ArrayList;

public class Gestion_vacunasDAO {
    private int correlativo;
    private ArrayList<Gestion_vacunas> vacunas;

    public Gestion_vacunasDAO() {
        vacunas =new ArrayList<Gestion_vacunas>();
    }

    public int getCorrelativo() {
        return correlativo;
    }

    public void setCorrelativo(int correlativo) {
        this.correlativo = correlativo;
    }

    public ArrayList<Gestion_vacunas> getVacunas() {
        return vacunas;
    }

    public void setVacunas(ArrayList<Gestion_vacunas> vacunas) {
        this.vacunas = vacunas;
    }
    public void insertar(Gestion_vacunas item){
        vacunas.add(item);
    }
    public void modificar(int id, Gestion_vacunas item){
        int pos = posicion(id);
        vacunas.set(pos, item);
    }
    public void eliminar(int id){
        int pos=posicion(id);
        vacunas.remove(pos);
    }
    public int posicion(int id){
        int i=-1;
        if(vacunas.size()>0){
            for(Gestion_vacunas item : vacunas){
                ++i;
                if(item.getId() == id){
                    break;
                }
            }
        }
        return i;
    }
    
}
