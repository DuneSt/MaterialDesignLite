rendering
renderProgressBarOn: html
	html div
		class: 'examples';
		with: [ html mdlProgressBar style: 'margin: auto;'; id: 'progressBar'.
			html
				script:
					'setInterval(function(){document.querySelector(''#progressBar'').MaterialProgress.setProgress(100/60* (new Date()).getSeconds());}, 1000);'.
			html paragraph: 'Progress bar' ].
	html preformatted: [ html code class: 'smalltalk';
				with:
					self progressBarCode ]