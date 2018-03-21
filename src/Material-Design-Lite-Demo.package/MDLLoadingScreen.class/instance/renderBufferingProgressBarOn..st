rendering
renderBufferingProgressBarOn: html
	html div
		class: 'examples';
		with: [ 
					html mdlProgressBar
						style: 'margin: auto;';
						id: 'bufferingProgressBar'.
					html
						script:
							'document.querySelector(''#bufferingProgressBar'').addEventListener(''mdl-componentupgraded'', function() {
	this.MaterialProgress.setProgress(33);
	this.MaterialProgress.setBuffer(87);
});'.
					html paragraph: 'Buffering progress bar' ].
	html
		preformatted: [ 
			html code
				class: 'smalltalk';
				with:
						self progressBarBufferingCode ]