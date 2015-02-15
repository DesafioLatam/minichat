$(function() {
	setInterval(function(){
		console.log("hola");
		$.getScript('/messages', function(data, textStatus) {
			/*optional stuff to do after getScript */ 
		});
	}, 3000);
});
