let Vo = 0;
let Kcat = 0;
let Etotal = 0;
let S = 0;
let Km = 0;
let S2 = 0;

let currentOption = "Vo";

$("#Vo").addClass("selected");

$("#dropDown").on("change", function(){
  currentOption = $(this).val();
   $(".variable").removeClass("selected");
  $("#" + currentOption).addClass("selected");
  
  console.log("current option: " + currentOption);
  
});

$("#Vo").on("input", function(){
  kinetics(currentOption);
});
$("#Kcat").on("input", function(){
  kinetics(currentOption);
});
$("#Etotal").on("input", function(){
  kinetics(currentOption);
});
$("#S").on("input", function(){
  kinetics(currentOption);
});
$("#Km").on("input", function(){
  kinetics(currentOption);
});
$("#S2").on("input", function(){
  kinetics(currentOption);
});

function kinetics(option) {
    getValues();
    calculate(option);
    display();
}

function getValues() {
  Vo = Number($("#Vo").val());
  Kcat = Number($("#Kcat").val());
  Etotal = Number($("#Etotal").val()); 
  
  S = Number($("#S").val());
  
  Km = Number($("#Km").val());
  
  // console.log(`Vo:${Vo} | Kcat:${Kcat} | Etotal:${Etotal} | S:${S} | Km:${Km} | S2:${S2}`)
  }
function calculate(option){
  console.log(option);
  if(option == "Vo") {
    Vo = (Kcat * Etotal) * (S/ (Km + S));
    
  } else if(option == "Kcat") {
    Kcat = (Vo * (Km + S))/ (Etotal * S);
    
  } else if(option == "Km") {
    Km = (S * (Kcat * Etotal - Vo)) / Vo;
    
  } else if(option == "S") {
     S = (Vo * Km) / ((Kcat * Etotal) - Vo);
    
  } else if(option == "Etotal") {
    Etotal = (Vo * (Km + S))/(Kcat * S);
  }
  
  // Vo = (Kcat * Etotal) * (S/ (Km + S));
  // Kcat = (Vo * (Km + S))/ (Etotal * S);
  // Km = (S * (Kcat * Etotal - Vo)) / Vo;
  // S = (Vo * Km) / ((Kcat * Etotal) - Vo);
  // Etotal = (Vo * (Km + S))/(Kcat * S);
  
  log();
}

function display() {
  $("#Vo").val(Vo);
  $("#Kcat").val(Kcat);
  $("#Etotal").val(Etotal); 
  $("#S").val(S);
  $("#Km").val(Km);
  $("#S2").val(S);
}

function log() {
  console.log(`Vo:${Vo} | Kcat:${Kcat} | Etotal:${Etotal} | S:${S} | Km:${Km} | S2:${S2}`);
}