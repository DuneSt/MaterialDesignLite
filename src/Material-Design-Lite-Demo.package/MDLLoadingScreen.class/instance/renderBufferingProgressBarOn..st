demos
renderBufferingProgressBarOn: html
	html mdlProgressBar id: 'bufferingProgressBar'.
	html
		script:
			'document.querySelector(''#bufferingProgressBar'').addEventListener(''mdl-componentupgraded'', function() {
	this.MaterialProgress.setProgress(33);
	this.MaterialProgress.setBuffer(87);
});'