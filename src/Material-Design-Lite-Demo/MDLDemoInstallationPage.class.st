"
Description
--------------------

A simble page explaining how to start using MDL for Seaside.
"
Class {
	#name : #MDLDemoInstallationPage,
	#superclass : #MDLDemoPage,
	#category : #'Material-Design-Lite-Demo-Core'
}

{ #category : #accessing }
MDLDemoInstallationPage class >> pageName [
	^ 'Getting started'
]

{ #category : #accessing }
MDLDemoInstallationPage class >> priority [
	^ 20
]

{ #category : #rendering }
MDLDemoInstallationPage >> renderContentOn: html [
	html mdlGrid
		noSpacing;
		class: 'mdl-doc';
		with: [ self renderInstallOn: html.
			self renderDependencyDescriptionOn: html.
			self renderStartDescriptionOn: html.
			html section beCell: 12 ]
]

{ #category : #rendering }
MDLDemoInstallationPage >> renderDependencyDescriptionOn: html [
	html section
		beCell: 12;
		with: [ html
				definitionList: [ html definitionTerm: 'Dependency'.
					html
						definitionData: [ html paragraph: 'To make your project depend on Material Design for Seaside, just copy the following to your baseline:'.
							html
								preformatted: [ html code
										class: 'smalltalk';
										with:
											'spec
    baseline: ''MaterialDesignLite''
    with: [ spec repository: ''github://DuneSt/MaterialDesignLite:master/src'' ]' ].
							html paragraph: 'Note that you can replace the #master tag by another branch as #development or a tag as #v1.0.0. or a commit SHA as 718c34f.' ] ] ]
]

{ #category : #rendering }
MDLDemoInstallationPage >> renderInstallOn: html [
	html section
		beCell: 12;
		with: [ html
				definitionList: [ html definitionTerm: 'Install'.
					html
						definitionData: [ html paragraph: 'To install MaterialDesignLite on your Pharo image you can just execute the following script:'.
							html
								preformatted: [ html code
										class: 'smalltalk';
										with:
											'Metacello new
    repository: ''github://DuneSt/MaterialDesignLite:v2.x.x/src'';
    baseline: ''MaterialDesignLite'';
    onWarningLog;
    load' ].
							html paragraph: 'Note that you can replace the #v2.x.x tag by a branch as #development or a tag as #v2.0.0. or a commit SHA as 718c34f.' ] ] ]
]

{ #category : #rendering }
MDLDemoInstallationPage >> renderStartDescriptionOn: html [
	html section
		beCell: 12;
		with: [ html
				definitionList: [ html definitionTerm: 'Start'.
					html
						definitionData: [ html
								paragraph:
									'We use as a base the files product by Google''s Material Design Lite. To have a working Material Design Seaside application we need to add those files. Most of them can be easily added via a file library but one file need to be explicitely added because this file change depending on the colors you wish for your application.'.
							html paragraph: 'To use MaterialDesign you will need to add JQuery and Material Design library to your application:'.
							html
								preformatted: [ html code
										class: 'smalltalk';
										with:
											'(WAAdmin register: self asApplicationAt: ''myApplication'')
	addLibrary: JQDeploymentLibrary;
	addLibrary: MDLLibrary' ].
							html paragraph: 'Then you will need to add the css file with the colors. To do so, you will have two options:'.
							html
								unorderedList: [ html
										listItem: 'Add it to your file library';
										listItem: 'Add it in your #updateRoot:' ].
							html
								paragraph: [ html text: 'You can find the files on '.
									html anchor
										url: 'https://getmdl.io/customize/index.html';
										with: 'https://getmdl.io/customize/index.html' ].
							html
								paragraph: [ html text: 'They are in the form of: '.
									html anchor
										url: 'https://storage.googleapis.com/code.getmdl.io/1.3.0/material.XXX-YYY.min.css';
										with: 'https://storage.googleapis.com/code.getmdl.io/1.3.0/material.XXX-YYY.min.css' ].
							html
								unorderedList: [ html
										listItem: 'XXX = primary color of the application';
										listItem: 'YYY = accent color of the application' ].
							html
								paragraph: 'As said, the second is to add the right like link in the #updateRoot: methode of your application. (Note that this method will require your application to have an acces to internet to work).'.
							html
								preformatted: [ html code
										class: 'smalltalk';
										with:
											'MyApplication>>updateRoot: anHtmlRoot
	    super updateRoot: anHtmlRoot.
	    anHtmlRoot beHtml5.
	    anHtmlRoot stylesheet url: (WAUrl absolute: ''https://storage.googleapis.com/code.getmdl.io/1.3.0/material.XXX-YYY.min.css'').' ].
							html paragraph: 'One last step is to define some specific rules in your CSS to make extensions work properly. You should add:'.
							html
								preformatted: [ html code
										class: 'css';
										with:
											'    .mdl-pagination__current{
        box-shadow: inset 0px -4px 0px 0px #XXXXXX !important;
    }' ].
							html
								paragraph: [ html
										text:
											'Where `XXXXXX` is the hex code of the accent color of your MDL application. 
To find your code you can select the #A200 color in the following page: '.
									html anchor
										url: 'https://www.materialui.co/colors';
										with: 'https://www.materialui.co/colors' ] ] ] ]
]
