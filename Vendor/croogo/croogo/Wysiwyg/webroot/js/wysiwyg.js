/**
 * Every rich text editor plugin is expected to come with a wysiwyg.js file,
 * and should follow the same structure.
 *
 * This makes sure there is consistency among multiple RTE plugins.
 */
if (typeof Croogo.Wysiwyg == 'undefined') {
	// Croogo.uploadsPath and Croogo.attachmentsPath is set from Helper anyways
	Croogo.Wysiwyg = {
		uploadsPath: Croogo.basePath + 'uploads/',
		attachmentsPath: Croogo.basePath + 'file_manager/attachments/browse'
	};
}

/**
 * This function is called when you select an image file to be inserted in your editor.
 */
Croogo.Wysiwyg.choose = function(url, title, description) {

};

/**
 * This function is called when you select an image file to be inserted in your editor.
 */
Croogo.Wysiwyg.custom = function(url, title, description) {
	var splitter;
	if (typeof window.location.href.split('#')[0].split('?')[1] != 'undefined'){
	
		var params = window.location.href.split('#')[0].split('?')[1].split('&');
		splitter = "=";
	}else{
		var temp = window.location.href.split('#')[0].split('/');
		var params = temp[temp.length-1].split(';');
		splitter = ":";
		
	}
	
	var paramsObj = {};
	for (var i in params) {
		var param = params[i];
		var paramE = param.split(splitter);
		var k = paramE[0];
		var v = paramE[1];
		
		paramsObj[k] = v;
	}

	if (typeof paramsObj['controler'] != 'undefined') {
		field = window.top.opener.document.getElementById(paramsObj['controler']);
		field.value = url;
		window.top.close();
	}
};

/**
 * Returns boolean value to indicate an editor within the page has been modified
 */
Croogo.Wysiwyg.isDirty = function() {
}

/**
 * Reset dirty indicator for all editors in the page
 */
Croogo.Wysiwyg.resetDirty = function() {
}

/**
 * This function is responsible for integrating attachments/file browser in the editor.
 */
Croogo.Wysiwyg.browser = function() {

};

if (typeof jQuery != 'undefined') {
	$(document).ready(function() {
		Croogo.Wysiwyg.browser();
	});
}
