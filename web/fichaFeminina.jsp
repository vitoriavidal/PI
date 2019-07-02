<%@page import="persistencia.AlunoBD"%>
<%@page import="dominio.Aluno"%>
<%@page import="dominio.Aluno"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    int codigo = Integer.parseInt(request.getParameter("codigo"));
    Aluno aluno = AlunoBD.getByCodigo(codigo);
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width initial-scale=1" />

        <title>Ficha de Treino Feminina</title>

        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>


    </head>
    <body>
        <div class="container-fluid">

            <div class="row align-items-center mb-3 person-w-1200-fix">
                <div  class="col-sm-2 col-xs-12">
                    <img src="img/logvermelho.png" alt="" class="icone"/>
                </div>
                <div  class="col-sm-5 col-xs-12">

                    <nav class="nav nav-pills nav-justified">
                        <a class="nav-item nav-link person-text-color-1" href="listar.jsp">Lista de Alunos</a>
                        <a class="nav-item nav-link active person-background-color-1" href="#">Ficha Feminina</a>
                        <a class="nav-item nav-link person-text-color-1" href="login.jsp">SAIR </a>
                    </nav>
                </div>
                <div  class="col-sm-3 col-xs-12">
                    <a class="nav-item nav-link person-text-color-0">ADMINISTRADOR</a>
                </div>
                <div class="col-sm-2 col-xs-12">

                    <img src="img/acd1.png" alt="" class="icone"/>
                </div>
            </div>
            <hr>
            <div class="row">

                <div class="col-12 col-xs-12">
                    <%
                        String resposta = request.getParameter("resposta");
                        if (resposta != null) {
                            if (resposta.equalsIgnoreCase("OK")) {
                                out.println("Cadastrado com sucesso");
                            } else {
                                out.println(resposta);
                            }
                        }
                    %>
                    <form id="fichaFeminina" name="fichaFeminina" method="post" action="salvar_fichaFeminina.jsp">

                        <div class="form-group">
                            <h1><strong>Ficha Feminina</strong></h1>
                            <h1>Aluna: <%=aluno.getNome()%></h1> 

                            
                            <table class="border-radius-style ficha">
                                <tr>
                                    <td>Data de Avaliação:</td>
                                    <td><input type="text" id="entrada" name="entrada" class="form-control" placeholder="00/00/0000"></td>

                                </tr>
                                <tr>
                                    <td>Data da Reavaliação:</td>
                                    <td><input type="text" id="renovacao" name="renovacao" class="form-control" placeholder="00/00/0000"></td>

                                </tr>
                            </table>


                            <table class="border-radius-style ficha ">


                                <thead>
                                    <tr>
                                        <th>Exercício</th>
                                        <th>Série</th>
                                        <th>Repetição</th>
                                    </tr>
                                </thead>

                                <tr>
                                    <td>Abdominal Prancha:</td>
                                    <td><input type="number" id="seriePrancha" name="seriePrancha" size="2" maxlength="2" class="form-control"></td>
                                    <td><input type="number" id="repPrancha" name="repPrancha" size="2" maxlength="2" class="form-control"></td>
                                </tr> 

                                <tr>
                                    <td>Agachamento Leg horizontal + Panturrilha:</td>
                                    <td><input type="number" id="serieAgachamento" name="serieAgachamento" size="2" maxlength="2" class="form-control"></td>
                                    <td><input type="number" id="repAgachamento" name="repAgachamento" size="2" maxlength="2" class="form-control"></td>
                                </tr> 
                                <tr>
                                    <td>Abdominal Infra Banco:</td>
                                    <td><input type="number" id="serieAbdominalInfra" name="serieAbdominalInfra" size="2" maxlength="2" class="form-control"></td>
                                    <td><input type="number" id="repAbdominalInfra" name="repAbdominalInfra" size="2" maxlength="2" class="form-control"></td>
                                </tr> 

                                <tr>
                                    <td>Cadeira Abdutora:</td>
                                    <td><input type="number" id="serieCadAbdutora" name="serieCadAbdutora" size="2" maxlength="2" class="form-control"></td>
                                    <td><input type="number" id="repCadAbdutora" name="repCadAbdutora" size="2" maxlength="2" class="form-control"></td>
                                </tr> 

                                <tr>
                                    <td>Cadeira Adutora:</td>
                                    <td><input type="number" id="serieCadAdutora" name="serieCadAdutora" size="2" maxlength="2" class="form-control"></td>
                                    <td><input type="number" id="repCadAdutora" name="repCadAdutora" size="2" maxlength="2" class="form-control"></td>
                                </tr> 

                                <tr>
                                    <td>Elevação Frontal:</td>
                                    <td><input type="number" id="serieElevacaoFrontal" name="serieElevacaoFrontal" size="2" maxlength="2" class="form-control"></td>
                                    <td><input type="number" id="repElevacaoFrontal" name="repElevacaoFrontal" size="2" maxlength="2" class="form-control"></td>
                                </tr> 

                                <tr>
                                    <td>Fortalecimento Lombar Romana:</td>
                                    <td><input type="number" id="serieFortLombar" name="serieFortLombar" size="2" maxlength="2" class="form-control"></td>
                                    <td><input type="number" id="repFortLombar" name="repFortLombar" size="2" maxlength="2" class="form-control"></td>
                                </tr> 

                                <tr>
                                    <td>Glúteos Cross:</td>
                                    <td><input type="number" id="serieGluteoCross" name="serieGluteoCross" size="2" maxlength="2" class="form-control"></td>
                                    <td><input type="number" id="repGluteoCross" name="repGluteoCross" size="2" maxlength="2" class="form-control"></td>
                                </tr> 

                                <tr>
                                    <td>Glúteos 3 Apoios:</td>
                                    <td><input type="number" id="serieGluteoApoio" name="serieGluteoApoio" size="2" maxlength="2" class="form-control"></td>
                                    <td><input type="number" id="repGluteoApoio" name="repGluteoApoio" size="2" maxlength="2" class="form-control"></td>
                                </tr> 

                                <tr>
                                    <td>Mesa Flexora:</td>
                                    <td><input type="number" id="serieMesaFlex" name="serieMesaFlex" size="2" maxlength="2" class="form-control"></td>
                                    <td><input type="number" id="repMesaFlex" name="repMesaFlex" size="2" maxlength="2" class="form-control"></td>
                                </tr> 
                                
                                 <tr>
                                    <td>Puxador Costas:</td>
                                    <td><input type="number" id="seriePuxador" name="seriePuxador" size="2" maxlength="2" class="form-control"></td>
                                    <td><input type="number" id="repPuxador" name="repPuxador" size="2" maxlength="2" class="form-control"></td>
                                </tr>
                                
                                 <tr>
                                    <td>Tríceps Pulley:</td>
                                    <td><input type="number" id="serieTriceps" name="serieTriceps" size="2" maxlength="2" class="form-control"></td>
                                    <td><input type="number" id="repTriceps" name="repTriceps" size="2" maxlength="2" class="form-control"></td>
                                </tr>
                                
                                <tr>
                                    <td>Rosca Alternada + Inteira:</td>
                                    <td><input type="number" id="serieRoscaAlternada" name="serieRoscaAlternada" size="2" maxlength="2" class="form-control"></td>
                                    <td><input type="number" id="repRoscaAlternada" name="repRoscaAlternada" size="2" maxlength="2" class="form-control"></td>
                                </tr> 

                                <tr>
                                    <td>Supino Plano:</td>
                                    <td><input type="number" id="serieSupino" name="serieSupino" size="2" maxlength="2" class="form-control"></td>
                                    <td><input type="number" id="repSupino" name="repSupino" size="2" maxlength="2" class="form-control"></td>
                                </tr> 



                                <tr>
                                    <td><input type="text" id="exer1" name="exer1" size="2"  class="form-control" placeholder="Adionar Exercicio"></td>
                                    <td><input type="number" id="serieExer1" name="serieExer1" size="2" maxlength="2" class="form-control"></td>
                                    <td><input type="number" id="repExer1" name="repExer1" size="2" maxlength="2" class="form-control"></td>
                                </tr> 
                                <tr>
                                    <td><input type="text" id="exer2" name="exer2" size="2"  class="form-control " placeholder="Adionar Exercicio"></td>
                                    <td><input type="number" id="serieExer2" name="serieExer2" size="2" maxlength="2" class="form-control"></td>
                                    <td><input type="number" id="repExer2" name="repExer2" size="2" maxlength="2" class="form-control"></td>
                                </tr> 
                                <tr>
                                    <td><input type="text" id="exer3" name="exer3" size="2" class="form-control" placeholder="Adionar Exercicio"></td>
                                    <td><input type="number" id="serieExer3" name="serieExer3" size="2" maxlength="2" class="form-control"></td>
                                    <td><input type="number" id="repExer3" name="repExer3" size="2" maxlength="2" class="form-control"></td>
                                </tr> 

                                <tr>
                                    <td><input type="text" id="aerobico" name="aerobico" size="2" class="form-control" placeholder="Aeróbico"></td>
                                <br>
                                <td>Tempo:</td>
                                <td><input type="text" id="tempo" name="tempo" size="2" class="form-control"></td>
                                </tr>
                                <tr>
                                    <td><input type="submit" class="btn_cadastro n-widht-input" value="Cadastrar"/></td>
                                </tr>
                            </table>
                            <input type="hidden" name="codigo" value="<%=codigo%>" />
                    </form> 
                </div>
            </div>
        </div>



        <hr>
        <div class="row">
            <div class="col-4" >
            </div>
            <div class="col-4" >
                <img src="img/nomelogo.png" alt=""  class="icone"/>                    
            </div>
            <div class="col-4" >
                <a href="fichaFeminina.jsp" class="voltar-ao-topo">Voltar ao topo</a>                   
            </div>

        </div>
        <hr>

    </div>
    <script src="js/jquery-3.3.1.min.js" type="text/javascript"></script>
    <script src="js/jquery.mask.min.js" type="text/javascript"></script>
    <script src="js/jquery.validate.min.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <script src="js/additional-methods.min.js" type="text/javascript"></script>
    <script src="js/localization/messages_pt_BR.js" type="text/javascript"></script>

</body>
</html>
