/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


public class div {

    public static void main(String[] args) {
        
        int numerador;
        Integer denominador=null;
        float div;
        
        numerador = 20;
        denominador = 0;
        
        System.out.println("Antes de la division");
        
       try{
          div = numerador/denominador;
        }catch(Exception e){
           
                  System.out.println(e.getMessage());
                  div = 0;
               } 
      
      System.out.println(div);
       System.out.println("Despues de la division");
     }
    
}
