as yet unclassified
renderProgressBarOn: html
	html div
		class: 'mdl-typography--text-center';
		with: [ html mdlProgressBar style: 'margin: auto;'; id: 'progressBar'.
			html
				script:
					'document.querySelector(''#progressBar'').addEventListener(''mdl-componentupgraded'', function() {
	this.MaterialProgress.setProgress(44);
});'.
			html paragraph: 'Progress bar' ].
	html preformatted: [ html code class: 'smalltalk';
				with:
					'html mdlProgressBar id: ''progressBar''.
html script:
	''
	document.querySelector(''''#progressBar'''').addEventListener(''''mdl-componentupgraded'''', function() {
		this.MaterialProgress.setProgress(44);
	});''' ]