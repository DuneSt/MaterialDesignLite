Extension { #name : #Object }

{ #category : #'*material-design-lite-gemstone' }
Object >> split: aSequenceableCollection [
  "optimized version for single delimiters:
	Example:
		$/ split: '/foo/bar'"

  | result position oldPosition |
  result := OrderedCollection new: (aSequenceableCollection size / 2) asInteger.
  self split: aSequenceableCollection do: [ :item | result add: item ].
  ^ result
]

{ #category : #'*material-design-lite-gemstone' }
Object >> split: aSequenceableCollection do: aBlock [
  "optimized version for single delimiters:
	Example:
		$/ split: '/foo/bar' indicesDo: [ :item | ]"

  self
    split: aSequenceableCollection
    indicesDo: [ :start :end | aBlock value: (aSequenceableCollection copyFrom: start to: end) ]
]

{ #category : #'*material-design-lite-gemstone' }
Object >> split: aSequenceableCollection indicesDo: aBlock [
  "optimized version for single delimiters:
	Example:
		$/ split: '/foo/bar' indicesDo: [ :start :end | ]"

  | position oldPosition |
  position := 1.
  oldPosition := position.
  position := aSequenceableCollection indexOf: self startingAt: position.
  [ position > 0 ]
    whileTrue: [ 
      aBlock value: oldPosition value: position - 1.
      position := position + 1.
      oldPosition := position.
      position := aSequenceableCollection indexOf: self startingAt: position ].
  aBlock value: oldPosition value: aSequenceableCollection size
]
