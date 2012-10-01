var jqm = {
	
	buttons : {
		standard : function(url, icon, icon_position, text)
		{
			var button = $(document.createElement('a'));
			button.attr('href', (url != null) ? url : 'javascript:void(0)');
			
			button.attr('data-role','button');
			button.attr('data-icon',icon);
			button.attr('data-iconpos',icon_position);

			button.html(text);

			return button;

		}
	}
}
