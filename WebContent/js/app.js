//---searching variables---//
var seq;
var splitseq;
var searchMotif;
var indicesOfMatches = [];
//------------------------//
//----loop variables-----//
//-----------------------//

//-----------------------set handlers-------------------------//
$(document).ready(function() {
		seq = $("#inner-pre-text").text();//.replace(new RegExp(" ","g"), "");
		$("#sequence-query").on("input propertychange", function(){
			searchMotif = $("#sequence-query").val().toUpperCase();
			if(searchMotif.length != 0){
				findInSequence()
			}
			else{
				$("#inner-pre-text").empty();
				$("#inner-pre-text").text($("#pretag-reset").val());
			}
		});
	//MORE HANDLERS HERE//	
});
//-------------------------------------------------------------//

//SEARCHING SEQUENCE
//finds all substrings within the main sequence that match the searched motif
//stores results as arrays of 2 integers the beginning int of the match and the end int
function findInSequence() {
	var beginMatch = 0;
	var endMatch = 0;
	var i = 0;
while (endMatch < seq.length){
	endMatch = beginMatch + searchMotif.length;
	var currentlyChecked = seq.substring(beginMatch, endMatch);
	//check for spaces or new lines within the search portion of the sequence
//console.log(searchMotif);
//	if (currentlyChecked.length > 1){
//		for (i = 0; i < currentlyChecked.length; i++){
	if(currentlyChecked.length > 2){
		var chars = currentlyChecked.split("");
		console.log(chars);
	}
//			if(chars[i] === " "){
//				var splitter = searchMotif.split("");
//				splitter.splice(i, 0, " ");
//				searchMotif = splitter.join("");
//				console.log(searchMotif);
//			}
//			else if (chars[i] === "\n") {
//				var splitter = searchMotif.split("");
//				splitter.splice(i, 0, "\n");
//				searchMotif = splitter.join("");
//				console.log(searchMotif);
//			}
//			
//		}
	//}
	//
//	var test = "ab c";
//	var splt = test.split("");
//	splt.splice(1, 0, " ")
//	test = splt.join("")
//	console.log(test);
	if(currentlyChecked === searchMotif){
		var indices = [beginMatch, endMatch];
		indicesOfMatches.push(indices);
		beginMatch = endMatch;
	}
	else{
		beginMatch++;
	}
	}
	insertHighlightSpans();
}

function insertHighlightSpans(){
	var spanOpen = "<span class=\"highlight-span\">";
	var spanClose = "</span>";
	var seqArray = seq.split("");
	for(var i = 0; i < indicesOfMatches.length; i++){
		if(i == 0){
			seqArray.splice(indicesOfMatches[i][0], 0, spanOpen);
			seqArray.splice(indicesOfMatches[i][1]+1, 0, spanClose);
		}
		else{
			indicesOfMatches[i][0] +=  (i*2);
			indicesOfMatches[i][1] +=  (i*2);
			seqArray.splice(indicesOfMatches[i][0], 0, spanOpen);
			seqArray.splice(indicesOfMatches[i][1]+1, 0, spanClose);
		}
	}
	$("#inner-pre-text").empty();
	$("#inner-pre-text").html(seqArray.join(""));
	indicesOfMatches = [];

	
}

