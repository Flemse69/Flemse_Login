window.addEventListener('message', function(event) {
    var item = event.data;

    if (item.status == true) {
        $("#container").fadeIn();
        $("#container2").fadeOut();
	}
    if (item.type == "container2"){
        $("#container2").fadeIn();
        $("#container").hide();
    }
	else if (item.status == false){
    $("#container").hide();
    $("#container2").hide();
	}
});

function accept() {
    $("#container").hide();
    $("#container2").hide();
    $.post("http://oxide_spawnselect/accept");
}

function Luk() {
    $("#container").hide();
    $("#container2").hide();
    $.post("http://oxide_spawnselect/Luk");
}

function paleto() {
    $.post("http://oxide_spawnselect/Luk");
    $.post("http://oxide_spawnselect/paleto");
    $("#container").hide();
    $("#container2").hide();
}

function sandy() {;
    $.post("http://oxide_spawnselect/Luk");
    $.post("http://oxide_spawnselect/sandy");
    $("#container").hide();
    $("#container2").hide();
}

function midtby() {
    $.post("http://oxide_spawnselect/Luk");
    $.post("http://oxide_spawnselect/midtby");
    $("#container").hide();
    $("#container2").hide();
}

function seneste() {
    $.post("http://oxide_spawnselect/Luk");
    $.post("http://oxide_spawnselect/seneste");
    $("#container").hide();
    $("#container2").hide();
}