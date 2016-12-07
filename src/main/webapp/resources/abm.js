var token = $("meta[name='_csrf']").attr("content");
var header = $("meta[name='_csrf_header']").attr("content");

$(document).ajaxSend(function(e, xhr, options) {
    xhr.setRequestHeader(header, token);
}); 
 
$(document).ready(function(){
	
	var $books = $('#books');
	var $title = $('#title');
	
	$.ajax({
		type:'GET',
		url:'List',
		success: function(books){
			$.each(books, function(i, book){
			  $('#books').append('<li>'+book.title+' <button class="delet" id="' +book.id+ '">x</button> &nbsp; <button class="modify" id="'+book.id+'" title="'+book.title+'">Modify</button> </li>');
			});
		},
		error: function(){
			alert('Error');
		}
	}); 

	$('#botonID').on('click', function(){
		var book = {
			title: $('#title').val()
		};
		if($('#title').val()){
			$.ajax({
				type:'POST',
				url: 'Addd',
				data: book,
					success: function(addBook){
				$('#books').append('<li>'+addBook.title+'<button class="delet" id="'+addBook.id+'">x</button>&nbsp; <button class="modify" id="'+addBook.id+'" title="'+addBook.title+'">Modify</button> </li>');
					},
				error: function(){
					alert('error saving book');
				}
			});
		}
		else
		{
			alert('No valido libro vacio');
		}
	});
	
	$('#books').delegate('.delet','click',function(){
		var $li = $(this).closest('li');
		$.ajax({
			type: 'DELETE',
			url: 'Delete/' + $(this).attr('id'),
			success: function(){
				$li.remove();
					},
			error: function(){
				alert('error delete book');
			}
		});
	});
	
	var $la;
	
	$('#books').delegate('.modify','click',function(){
		$("#modify").val($(this).attr("title"));
		$la = $(this).closest('li');
		$('.botonModify').attr('id',$(this).attr('id'));
	});
	
	$('.botonModify').on('click',function(){
			//$("#modify").val($(this).attr("title"));
			var book = {title: $('#modify').val()};
			$.ajax({
				type: 'POST',
				url: 'Modify/' + $(this).attr('id'),
				data: book,
				success: function(book){
					$la.remove();
					$('#books').append('<li>'+book.title+' <button class="delet" id="' +book.id+ '">x</button> &nbsp; <button class="modify" id="'+book.id+'" title="'+book.title+'">Modify</button> </li>');
					$("#modify").val($(this).attr(""));
						},
				error: function(){
					alert('error modify book');
				}
			});
	});

});