<%-- 
    Document   : Index
    Created on : 20-may-2020, 15:16:07
    Author     : JOZE RODRIGUEZ
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <title>pagina de compras</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div>
        
            <form action="Index.jsp">
                <p>Articulos a comprar</p>
                
                <p>
                    <label>
                        <input type="checkbox" value="Arroz" name="articulos">
                        Arroz
                    </label>
                    <br>
                    <label>
                        <input type="checkbox" value="Papa" name="articulos">
                        Papa
                    </label>
                    <br>
                    <label>
                        <input type="checkbox" value="Aceite" name="articulos">
                        Aceite
                    </label>
                    <br>
                    <label>
                        <input type="checkbox" value="Panela" name="articulos">
                        Panela
                    </label>
                    <br>
                    <label>
                        <input type="checkbox" value="Cafe" name="articulos">
                        Cafe
                    </label>
                    <br>
                <p>
                    <label>
                        <input type="submit" value="comprar" name="btncomprar" >
                        
                    </label>
                <p>
                </p>
            </form>
            
            <h2>Tu carrito de compras</h2>
            
            <%
            List<String> listaArticulos=(List<String>)session.getAttribute("sesioncreada");//este metodo nos devuelve un obj de session
            
            if(listaArticulos==null){
                
                listaArticulos=new ArrayList<>();//si la lista de articulos esta vacia quiere decir que no se a creado la sesion ni inicializado el arraylist con elemntos
                session.setAttribute("sesioncreada",listaArticulos);//asi que habiendo llenado el array se crea la sesion y almacenamos en ella los elmentos seleccionados
            }
            
            
            String[] articulos=request.getParameterValues("articulos");
            
            if(articulos!=null){
           
                for(String pro: articulos){
                    
                    
                    
                    listaArticulos.add(pro);//asi que aqui agregamos los elementos seleccionados en el arraylist que se almacena en la sesion
                         
                    
                }
               
            }

            %><ul><%
            for(String l: listaArticulos){
                
                out.print("<li>"+l+"</li>");
                
            }
            
            %></ul><%
            
            %>
            
        </div>
    </body>
</html>

