<%@ include file="head.jsp" %>  

<body>

    <%@ include file="nav.html" %>  
      
  	<div class="calculatorContainer">
  	
  	<div id="VoCalc" class="calculator">
  
  <div class="solveFor">
    
  <p id="subTitle">Solve For</p>
    
  <select name="" id="dropDown">
    <option value="Vo">Vo</option>
    <option value="Kcat">Kcat</option>
    <option value="Etotal">[E]Total</option>
    <option value="S">[S]</option>
    <option value="Km">K m</option>
  </select>
    
</div>
  
  <input id="Vo" type="number" placeholder="Vo" class="variable"> <label>=</label>
  
  <input id="Kcat" type="number" placeholder="Kcat" class="variable">
  <label>*</label>
  <input id="Etotal" type="number" placeholder="[E] total" class="variable">
  <label>(</label>
  <input id="S" type="number" placeholder="[S]" class="variable">
  <label>/</label>
  <input id="Km" type="number" placeholder="K m" class="variable">
  <label>+</label>
  <input id="S2" type="number" placeholder="[S]" readonly class="variable">
  <label>)</label>
 
</div>



</div>

</body>
	<script src="js/calculator.js"></script>
</html>