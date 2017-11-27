console.log("ready");

// let viewer =  $3Dmol.viewers["proteinWindowViewer"];


$(".line").on("click", function() {
    console.log("clicked");
    let viewer =  $3Dmol.viewers["proteinWindowViewer"];
    viewer.setStyle({line:{radius:.2}});
    viewer.render();

});

$(".stick").on("click", function() {
    console.log("clicked");
    let viewer =  $3Dmol.viewers["proteinWindowViewer"];
    viewer.setStyle({stick:{radius:.2}});
    viewer.render();

});

$(".cartoon").on("click", function() {
    console.log("clicked");
    let viewer =  $3Dmol.viewers["proteinWindowViewer"];
    viewer.setStyle({cartoon:{radius:.2, color: "spectrum"}});
    viewer.render();

});

$(".sphere").on("click", function() {
    console.log("clicked");
    let viewer =  $3Dmol.viewers["proteinWindowViewer"];
    viewer.setStyle({sphere:{radius:.2, color: "spectrum"}});
    viewer.render();

    $("#revealSubPanel").slideToggle();
});

$(".cross").on("click", function() {
    console.log("clicked");
    let viewer =  $3Dmol.viewers["proteinWindowViewer"];
    // viewer.addLabels();
    viewer.setStyle({cross:{radius:.2, color: "spectrum"}});

    // viewer.setStyle({cartoon:{},stick:{}});
    viewer.render();

});


$(".toggleViewer").on("click", function() {
    console.log("clicked");
    $("#proteinViewer").fadeToggle();
});

