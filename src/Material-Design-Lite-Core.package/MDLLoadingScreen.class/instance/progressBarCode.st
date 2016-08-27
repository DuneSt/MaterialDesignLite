code
progressBarCode 
	^ 'html mdlProgressBar id: ''progressBar''.
html script:
	''
	document.querySelector(''''#progressBar'''').addEventListener(''''mdl-componentupgraded'''', function() {
		this.MaterialProgress.setProgress(44);
	});'''