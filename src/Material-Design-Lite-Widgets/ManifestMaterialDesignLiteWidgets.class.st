"
I store metadata for this package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : #ManifestMaterialDesignLiteWidgets,
	#superclass : #PackageManifest,
	#category : 'Material-Design-Lite-Widgets-Manifest'
}

{ #category : #'meta-data' }
ManifestMaterialDesignLiteWidgets class >> description [ ^ 'Material Design Lite for Seaside (MDL) is a library of components for web developers based on Google''s Material Design Philosophy: "A visual language for our users that synthesizes the classic principles of good design with the innovation and possibility of technology and science." Understanding the goals and principles of Material Design is critical to the proper use of the Material Design Lite components. If you have not yet read the Material Design Introduction you should do so before attempting to use the components. (See https://material.io/guidelines/material-design/)

Github: https://github.com/DuneSt/MaterialDesignLite

Demo: https://mdl.ferlicot.fr/

The second part of Material Design Lite for Seaside is the Widgets. Widgets are Seaside components with behaviour at the difference of MDL components. They respect Material Design rules and provide to the developers predefined behaviour.

An exemple of widget is the nested list already containing features such as dynamic loading of elements, research, sorting...'
]

{ #category : #'code-critics' }
ManifestMaterialDesignLiteWidgets class >> ruleGRAnsiConditionalsRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#MDLTextFieldWidget #renderContentOn: #false)) #'2016-07-06T16:57:57.793+02:00') )
]

{ #category : #'code-critics' }
ManifestMaterialDesignLiteWidgets class >> ruleRBSendsDifferentSuperRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#MDLPaginationWithSearchBarWidget #renderSearchbarOn: #false)) #'2016-06-16T09:58:54.322+02:00') #(#(#RGMethodDefinition #(#MDLLoginDialogWidget #renderLoginDialogOn: #false)) #'2016-07-11T14:50:20.68+02:00') )
]

{ #category : #'code-critics' }
ManifestMaterialDesignLiteWidgets class >> ruleRBTempsReadBeforeWrittenRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#MDLTextFieldWidget #renderContentOn: #false)) #'2016-07-11T15:47:20.1+02:00') )
]
