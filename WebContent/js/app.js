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
		seq = $("#inner-pre-text").text().replace(new RegExp(" ","g"), "");
		$("#sequence-query").on("input propertychange", function(){
			searchMotif = $("#sequence-query").val().toUpperCase();
			if(searchMotif.length != 0){
				findInSequence()
			}
		});
	//MORE HANDLERS HERE//	
});
//-------------------------------------------------------------//

//SEARCHING SEQUENCE
function findInSequence() {
	var beginMatch = 0;
	var endMatch = 0;
	var i = 0;
while (endMatch < seq.length){
	endMatch = beginMatch + searchMotif.length;
	currentlyChecked = seq.substring(beginMatch, endMatch);
	if(currentlyChecked == searchMotif){
		var indices = [beginMatch, endMatch];
		indicesOfMatches.push(indices);
		i++;
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
	for ( var i = 0; i < seqArray.length; i++){
		if( i >= 10 && i%10 == 0) {
			 seqArray.splice(i, 0, " ");
			
		}
		if( i >= 60 && i%60 == 0) {
			seqArray.splice(i, 0, "\n");
		}
	}
	console.log(seqArray);
	$("#inner-pre-text").empty();
	$("#inner-pre-text").html(seqArray.join(""));
	indicesOfMatches = [];

	
}

