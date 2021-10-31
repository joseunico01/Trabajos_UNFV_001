package calzadoBean;

public class Calzado {

   private String marca;
   private int talla;
   private int numParVendidos;
   private double descuento;
   private double costoFinal;
   private double precioBase;
   private double precioBaseSinIGV;
   private final double igv=0.18;

   public String calcularPrecioConDes(String marca, int talla, int numParVendidos) {

      //Calculamos el precio Batta
      if(marca.equals("Batta")){
      switch (talla) {
         case 30: precioBase=130;
            break;
         case 35: precioBase=132;
            break;
         case 39: precioBase=144;
            break;
         case 40: precioBase=150;
            break;
         case 44: precioBase=155;
            break;
         default:
            break;
      }
      }
      //Calculamos el precio Calimod
      if(marca.equals("Calimod")){
      switch (talla) {
         case 30: precioBase=122;
            break;
         case 35: precioBase=125;
            break;
         case 39: precioBase=127;
            break;
         case 40: precioBase=130;
            break;
         case 44: precioBase=144;
            break;
         default:
            break;
      }
      }
      //Calculamos el precio  Azaleia
      if(marca.equals("Azaleia")){
      switch (talla) {
         case 30: precioBase=120;
            break;
         case 35: precioBase=125;
            break;
         case 39: precioBase=130;
            break;
         case 40: precioBase=137;
            break;
         case 44: precioBase=144;
            break;
         default:
            break;
      }
      }
      //Calculamos el precio Renzo costa
      if(marca.equals("Renzo costa")){
      switch (talla) {
         case 30: precioBase=155;
            break;
         case 35: precioBase=160;
            break;
         case 39: precioBase=167;
            break;
         case 40: precioBase=170;
            break;
         case 44: precioBase=177;
            break;
         default:
            break;
      }
      }

      //Calcularemso el descuento
      if(numParVendidos==1){
         descuento=0;
         precioBaseSinIGV=precioBase-descuento;
      }
      else if(numParVendidos>=2 && numParVendidos<=5){
         descuento=precioBase*0.05;
         precioBaseSinIGV=precioBase-descuento;
      }
      else if(numParVendidos>=6 && numParVendidos<=10){
         descuento=precioBase*0.08;
         precioBaseSinIGV=precioBase-descuento;
      }
      else if(numParVendidos>=11 && numParVendidos<=20){
         descuento=precioBase*0.10;
         precioBaseSinIGV=precioBase-descuento;
      }
      else if(numParVendidos>=21 && numParVendidos<=30){
         descuento=precioBase*0.15;
         precioBaseSinIGV=precioBase-descuento;
      }
      else{
         descuento=precioBase*0.17;
         precioBaseSinIGV=precioBase-descuento;
      }
      
      //formula parasacar el precio
      costoFinal=precioBaseSinIGV+(precioBaseSinIGV*igv);
      
      return String.valueOf(".....El par de zapatilla "+marca+" te saldra a: "+String.format("%.2f", costoFinal)
          + "soles.....En total los "+numParVendidos+" par/es te costara a: "+String.format("%.2f", costoFinal*numParVendidos)+"soles.....");
   }

}
