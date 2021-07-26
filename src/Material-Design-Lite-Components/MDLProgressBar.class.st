"
Description
--------------------

I am a brush to create a loading and progress states.

Example
--------------------

	html mdlProgressBar id: 'progressBar'.
	html script: 'setInterval(function(){document.querySelector(''#progressBar'').MaterialProgress.setProgress(100/60* (new Date()).getSeconds());}, 1000);' js
"
Class {
	#name : #MDLProgressBar,
	#superclass : #MDLDivTag,
	#category : #'Material-Design-Lite-Components-Loading'
}

{ #category : #options }
MDLProgressBar >> indeterminate [
	self class: 'mdl-progress__indeterminate'
]

{ #category : #initialization }
MDLProgressBar >> initialize [
	super initialize.
	self class: 'mdl-progress'.
	self class: 'mdl-js-progress'.
]
