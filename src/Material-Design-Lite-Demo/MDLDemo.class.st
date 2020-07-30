"
Description
--------------------

Root component of MDL for Seaside demo.
 
Internal Representation and Key Implementation Points.
--------------------

    Instance Variables
	componentInstances:			<aDictionary>	A dictionary keeping for each component class, an instance. This instance can be use when the user change of page to come pack to a previous page.
	componentToDisplay:		<aComponent>	The current page to display as the root content.
	footer:						<aComponent>	The header of the page.
	header:						<aComponent>	The footer of the page.

"
Class {
	#name : #MDLDemo,
	#superclass : #MDLDemoComponent,
	#instVars : [
		'header',
		'footer',
		'componentToDisplay',
		'componentInstances'
	],
	#category : #'Material-Design-Lite-Demo-Core'
}

{ #category : #testing }
MDLDemo class >> canBeRoot [
	^ true
]

{ #category : #initialization }
MDLDemo class >> initialize [
	^ self initializeAs: 'MDLDemo'
]

{ #category : #initialization }
MDLDemo class >> initializeAs: aString [
	| app |
	self environment at: #WADevelopmentConfiguration ifPresent: [ :class | WAAdmin applicationDefaults removeParent: class instance ].
	app := WAAdmin register: self asApplicationAt: aString.

	app configuration
		at: #maximumAbsoluteAge put: 0;
		at: #maximumRelativeAge put: 7 days asSeconds.

	app
		preferenceAt: #sessionClass put: MDLDemoSession;
		addLibrary: JQDeploymentLibrary;
		addLibrary: MDLLibrary;
		addLibrary: MDLDemoLibrary.
	^ app
]

{ #category : #'world menu' }
MDLDemo class >> menuCommandOn: aBuilder [
	<worldMenu>
	(aBuilder item: #'Open demo in default browser')
		order: 2;
		iconName: #nautilus;
		parent: #MaterialDesignLite;
		help: 'Open the demo in the default web browser';
		action: [ self open ].
]

{ #category : #'instance creation' }
MDLDemo class >> open [
	<script>
	| port url |
	WAServerManager default adaptors
		ifEmpty: [ (ZnZincServerAdaptor port: (port := 8085)) start ]
		ifNotEmpty: [ :adaptors | 
			adaptors
				detect: #isRunning
				ifFound: [ :anAdaptor | port := anAdaptor server port ]
				ifNone: [ (ZnZincServerAdaptor port: (port := 8085)) start ] ].
	url := 'http://localhost:' , port asString , '/MDLDemo'.
	self flag: #pharo6.
	SystemVersion current major < 7
		ifTrue: [ self class environment
				at: #OSProcess
				ifPresent: [ :class | class command: 'open ' , url ]
				ifAbsent: [ self inform: 'Open ' , url , ' or install OSProcess.' ] ]
		ifFalse: [ WebBrowser openOn: url ]
]

{ #category : #versions }
MDLDemo class >> version [
	^ 'v2.2.4'
]

{ #category : #hooks }
MDLDemo >> children [
	^ { self header. self componentToDisplay. self footer }
]

{ #category : #accessing }
MDLDemo >> componentInstances [
	^ componentInstances
]

{ #category : #accessing }
MDLDemo >> componentInstances: anObject [
	componentInstances := anObject
]

{ #category : #accessing }
MDLDemo >> componentToDisplay [
	"Component instance to display in the application."
	
	^ componentToDisplay
]

{ #category : #accessing }
MDLDemo >> componentToDisplay: anObject [
	componentToDisplay := anObject
]

{ #category : #components }
MDLDemo >> defaultFooter [
	^ MDLDemoFooter new
]

{ #category : #components }
MDLDemo >> defaultHeader [
	^ MDLDemoHeader new
]

{ #category : #updating }
MDLDemo >> displayInstanceOf: aComponentClass [
	self componentToDisplay: (self componentInstances at: aComponentClass ifAbsentPut: [ aComponentClass new ])
]

{ #category : #accessing }
MDLDemo >> footer [
	^ footer
]

{ #category : #accessing }
MDLDemo >> footer: anObject [
	footer := anObject
]

{ #category : #accessing }
MDLDemo >> header [
	^ header
]

{ #category : #accessing }
MDLDemo >> header: anObject [
	header := anObject
]

{ #category : #hooks }
MDLDemo >> initialRequest: aRequest [
	| consumer pageName |
	super initialRequest: aRequest.
	consumer := self requestContext consumer.
	
	"If we are at end, nothing to manage"
	consumer atEnd ifTrue: [ ^ self ].
	
	pageName := consumer peek asLowercase. "Do not make URLs case sensitive in that case"
	
	"Try to find a page corresponding"
	self header possiblePages
		detect: [ :each | each pathName asLowercase = pageName ]
		ifFound: [ :class | 
			self displayInstanceOf: class.

			"If we find a page, we pop the subpart of the path corresponding to the page."
			consumer next ]
]

{ #category : #initialization }
MDLDemo >> initialize [
	super initialize.
	self header: self defaultHeader.
	self footer: self defaultFooter.
	self session rootComponent: self.
	self componentInstances: Dictionary new.
	self displayInstanceOf: MDLDemoPage pagesToDisplay first
]

{ #category : #rendering }
MDLDemo >> renderContentOn: html [
	html
		mdlLayout: [ html render: self header.
			html mdlLayoutContent
				class: 'mdl-color-text--grey-600';
				with: [ html mdlGrid
						noSpacing;
						with: [ html mdlCell
								class: 'mdl-components';
								size: 12;
								with: [ html render: self componentToDisplay ] ].
					html render: self footer ].
			html mdlButton
				id: #scrollTop;
				fab;
				miniFab;
				colored;
				with: [ html mdlIcon: #arrow_upward ] ]
]

{ #category : #hooks }
MDLDemo >> style [
	^ '.mdl-pagination__current{
        box-shadow: inset 0px -4px 0px 0px #E91E63 !important;
    }'
]

{ #category : #updating }
MDLDemo >> updateRoot: anHtmlRoot [
	super updateRoot: anHtmlRoot.
	anHtmlRoot beHtml5.
	anHtmlRoot title: 'Demo - Material Design Lite for Seaside'.
	anHtmlRoot meta
		attributeAt: 'name' put: 'viewport';
		content: 'width=device-width, initial-scale=1'.
	self updateTabIconRoot: anHtmlRoot.
	anHtmlRoot stylesheet url: (WAUrl absolute: 'https://storage.googleapis.com/code.getmdl.io/1.3.0/material.deep_purple-pink.min.css').
	anHtmlRoot javascript add: 'hljs.initHighlightingOnLoad();'
]

{ #category : #updating }
MDLDemo >> updateTabIconRoot: anHtmlRoot [
	anHtmlRoot link
		relationship: 'apple-touch-icon';
		attributeAt: 'sizes' put: '120x120';
		url: (MDLDemoLibrary urlOf: 'appleicon120x120Png').
	#('32x32' '16x16')
		do: [ :size | 
			anHtmlRoot link
				relationship: 'icon';
				type: 'image/png';
				url: (MDLDemoLibrary urlOf: 'favicon' , size , 'Png');
				attributeAt: 'sizes' put: size ].
	anHtmlRoot link
		relationship: 'manifest';
		url: (MDLDemoLibrary urlOf: 'siteWebmanifest').
	anHtmlRoot meta
		name: 'msapplication-TileColor';
		content: '#da532c'.
	anHtmlRoot link
		relationship: 'mask-icon';
		attributeAt: 'color' put: '#5bbad5';
		url: (MDLDemoLibrary urlOf: 'safaripinnedtabSvg').
	anHtmlRoot meta
		name: 'theme-color';
		content: '#ffffff'
]

{ #category : #updating }
MDLDemo >> updateUrl: aUrl [
	super updateUrl: aUrl.
	aUrl addToPath: (self componentToDisplay pathName)
]

{ #category : #accessing }
MDLDemo >> version [
	^ self class version
]
