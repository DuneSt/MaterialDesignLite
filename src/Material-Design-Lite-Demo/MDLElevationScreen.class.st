"
Description
--------------------

I am a screen presenting the elevations properties of MDL.
"
Class {
	#name : #MDLElevationScreen,
	#superclass : #MDLComponentDemo,
	#category : 'Material-Design-Lite-Demo-Components'
}

{ #category : #accessing }
MDLElevationScreen class >> description [
	^ 'Elevation is the relative depth, or distance, between two surfaces along the z-axis.'
]

{ #category : #accessing }
MDLElevationScreen class >> icon [
	^ 'elevationPng'
]

{ #category : #accessing }
MDLElevationScreen class >> title [
	^ 'Elevation'
]

{ #category : #sections }
MDLElevationScreen >> elevations [
	^ OrderedDictionary new
		add: 'Elevations' -> #renderElevationsOn:;
		yourself
]

{ #category : #rendering }
MDLElevationScreen >> renderElevationsOn: html [
	html
		mdlGrid: [ #(0 2 3 4 6 8 16 24)
				do: [ :elevation | 
					html mdlCell
						size: 3;
						style: 'min-height: 100px; display: flex; justify-content: space-around; align-items: center; margin: 50px;';
						shadow: elevation;
						with: elevation asString , 'dp' ] ]
]

{ #category : #rendering }
MDLElevationScreen >> renderScreenContentOn: html [
	self render: self elevations fullWidth: true on: html
]
