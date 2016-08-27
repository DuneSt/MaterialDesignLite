rendering
renderCardOn: html
	html
		html:
			'<style>
 .mdl-card {
    width: 256px;
    height: 256px;
    background: #3E4EB8;
  }
 .mdl-card__actions {
    border-color: rgba(255, 255, 255, 0.2);
  }
 .mdl-card__title,
 .mdl-card__actions > .mdl-button {
    color: #fff;
  }
</style>
'.
	html
		mdlCell: [ 
			html
				mdlCard: [ 
					html mdlCardTitle: [ html mdlCardTitleText: 'Title' level: 2 ].
					html mdlCardTitle: [ html mdlCardSubtitleText: 'Subtitle' ].
					html mdlCardTextContainer border; with: [ html text: 'Text that can be long or short but right now I want to show the behavior with long text.' ].
					html mdlCardActions border; with: [ html mdlButton colored ; rippleEffect; with: [ html text: 'Button' ] ] ] ]
		size: 4