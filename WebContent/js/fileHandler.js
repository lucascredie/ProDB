
$(document).ready(function() {
	var result;
	$("#fileSelect").on("click", function() {
		var infile = $("#fileIn").files(); 
		console.log(infile);
		var i,f;
		  for (i = 0, f = infile[i]; i != infile.length; ++i){
			  var freader = new FileReader();
			  console.log(freader);
			  var name = f.name;
			  
			  freader.onload = function(e) {
				  console.log("in foreach function");
				  var data = e.target.result
				  
	                var workbook = XLSX.read(data, { type: 'binary' });
	                
	                var sheet_name_list = workbook.SheetNames;
	                sheet_name_list.forEach(function (y) { 
												
	                    // Convert the cell value to Json
	                		
	                    var roa = XLSX.utils.sheet_to_json(workbook.Sheets[y]);
	                    if (roa.length > 0) {
	                    		console.log("in result if");
	                        result = roa;
	                    }
			  });
		  }
			  for(var k = 0; k < result.length; k++){
				  alert(result[k].Column1);
			  }
	}
	
});
});


