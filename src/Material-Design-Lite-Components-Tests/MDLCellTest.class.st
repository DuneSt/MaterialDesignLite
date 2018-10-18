Class {
	#name : #MDLCellTest,
	#superclass : #MDLAbstractBrushTest,
	#category : 'Material-Design-Lite-Components-Tests-Layouts'
}

{ #category : #tests }
MDLCellTest >> testBareBrush [
	self assert: [ :html | html mdlCell ] generates: '<div class="mdl-cell"></div>'
]

{ #category : #tests }
MDLCellTest >> testBottom [
	self
		assert: [ :html | 
			html mdlCell
				bottom;
				with: 'Test' ]
		generates: '<div class="mdl-cell mdl-cell--bottom">Test</div>'
]

{ #category : #tests }
MDLCellTest >> testDesktopOffset [
	self
		assert: [ :html | 
			html mdlCell
				desktopOffset: 2;
				with: 'Test' ]
		generates: '<div class="mdl-cell mdl-cell--2-offset-desktop">Test</div>'
]

{ #category : #tests }
MDLCellTest >> testDesktopOrder [
	self
		assert: [ :html | 
			html mdlCell
				desktopOrder: 2;
				with: 'Test' ]
		generates: '<div class="mdl-cell mdl-cell--order-2-desktop">Test</div>'
]

{ #category : #tests }
MDLCellTest >> testDesktopSize [
	self assert: [ :html | html mdlCell: 'Test' desktopSize: 2 ] generates: '<div class="mdl-cell mdl-cell--2-col-desktop">Test</div>'
]

{ #category : #tests }
MDLCellTest >> testDesktopTabletPhone [
	self assert: [ :html | html mdlCellDesktop: 4 tablet: 3 phone: 2 with: 'Test' ] generates: '<div class="mdl-cell mdl-cell--4-col-desktop mdl-cell--3-col-tablet mdl-cell--2-col-phone">Test</div>'
]

{ #category : #tests }
MDLCellTest >> testDesktopTabletPhoneWith [
	self assert: [ :html | html mdlCellDesktop: 4 tablet: 3 phone: 2 with: 'Test' ] generates: '<div class="mdl-cell mdl-cell--4-col-desktop mdl-cell--3-col-tablet mdl-cell--2-col-phone">Test</div>'
]

{ #category : #tests }
MDLCellTest >> testHideDesktop [
	self
		assert: [ :html | 
			html mdlCell
				hideDesktop;
				with: 'Test' ]
		generates: '<div class="mdl-cell mdl-cell--hide-desktop">Test</div>'
]

{ #category : #tests }
MDLCellTest >> testHidePhone [
	self
		assert: [ :html | 
			html mdlCell
				hidePhone;
				with: 'Test' ]
		generates: '<div class="mdl-cell mdl-cell--hide-phone">Test</div>'
]

{ #category : #tests }
MDLCellTest >> testHideTablet [
	self
		assert: [ :html | 
			html mdlCell
				hideTablet;
				with: 'Test' ]
		generates: '<div class="mdl-cell mdl-cell--hide-tablet">Test</div>'
]

{ #category : #tests }
MDLCellTest >> testMiddle [
	self
		assert: [ :html | 
			html mdlCell
				middle;
				with: 'Test' ]
		generates: '<div class="mdl-cell mdl-cell--middle">Test</div>'
]

{ #category : #tests }
MDLCellTest >> testOffset [
	self
		assert: [ :html | 
			html mdlCell
				offset: 2;
				with: 'Test' ]
		generates: '<div class="mdl-cell mdl-cell--2-offset">Test</div>'
]

{ #category : #tests }
MDLCellTest >> testOrder [
	self
		assert: [ :html | 
			html mdlCell
				order: 2;
				with: 'Test' ]
		generates: '<div class="mdl-cell mdl-cell--order-2">Test</div>'
]

{ #category : #tests }
MDLCellTest >> testPhoneOffset [
	self
		assert: [ :html | 
			html mdlCell
				phoneOffset: 2;
				with: 'Test' ]
		generates: '<div class="mdl-cell mdl-cell--2-offset-phone">Test</div>'
]

{ #category : #tests }
MDLCellTest >> testPhoneOrder [
	self
		assert: [ :html | 
			html mdlCell
				phoneOrder: 2;
				with: 'Test' ]
		generates: '<div class="mdl-cell mdl-cell--order-2-phone">Test</div>'
]

{ #category : #tests }
MDLCellTest >> testPhoneSize [
	self assert: [ :html | html mdlCell: 'Test' phoneSize: 2 ] generates: '<div class="mdl-cell mdl-cell--2-col-phone">Test</div>'
]

{ #category : #tests }
MDLCellTest >> testSize [
	self assert: [ :html | html mdlCell: 'Test' size: 2 ] generates: '<div class="mdl-cell mdl-cell--2-col">Test</div>'
]

{ #category : #tests }
MDLCellTest >> testStretch [
	self
		assert: [ :html | 
			html mdlCell
				stretch;
				with: 'Test' ]
		generates: '<div class="mdl-cell mdl-cell--stretch">Test</div>'
]

{ #category : #tests }
MDLCellTest >> testTabletOffset [
	self
		assert: [ :html | 
			html mdlCell
				tabletOffset: 2;
				with: 'Test' ]
		generates: '<div class="mdl-cell mdl-cell--2-offset-tablet">Test</div>'
]

{ #category : #tests }
MDLCellTest >> testTabletOrder [
	self
		assert: [ :html | 
			html mdlCell
				tabletOrder: 2;
				with: 'Test' ]
		generates: '<div class="mdl-cell mdl-cell--order-2-tablet">Test</div>'
]

{ #category : #tests }
MDLCellTest >> testTabletSize [
	self assert: [ :html | html mdlCell: 'Test' tabletSize: 2 ] generates: '<div class="mdl-cell mdl-cell--2-col-tablet">Test</div>'
]

{ #category : #tests }
MDLCellTest >> testTop [
	self
		assert: [ :html | 
			html mdlCell
				top;
				with: 'Test' ]
		generates: '<div class="mdl-cell mdl-cell--top">Test</div>'
]

{ #category : #tests }
MDLCellTest >> testWithContent [
	self assert: [ :html | html mdlCell: 'Test' ] generates: '<div class="mdl-cell">Test</div>'
]
