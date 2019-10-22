Extension { #name : #WAHtmlCanvas }

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlAnchorButton [
	^ self brush: MDLAnchorButton new 
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlBadge [
	^ self brush: MDLBadge new 
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlBadge: aString [
	^ self mdlBadge
		with: aString;
		yourself
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlButton [
	^ self brush: MDLButton new 
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlButton: aSubComponent [
	^ self mdlButton
		with: aSubComponent;
		yourself
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlCard [
	^ self brush: MDLCardTag new 
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlCard: aBlock [
	^ self mdlCard
		with: aBlock;
		yourself
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlCardActions [
	^ self brush: MDLCardActions new 
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlCardActions: aBlock [
	^ self mdlCardActions
		with: aBlock;
		yourself
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlCardMedia [
	^ self brush: MDLCardMedia new 
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlCardMedia: aBlock [
	^ self mdlCardMedia
		with: aBlock;
		yourself
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlCardMenu [
	^ self brush: MDLCardMenu new 
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlCardMenu: aBlock [
	^ self mdlCardMenu
		with: aBlock;
		yourself
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlCardSubtitleText [
	^ self brush: MDLCardSubtitleText new
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlCardSubtitleText: text [
	^ self mdlCardSubtitleText
		with: text;
		yourself
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlCardTextContainer [
	^ self brush: MDLCardTextContainer new 
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlCardTextContainer: aBlock [
	^ self mdlCardTextContainer
		with: aBlock;
		yourself
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlCardTitleContainer [
	^ self brush: MDLCardTitleContainer new
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlCardTitleContainer: aBlock [
	^ self mdlCardTitleContainer
		with: aBlock;
		yourself
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlCardTitleText [
	^ self brush: MDLCardTitleText new
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlCardTitleText: text [
	^ self mdlCardTitleText
		with: text;
		yourself
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlCardTitleText: text level: lvl [
	^ self mdlCardTitleText
		level: lvl;
		with: text
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlCell [
	^ self brush: MDLCell new 
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlCell: aBlock [
	^ self mdlCell
		with: aBlock;
		yourself
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlCell: aBlock desktopSize: size [
	^ self mdlCell
		desktopSize: size;
		with: aBlock;
		yourself
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlCell: aBlock phoneSize: size [
	^ self mdlCell
		phoneSize: size;
		with: aBlock;
		yourself
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlCell: aBlock size: size [
	^ self mdlCell
		size: size;
		with: aBlock;
		yourself
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlCell: aBlock tabletSize: size [
	^ self mdlCell
		tabletSize: size;
		with: aBlock;
		yourself
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlCellDesktop:  dsize tablet: tsize phone: psize [
	^ self mdlCell
		desktopSize: dsize;
		tabletSize: tsize;
		phoneSize: psize;
		yourself
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlCellDesktop:  dsize tablet: tsize phone: psize with: aBlock [
	^ self mdlCell
		desktopSize: dsize;
		tabletSize: tsize;
		phoneSize: psize;
		with: aBlock;
		yourself
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlCheckbox [
	^ self brush: MDLCheckbox new 
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlCheckboxContainer [
	^ self brush: MDLCheckboxContainer  new 
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlCheckboxLabel [
	^ self brush: MDLCheckboxLabel new
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlCheckboxLabel: aText [
	^ self mdlCheckboxLabel
		with: aText;
		yourself
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlChip [
	^ self brush: MDLChipTag new 
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlChip: aBlock [
	^ self mdlChip
		with: aBlock;
		yourself
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlChipContact [
	^ self brush: MDLChipInitial new
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlChipContact: aBlock [
	^ self mdlChipContact
		with: aBlock;
		yourself

]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlChipImage [
	^ self brush: MDLChipImage new
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlChipText [
	^ self brush: MDLChipTextTag new 
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlChipText: aBlock [
	^ self mdlChipText
		with: aBlock;
		yourself
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlDialog [
	^ self brush: MDLDialog new 
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlDialogActions [
	^ self brush: MDLDialogActions new 
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlDialogActions: aBlock [
	^ self mdlDialogActions
		with: aBlock;
		yourself
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlDialogContent [
	^ self brush: MDLDialogContent new 
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlDialogContent: aBlock [
	^ self mdlDialogContent
		with: aBlock;
		yourself
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlDialogDisagreeButton [
	^ self brush: (MDLButton new class: 'close')
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlDialogTitle [
	^ self brush: MDLDialogTitle new 
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlDialogTitle: aBlock [
	^ self mdlDialogTitle
		with: aBlock;
		yourself
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlDiv [
	^ self brush: MDLDivTag new 
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlDiv: aBlock [
	^ self mdlDiv
		with: aBlock;
		yourself
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlExpansionPanel [
	^ self brush: MDLExpansionPanelTag new
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlFooter [
	^ self brush: MDLMegaFooter new 
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlFooter: aBlock [
	^ self mdlFooter
		with: aBlock;
		yourself
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlFooterBottomSection [
	^ self brush: MDLMegaFooterBottomSection new 
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlFooterBottomSection: aBlock [
	^ self mdlFooterBottomSection
		with: aBlock;
		yourself
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlFooterDropdownSection [
	^ self brush: MDLMegaFooterDropdownSection new 
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlFooterDropdownSection: aBlock [
	^ self mdlFooterDropdownSection
		with: aBlock;
		yourself
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlFooterHeading [
	^ self brush: MDLMegaFooterHeading new 
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlFooterHeading: aBlock [
	^ self mdlFooterHeading
		with: aBlock;
		yourself
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlFooterHeadingCheckbox [
	^ self brush: MDLMegaFooterHeadingCheckBox new 
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlFooterLeftSection [
	^ self brush: MDLMegaFooterLeftSection new 
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlFooterLeftSection: aBlock [
	^ self mdlFooterLeftSection
		with: aBlock;
		yourself
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlFooterLinkList [
	^ self brush: MDLMegaFooterLinkList new 
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlFooterLinkList: aBlock [
	^ self mdlFooterLinkList
		with: aBlock;
		yourself
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlFooterLogo [
	^ self mdlLogo
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlFooterLogo: aBlock [
	^ self mdlLogo: aBlock
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlFooterMiddleSection [
	^ self brush: MDLMegaFooterMiddleSection new 
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlFooterMiddleSection: aBlock [
	^ self mdlFooterMiddleSection
		with: aBlock;
		yourself
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlFooterRightSection [
	^ self brush: MDLMegaFooterRightSection new 
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlFooterRightSection: aBlock [
	^ self mdlFooterRightSection
		with: aBlock;
		yourself
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlFooterSocialButton [
	^ self brush: MDLMegaFooterSocialButton new 
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlFooterSocialButton: aBlock [
	^ self mdlFooterSocialButton
		with: aBlock;
		yourself
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlFooterTopSection [
	^ self brush: MDLMegaFooterTopSection new 
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlFooterTopSection: aBlock [
	^ self mdlFooterTopSection
		with: aBlock;
		yourself
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlGrid [
	^ self brush: MDLGrid new 
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlGrid: aBlock [
	^ self mdlGrid
		with: aBlock;
		yourself
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlIcon [
	"Return a MDL glyph icon"

	^self brush: MDLIcon new
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlIcon: aText [
	"Defines a MDL glyph icon."

	^ self mdlIcon
		with: aText;
		yourself

]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlIconBadge [
	^ self brush: MDLIconBadge new 
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlIconBadge: aString [
	^ self mdlIconBadge
		with: aString;
		yourself
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlIconToggle [
	^ self brush: MDLIconToggle new 
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlIconToggleContainer [
	^ self brush: MDLIconToggleContainer new 
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlIconToggleLabel [
	^ self mdlIcon
		toggle;
		yourself
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlIconToggleLabel: aText [
	^ self mdlIconToggleLabel
	with: aText;
	yourself 
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlLayout [
	^ self brush: MDLLayout new 
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlLayout: aBlock [
	^ self mdlLayout
		with: aBlock;
		yourself
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlLayoutContent [
	^ self brush: MDLLayoutContent new 
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlLayoutContent: aBlock [
	^ self mdlLayoutContent
		with: aBlock;
		yourself
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlLayoutDrawer [
	^ self brush: MDLLayoutDrawer new 
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlLayoutDrawer: aBlock [
	^ self mdlLayoutDrawer
		with: aBlock;
		yourself
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlLayoutHeader [
	^ self brush: MDLLayoutHeader new 
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlLayoutHeader: aBlock [
	^ self mdlLayoutHeader
		with: aBlock;
		yourself
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlLayoutHeaderRow [
	^ self brush: MDLLayoutHeaderRow new 
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlLayoutHeaderRow: aBlock [
	^ self mdlLayoutHeaderRow
		with: aBlock;
		yourself
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlLayoutIcon [
	^ self brush: MDLLayoutIcon new 
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlLayoutIcon: aBlock [
	^ self mdlLayoutIcon
		with: aBlock;
		yourself
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlLayoutSpacer [
	^ self brush: MDLLayoutSpacer new 
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlLayoutSpacer: aBlock [
	^ self mdlLayoutSpacer
		with: aBlock;
		yourself
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlLayoutTab [
	^ self brush: MDLLayoutTab new 
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlLayoutTab: aBlock [
	^ self mdlLayoutTab
		with: aBlock;
		yourself
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlLayoutTabBar [
	^ self brush: MDLLayoutTabBar new 
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlLayoutTabBar: aBlock [
	^ self mdlLayoutTabBar
		with: aBlock;
		yourself
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlLayoutTabPanel [
	^ self brush: MDLLayoutTabPanel new 
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlLayoutTabPanel: aBlock [
	^ self mdlLayoutTabPanel
		with: aBlock;
		yourself
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlLayoutTitle [
	^ self brush: MDLLayoutTitle new 
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlLayoutTitle: aBlock [
	^ self mdlLayoutTitle
		with: aBlock;
		yourself
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlList [
	^ self brush: MDLList new
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlList: aBlock [
	^ self mdlList
		with: aBlock;
		yourself
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlListAvatar [
	"Defines a MDL glyph icon."

	^ self mdlIcon listItemAvatar
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlListAvatar: aText [
	"Defines a MDL glyph icon."

	^ self mdlListAvatar
		with: aText;
		yourself
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlListIcon [
	"Defines a MDL glyph icon."

	^ self mdlIcon listItemIcon
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlListIcon: aText [
	"Defines a MDL glyph icon."

	^ self mdlListIcon
		with: aText;
		yourself

]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlListItem [
	^ self brush: MDLListItem new
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlListItem: aBlock [
	^ self mdlListItem
		with: aBlock;
		yourself
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlListItemSecondaryAction [
	^ self brush: MDLListItemSecondaryAction new
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlListItemSecondaryAction: aBlock [
	^ self mdlListItemSecondaryAction
		with: aBlock;
		yourself
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlListItemSecondaryInfo [
	^ self brush: MDLListItemSecondaryInfo new
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlListItemSecondaryInfo: aBlock [
	^ self mdlListItemSecondaryInfo
		with: aBlock;
		yourself
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlListItemSubTitle [
	^ self brush: MDLListItemSubTitle new
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlListItemSubTitle: aBlock [
	^ self mdlListItemSubTitle
		with: aBlock;
		yourself
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlListItemTextBody [
	^ self brush: MDLListItemTextBody new
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlListItemTextBody: aBlock [
	^ self mdlListItemTextBody
		with: aBlock;
		yourself
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlListPrimaryContent [
	^ self brush: MDLListPrimaryContent new
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlListPrimaryContent: aBlock [
	^ self mdlListPrimaryContent
		with: aBlock;
		yourself
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlListSecondaryContent [
	^ self brush: MDLListSecondaryContent new
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlListSecondaryContent: aBlock [
	^ self mdlListSecondaryContent
		with: aBlock;
		yourself
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlLogo [
	^ self brush: MDLLogo new 
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlLogo: aText [
	^ self mdlLogo
		with: aText;
		yourself
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlMenu [
	^ self brush: MDLMenu new 
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlMenuItem [
	^ self brush: MDLMenuItem new
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlMenuItem: aBlock [
	^ self mdlMenuItem
		with: aBlock;
		yourself
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlMiniFooter [
	^ self brush: MDLMiniFooter new 
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlMiniFooter: aBlock [
	^ self mdlMiniFooter
		with: aBlock;
		yourself
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlMiniFooterLeftSection [
	^ self brush: MDLMiniFooterLeftSection new 
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlMiniFooterLeftSection: aBlock [
	^ self mdlMiniFooterLeftSection
		with: aBlock;
		yourself
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlMiniFooterLinkList [
	^ self brush: MDLMiniFooterLinkList new 
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlMiniFooterLinkList: aBlock [
	^ self mdlMiniFooterLinkList
		with: aBlock;
		yourself
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlMiniFooterRightSection [
	^ self brush: MDLMiniFooterRightSection new 
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlMiniFooterRightSection: aBlock [
	^ self mdlMiniFooterRightSection
		with: aBlock;
		yourself
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlMiniFooterSocialButton [
	^ self brush: MDLMiniFooterSocialButton new 
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlMiniFooterSocialButton: aBlock [
	^ self mdlMiniFooterSocialButton
		with: aBlock;
		yourself
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlNavigation [
	^ self brush: MDLNavigation new 
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlNavigation: aBlock [
	^ self mdlNavigation
		with: aBlock;
		yourself
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlNavigationLink [
	^ self brush: MDLNavigationLink new 
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlNavigationLink: aBlock [
	^ self mdlNavigationLink
		with: aBlock;
		yourself
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlProgressBar [
	^ self brush: MDLProgressBar new 
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlRadioButton [
	^ self brush: MDLRadioButton  new 
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlRadioContainer [
	^ self brush: MDLRadioContainer  new 
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlRadioLabel: text [
	^ (self brush: MDLRadioLabel new)
		with: text;
		yourself
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlSlider [
	^ self brush: MDLSlider new
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlSliderContainer [
	^ self brush: MDLSliderContainer new
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlSliderContainer: aBlock [
	^ self mdlSliderContainer
		with: aBlock;
		yourself
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlSnackbar [
	^ self mdlSnackbarWithId: self nextId
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlSnackbarButtonFor: aMDLSnackBar [
	| button |
	button := MDLButton new.
	self brush: button.
	button onClick: aMDLSnackBar getJsShowingSnackbar.
	^ button
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlSnackbarWithId: id [
	| snackbar |
	snackbar := MDLSnackbar new
		id: id;
		yourself.
		
	self brush: snackbar.
	
	snackbar
		with: [ 
			self brush: MDLSnackbarText new.
			self brush: MDLSnackbarAction new ].
		
	^ snackbar
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlSpinner [
	^ self brush: MDLSpinner new 
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlSwitch [
	^ self brush: MDLSwitch new 
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlSwitchContainer [
	^ self brush: MDLSwitchContainer new 
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlSwitchLabel [
	^ self brush: MDLSwitchLabel new 
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlSwitchLabel: aBlock [
	^ self mdlSwitchLabel
		with: aBlock;
		yourself
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlTab [
	^ self brush: MDLTabsTab new 
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlTab: aBlock [
	^ self mdlTab
		with: aBlock;
		yourself
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlTabBar [
	^ self brush: MDLTabsTabBar new 
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlTabBar: aBlock [
	^ self mdlTabBar
		with: aBlock;
		yourself
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlTable [
	^ self brush: MDLTable new 
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlTable: aBlock [
	^ self mdlTable
		with: aBlock;
		yourself
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlTableCell [
	^ self brush: MDLTableCell new 
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlTableCell: aBlock [
	^ self mdlTableCell
		with: aBlock;
		yourself
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlTableHeading [
	^ self brush: MDLTableHeadingCell new 
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlTableHeading: aBlock [
	^ self mdlTableHeading
		with: aBlock;
		yourself
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlTabs [
	^ self brush: MDLTabsContainer new 
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlTabs: aBlock [
	^ self mdlTabs
		with: aBlock;
		yourself
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlTabsPanel [
	^ self brush: MDLTabsPanel new 
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlTabsPanel: aBlock [
	^ self mdlTabsPanel
		with: aBlock;
		yourself
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlTextArea [
	^ self brush: MDLTextArea new
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlTextArea: aBlock [
	^ self mdlTextArea with: aBlock
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlTextFieldContainer [
	^ self brush: MDLTextFieldContainer new 
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlTextFieldContainer: aBlock [
	^ self mdlTextFieldContainer
		with: aBlock;
		yourself
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlTextFieldError: text [
	^ (self brush: MDLTextFieldError new )
		with: text;
		yourself
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlTextFieldExpandableHolder [
	^ self brush: MDLTextFieldExpandableHolder new 
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlTextFieldExpandableHolder: aBlock [
	^ (self brush: MDLTextFieldExpandableHolder new )
		with: aBlock;
		yourself
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlTextFieldInput [
	^ self brush: MDLTextFieldInput new
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlTextFieldLabel [
	^ self brush: MDLTextFieldLabel new
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlTextFieldLabel: text [
	^ self mdlTextFieldLabel
		with: text;
		yourself
]

{ #category : #'*Material-Design-Lite-Components' }
WAHtmlCanvas >> mdlTooltip [
	^ self brush: MDLTooltip new
]
