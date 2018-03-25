rendering
renderForkMeOnGithubOn: html
	html anchor
		url: 'https://github.com/DuneSt/MaterialDesignLite';
		with: [ html image
				style: 'position: absolute; top: 0; right: 0; border: 0; z-index: 5;width: 100px; height: 100px;';
				url: 'https://s3.amazonaws.com/github/ribbons/forkme_right_darkblue_121621.png';
				altText: 'Fork me on GitHub' ].
	html text: '            '