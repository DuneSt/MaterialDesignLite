Description
--------------------

I am a brush to create a loading and progress states.

Example
--------------------

	html mdlProgressBar id: 'progressBar'.
	html script: 'setInterval(function(){document.querySelector(''#progressBar'').MaterialProgress.setProgress(100/60* (new Date()).getSeconds());}, 1000);' js