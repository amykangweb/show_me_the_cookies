$(document).ready(function() {

	document.cookie = "Cat=Meow"

	$('.steal_cookie').on("click", this, function(e) {
		e.preventDefault();
		$.post("/cookies", { cookies: document.cookie }, function(data) {
			$('.result').html("Stolen!");
		});
	});
});