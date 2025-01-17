<%-- 
    Document   : listar_produto2
    Created on : 17/10/2016, 14:09:52
    Author     : Senai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="produtos.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listar Produtos</title>
    </head>
    <body background="marketforyou.jpg">
        <div align="center">
            <h1>Produtos cadastrados</h1>

            <table border="1">
                <thead>
                    <tr>
                        <td>Codigo</td>
                        <td>Nome</td>  
                        <td>Quantidade</td>
                        <td>Preço</td>
                        <td>Categoria</td>
                        <td>Mercado</td>
                        <td>Tamanho</td>
                        <td>Marca</td>
                        <td>Forma de Calcular Venda</td>
                        <td>Codigo de Barras</td>
                    </tr>
                </thead>
                <tbody>
                    <% for (Produtos produto : ProdutosDAO.Listar()) {%>
                    <tr>
                        <td> <%= produto.codigo%> </td>
                        <td> <%= produto.nome%> </td>
                        <td><%= produto.quantidade%></td>
                        <td><%= produto.preco%></td>
                        <td><%= produto.categoria%></td>
                        <td><%= produto.mercado%></td>
                        <td><%= produto.tamanho%></td>
                        <td><%= produto.marca%></td>
                        <td><%= produto.formadecalcularvenda%></td>
                        <td><%= produto.codigodebarra%></td>

                            </a>
                        </td>
                    </tr>

                    <% }%>
                </tbody>
            </table>
        </div> 
    </body>
</html>
