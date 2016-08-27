as yet unclassified
eventCardCode 
	^ 'html mdlCard
	shadow: 2;
	style: ''width: 256px; height: 256px;  background: #3E4EB8;'';
	with: [ 
		html mdlCardTitle
			style: ''align-items: flex-start; color: #fff'';
			expand;
			with: [ 
				html mdlCardTitleText
					style: ''margin-top: 0; align-self: flex-start'';
					level: 4;
					with: [ 
						html text: ''Featured event:''.
						html break.
						html text: ''May 25, 2016''.
						html break.
						html text: ''7-11pm'' ] ].
			html mdlCardActions
				border;
				style:
					''border-color: rgba(255, 255, 255, 0.2);
					display: flex;
 					box-sizing:border-box;
 					align-items: center;
					color: #fff'';
				with: [ 
					html mdlButton
						colored;
						rippleEffect;
						style: ''font-weight: bold; color: #fff'';
						with: ''Add to calendar''.
					html mdlLayoutSpacer.
					html mdlIcon style: ''padding-right: 10px''; with: ''event'' ] ]'