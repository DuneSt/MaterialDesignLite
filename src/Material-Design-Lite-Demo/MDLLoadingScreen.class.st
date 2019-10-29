"
Indicate loading and progress states.
"
Class {
	#name : #MDLLoadingScreen,
	#superclass : #MDLComponentDemo,
	#category : #'Material-Design-Lite-Demo-Components'
}

{ #category : #accessing }
MDLLoadingScreen class >> icon [
	^ 'comploadingPng'
]

{ #category : #accessing }
MDLLoadingScreen class >> title [
	^ 'Loading'
]

{ #category : #sections }
MDLLoadingScreen >> bufferingProgressBar [
	^ OrderedDictionary new
		add: 'Buffering' -> #renderBufferingProgressBarOn:;
		yourself
]

{ #category : #sections }
MDLLoadingScreen >> indeterminateProgressBar [
	^ OrderedDictionary new
		add: 'Indeterminate' -> #renderIndeterminateProgressBarOn:;
		yourself
]

{ #category : #sections }
MDLLoadingScreen >> progressBar [
	^ OrderedDictionary new
		add: 'Default' -> #renderProgressBarOn:;
		yourself
]

{ #category : #demos }
MDLLoadingScreen >> renderBufferingProgressBarOn: html [
	html mdlProgressBar id: 'bufferingProgressBar'.
	html
		script:
			'document.querySelector(''#bufferingProgressBar'').addEventListener(''mdl-componentupgraded'', function() {
	this.MaterialProgress.setProgress(33);
	this.MaterialProgress.setBuffer(87);
});'
]

{ #category : #demos }
MDLLoadingScreen >> renderDefaultSpinnerOn: html [
	html mdlSpinner active
]

{ #category : #demos }
MDLLoadingScreen >> renderIndeterminateProgressBarOn: html [
	html mdlProgressBar indeterminate
]

{ #category : #demos }
MDLLoadingScreen >> renderProgressBarOn: html [
	html mdlProgressBar id: 'progressBar'.
	html script: 'setInterval(function(){document.querySelector(''#progressBar'').MaterialProgress.setProgress(100/60* (new Date()).getSeconds());}, 1000);' js
]

{ #category : #rendering }
MDLLoadingScreen >> renderScreenContentOn: html [
	self renderTocOn: html.
	html heading level5
		class: 'section-title';
		id: 'progress-bar';
		with: 'PROGRESS BAR'.
	self
		render: self progressBar on: html;
		render: self indeterminateProgressBar on: html;
		render: self bufferingProgressBar on: html.
	html heading level5
		class: 'section-title';
		id: 'spinner';
		with: 'SPINNER'.
	self render: self spinner on: html
]

{ #category : #demos }
MDLLoadingScreen >> renderSingleColorSpinnerOn: html [
	html mdlSpinner active singleColor
]

{ #category : #accessing }
MDLLoadingScreen >> sections [
	^ OrderedDictionary with: '#progress-bar' -> 'Progress bar' with: '#spinner' -> 'Spinner'
]

{ #category : #sections }
MDLLoadingScreen >> spinner [
	^ OrderedDictionary new
		add: 'Default' -> #renderDefaultSpinnerOn:;
		add: 'Single color' -> #renderSingleColorSpinnerOn:;
		yourself
]
