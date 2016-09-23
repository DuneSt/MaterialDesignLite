rendering
renderProgressBarOn: html
	html div
		class: 'examples';
		with: [ html mdlProgressBar style: 'margin: auto;'; id: 'progressBar'.
			html
				script:
					'document.querySelector(''#progressBar'').addEventListener(''mdl-componentupgraded'', function() {
	this.MaterialProgress.setProgress(44);
});'.
			html paragraph: 'Progress bar' ].
	html preformatted: [ html code class: 'smalltalk';
				with:
					self progressBarCode ]