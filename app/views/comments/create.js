$('#show_comment').html("<%= escape_javascript(render(:partial => @page.comments)) %>");
$(":input:not(input[type=submit])").val(" ");

