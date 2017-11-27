<%@ include file="head.jsp" %>  
<%@ include file="proteinDBI.jsp"%>
<body>
<%@ include file="nav.html" %>  

 
<div id="proteinViewer" class="hide">
            
            <div id="proteinWindowViewer" style="height: 500px; width: 500px; position: relative;" class='viewer_3Dmoljs' data-pdb='<%=structurefile %>'  data-backgroundcolor='#1d1d1d' data-style='cartoon:color=spectrum'></div>
            
            <button class="toggleViewer collapse">X</button>

        <div id="controls">
                <h3 class="typeButtonsTitle">Change Type</h3>
                    <button class="line typeButton">Line</button>
                    <button class="stick typeButton">Stick</button>
                    <button class="cartoon typeButton">3D Model</button>
                    <button class="sphere typeButton">Sphere</button>
                    <button class="cross typeButton">Cross</button>
                
        </div>
</div>
    
    

<div id="proteinCard">

	<h1 id="proteinHeader"><%=name %></h1>
	<hr class="proteinHeaderHR">

        <div id="proteinWindow" style="height: 250px; width: 100%; position: relative;" class='viewer_3Dmoljs' data-pdb='<%=structurefile %>'  data-backgroundcolor='0xffffff' data-style='cartoon:color=spectrum'></div>

	<div	 class="stats">
	
		<button class="toggleViewer launchButton">Launch Explorer</button>
		
		<h5>Localization: <%=local %></h5>
		<h5>Molecular Weight: <%=molWeight %></h5>
		<h5>Protein Type: <%=type %></h5>
		<h5>Encoding Gene: <%=gene %></h5>
		<h5>Chromosomal Location: <%=geneLoc %></h5>
		<h5>Theoretical pI: <%=ip %></h5>
	</div>
	
	</div>
	


 
    		<div id="sequenceBox">
    			<input type="text" id="sequence-query" placeholder="Find Motif..."><br>
    			<div id = "searchResultsWrap">
	    			Matches: <h6 id="motif-search-sum"></h6>         
	    			Locations: <h6 id="motif-search-loc"></h6>
    			</div>
			<pre id="formatted-sequence"><code id="inner-pre-text"><%=formattedSeq%></code></pre> 
			<input type="hidden" id="pretag-reset" value="<%=formattedSeq%>">
		</div>
	
	
	
		<div id="table">
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
				<td><%=percentcomp[i] %></td>
			</tr>
		
		<% } %>
	</table>
	</div>

	
	<div id="diseaseView">
	<% 
	String[] diseaseCol = {"Symptoms", "Prognosis", "Treatment", "Description"};
	for(int i = 1; i <= size; i++) { %>
		<h2><%= results[i][1]%></h2>
		<%for (int j = 2; j < 6; j++){ %>
			<h4><%=diseaseCol[j-2] %></h4>
			<div><%=results[i][j] %></div>
			<hr>
		<%} %>
		<%} %>
	</div>
	
</body>
<script src="js/3dmol.js"></script>
</html>