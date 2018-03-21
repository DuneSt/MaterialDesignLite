code
renderCardOn: html
	html div
		style: 'text-align: left';
		with: [ html
				render:
					(MDLCardWidget new
						class: 'mdl-widget-demo-card';
						shadow: 2;
						title: self title;
						addTextContainer: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sagittis pellentesque lacus eleifend lacinia...';
						addAction: [ html mdlButton
								colored;
								rippleEffect;
								with: 'Get started' ];
						actionsBordered;
						yourself) ]