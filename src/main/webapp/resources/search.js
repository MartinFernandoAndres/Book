var token = $("meta[name='_csrf']").attr("content");
var header = $("meta[name='_csrf_header']").attr("content");

$(document).ajaxSend(function(e, xhr, options) {
    xhr.setRequestHeader(header, token);
}); 

function doSearch(){
	$.getJSON("looseSearch.do",
		{CHARS: $('#searchBox').val() },
		function(data){
			$('#results').text('');
			for(var index in data){
					$('#idSelect').append('<option>' + data[index].title + '</option>');
			}
		});
}