<%@page import="modelo.Jogador"%>
<%@page import="dao.JogadorDAO"%>
<%@include file="../cabecalho.jsp"%>

<%

    String jog = request.getParameter("LoginJog");
    JogadorDAO dao = new JogadorDAO();
    Jogador jogador = dao.buscarPorChavePrimaria(jog);

    dao.excluir(jogador);
%>


<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text ">
            
            
            
            <h4>Jogador  Excluir</h4>
            <p>Jogador exclu�do.</p>
            <a href="list.jsp"><i class="material-icons">list</i></a>

        </div>

    </div>

</section>

<%@include file="../rodape.jsp"%>

