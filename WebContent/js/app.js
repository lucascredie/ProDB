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
		seq = $("#inner-pre-text").text().replace(/ /gm, "").replace(/(\r\n|\n|\r)/gm,'');
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
	var specChar = RegExp('[X]');
	var test = specChar.exec(searchMotif);
	console.log(test);
	var xs = [];
	var generalCase = false;
	var splitMotif = searchMotif.split("");
	if (test != null && searchMotif.length >= 2){
		
		for (var i = 0; i < searchMotif.length; i++){
			console.log("HI");
			var char = searchMotif.charAt(i);
			if(char == "X"){
				xs.push(i);
			}
		}
		generalCase = true;
	}
while (endMatch < seq.length){
	endMatch = beginMatch + searchMotif.length;
	var currentlyChecked = seq.substring(beginMatch, endMatch);
	//check for spaces or new lines within the search portion of the sequence
	if(generalCase){
		var currCheckedSplit = currentlyChecked.split("");
		//process out x's
		for(var i = 0; i < splitMotif.length; i++){
			if(xs[i] != null){
			currCheckedSplit.splice(xs[i],1,"X");
			}
		}
		currentlyChecked = currCheckedSplit.join("");
	}
	if(currentlyChecked === searchMotif){
		var indices = [beginMatch, endMatch];
		indicesOfMatches.push(indices);
		beginMatch = endMatch;
	}
	else{
		beginMatch++;
	}
	currentlyChecked = "";
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
	var k = 0;
	var j = 0;
	seqArray.splice(0,0," ");
	while(k < seqArray.length) {
		if( k >= 10 && k %10 == 0) {
			if(seqArray[j] == spanOpen || seqArray[j]== spanClose){
				seqArray.splice(j-1,0," ");
			}
			else{seqArray.splice(j,0," ");}

			
		}
		if ( k >= 40 && k %40 == 0) {
			if(seqArray[j] == spanOpen || seqArray[j]== spanClose){
				seqArray.splice(j-1,0,"\n");
			}
			else{seqArray.splice(j,0,"\n");}
			
		}
		if((seqArray[j] != spanOpen) && (seqArray[j] != spanClose)){
			k++;
		}
		j++;
		
	}
	console.log(seqArray.join(""));
	$("#inner-pre-text").empty();
	$("#inner-pre-text").html(seqArray.join(""));
	indicesOfMatches = [];

	
}

