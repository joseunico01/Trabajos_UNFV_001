package alumnoBean;

public class Alumno {
   
   private String categoria;
   private String tipoAlumno;
   private double promedio;
   private int pension;
   private double descuento;
   private double nuevaPension;


   public String calcularDescuentoPension(String categoria, String tipoAlumno, double promedio){
      switch(categoria){
         case "A":{
            if(tipoAlumno.equals("INTERNO")){
               pension=600;
            }
            if(tipoAlumno.equals("EXTERNO")){
               pension=550;
            }
         }break;

         case "B":{
            if(tipoAlumno.equals("INTERNO")){
               pension=550;
            }
            if(tipoAlumno.equals("EXTERNO")){
               pension=500;
            }
         }break;

         case "C":{
            if(tipoAlumno.equals("INTERNO")){
               pension=500;
            }
            if(tipoAlumno.equals("EXTERNO")){
               pension=460;
            }
         }break;

         case "D":{
            if(tipoAlumno.equals("INTERNO")){
               pension=450;
            }
            if(tipoAlumno.equals("EXTERNO")){
               pension=400;
            }
         }break;

         default:break;
      }
      
      if(promedio>=0 && promedio<=13.99){
         descuento=0;
      }
      else if(promedio>=14 && promedio<=15.99){
         descuento=0.10;
      }
      else if(promedio>=16 && promedio<=17.99){
         descuento=0.12;
      }
      else if(promedio>=18 && promedio<=20){
         descuento=0.15;
      }
      
      nuevaPension=pension-(pension*descuento);

      return "Accediendo a los datos...\n\n"+"\tSu Promedio es: "+promedio+"\n\t y pertenece al grupo: "+tipoAlumno+"\n\t y su categoria es: "+categoria+"\n\tasi q su pension sera: "+nuevaPension;
   }
   
}
