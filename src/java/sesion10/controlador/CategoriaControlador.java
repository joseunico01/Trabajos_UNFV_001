package sesion10.controlador;

import alumnoBean.Alumno;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CategoriaControlador extends HttpServlet {

   protected void processRequest(HttpServletRequest request, HttpServletResponse response)
       throws ServletException, IOException {      
      String categoria=request.getParameter("txtCategoria");
      String tipoAlumno=request.getParameter("txtTipoAlumno");
      double promedio=Double.parseDouble(request.getParameter("txtPromedio"));

      Alumno ob1=new Alumno();
      String nuevaPension;
      if(categoria!="" && tipoAlumno!=""){
      nuevaPension=ob1.calcularDescuentoPension(categoria, tipoAlumno, promedio);
      request.setAttribute("nuevaPension", nuevaPension);
      getServletContext().getRequestDispatcher("/Sesion_10/FrmCategorizacion.jsp").forward(request, response);
      }else{
         nuevaPension="Complete todos los campos y vuelva a intentarlo";
      }
   }

   // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
   /**
    * Handles the HTTP <code>GET</code> method.
    *
    * @param request servlet request
    * @param response servlet response
    * @throws ServletException if a servlet-specific error occurs
    * @throws IOException if an I/O error occurs
    */
   @Override
   protected void doGet(HttpServletRequest request, HttpServletResponse response)
       throws ServletException, IOException {
      processRequest(request, response);
   }

   /**
    * Handles the HTTP <code>POST</code> method.
    *
    * @param request servlet request
    * @param response servlet response
    * @throws ServletException if a servlet-specific error occurs
    * @throws IOException if an I/O error occurs
    */
   @Override
   protected void doPost(HttpServletRequest request, HttpServletResponse response)
       throws ServletException, IOException {
      processRequest(request, response);
   }

   /**
    * Returns a short description of the servlet.
    *
    * @return a String containing servlet description
    */
   @Override
   public String getServletInfo() {
      return "Short description";
   }// </editor-fold>

}
