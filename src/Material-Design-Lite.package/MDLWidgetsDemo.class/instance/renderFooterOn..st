rendering
renderFooterOn: html
	html
		render:
			(MDLFooter new
				atTopLeftAddComponents: self initializeTopComponents1;
				atTopRightAddComponents: self initializeTopComponents2;
				atMiddleAddLinks: self initializeMiddleLinks;
				atBottomAddLinks: self initializeBottomLinks;
				yourself)