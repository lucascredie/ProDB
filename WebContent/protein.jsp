
<%@ include file="head.jsp" %>  
<%@ include file="proteinDBI.jsp"%>
<body>

<%@ include file="nav.html" %>   

<h1 id="proteinHeader"><%=name %></h1>
<hr class="proteinHeaderHR">
	<div id="sideBar">
    
        <div id="proteinWindow" style="height: 350px; width: 350px; position: relative;" class='viewer_3Dmoljs' data-pdb='1SS8'  data-backgroundcolor='0xffffff' data-style='cartoon:color=spectrum'></div>


        <div class="buttonBox">
            <button class="Button">Kinetics</button>
            <button class="Button">Pathogenicity</button>
        </div>
        
    </div>  
    

    <div class="content">
 
    <div id="sequenceBox">
    		<input type="text" id="sequence-query" placeholder="Find Motif..."><br>
		<pre id="formatted-sequence"><code id="inner-pre-text"><%=formattedSeq%></code></pre> 
		<input type="hidden" id="pretag-reset" value="<%=formattedSeq%>">
	</div>
	
	<div id="proteinStats">
		<h5>Localization: <%=local %></h5>
		<h5>Molecular Weight: <%=molWeight %></h5>
		<h5>Protein Type: <%=type %></h5>
		<h5>Chromosomal Location: <%=geneLoc %></h5>
	</div>
	
	<table>
		<tr>
			<th>Amino Acid</th>
			<th>Count</th>
			<th>Percent</th>
		</tr>
		
		<%for (int i = 0; i< residueCounts.length; i++) {%>
			<tr>
				<td><%=triletter[i] %></td>
				<td><%=residueCounts[i] %></td>
				<td><%= percentcomp[i] %></td>
			</tr>
		
		<% } %>
	</table>
	
	</div>
	
	
	
	
	
	
	

</body>
</html>