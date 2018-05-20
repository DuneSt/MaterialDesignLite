tests
testListItemAvatar
	self
		assert: [ :html | 
			html mdlIcon
				listItemAvatar;
				with: 'mood' ]
		generates: '<i class="material-icons mdl-list__item-avatar">mood</i>'