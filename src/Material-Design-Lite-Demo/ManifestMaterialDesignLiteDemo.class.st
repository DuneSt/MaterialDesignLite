"
I store metadata for this package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : #ManifestMaterialDesignLiteDemo,
	#superclass : #PackageManifest,
	#category : 'Material-Design-Lite-Demo-Manifest'
}

{ #category : #'meta-data' }
ManifestMaterialDesignLiteDemo class >> description [ ^ 'Material Design Lite for Seaside (MDL) is a library of components for web developers based on Google''s Material Design Philosophy: "A visual language for our users that synthesizes the classic principles of good design with the innovation and possibility of technology and science." Understanding the goals and principles of Material Design is critical to the proper use of the Material Design Lite components. If you have not yet read the Material Design Introduction you should do so before attempting to use the components. (See https://material.io/guidelines/material-design/)

Github: https://github.com/DuneSt/MaterialDesignLite

Demo: https://mdl.ferlicot.fr/

This package contains a demo of the components, widgets and extensions.'
]

{ #category : #'code-critics' }
ManifestMaterialDesignLiteDemo class >> ruleRBCodeCruftLeftInMethodsRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#MDLMenuButtonScreen #renderMenuButtonOn: #false)) #'2018-07-03T17:16:08.445061+02:00') )
]
