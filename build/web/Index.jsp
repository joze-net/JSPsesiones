<%-- 
    Document   : Index
    Created on : 20-may-2020, 15:16:07
    Author     : JOZE RODRIGUEZ
--%>

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
            String[] articulos=request.getParameterValues("articulos");
            
            if(articulos!=null){
            %><ul><%
                for(String pro: articulos){
                    
                    %>
                    <li>
                    <%
                    out.print(pro);
                    %>
                    </li>
                    <%
                }
                %><ul><%
            }
            

            
            %>
            
        </div>
    </body>
</html>

