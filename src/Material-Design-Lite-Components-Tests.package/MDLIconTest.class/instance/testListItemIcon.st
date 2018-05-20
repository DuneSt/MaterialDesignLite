tests
testListItemIcon
	self
		assert: [ :html | 
			html mdlIcon
				listItemIcon;
				with: 'mood' ]
		generates: '<i class="material-icons mdl-list__item-icon">mood</i>'