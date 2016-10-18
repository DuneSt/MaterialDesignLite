# MaterialDesignLite

####Linux/OSX builds
Master: [![Build Status](https://travis-ci.org/DuneSt/MaterialDesignLite.svg?branch=master)](https://travis-ci.org/DuneSt/MaterialDesignLite)| Development: [![Build Status](https://travis-ci.org/DuneSt/MaterialDesignLite.svg?branch=development)](https://travis-ci.org/DuneSt/MaterialDesignLite)

####Windows builds
Master: [![Build status](https://ci.appveyor.com/api/projects/status/1d20eiwk92jpgfni/branch/master?svg=true)](https://ci.appveyor.com/project/jecisc/materialdesignlite/branch/master) | Latest commit: [![Build status](https://ci.appveyor.com/api/projects/status/1d20eiwk92jpgfni?svg=true)](https://ci.appveyor.com/project/jecisc/materialdesignlite)


This project have as first goal to bind the google's Material Design Lite project to seaside and as second goal to build widgets on top of Material Design to help Seaside developers to create fast web application with flat design. 

# Documentation

## Install MDL Seaside

To install MaterialDesignLite on your Pharo image you can just execute the following script:  [Spotter Cloud Workspace Url](http://ws.stfx.eu/1JIZRQS7OI00).

    Metacello new
    	githubUser: 'DuneSt' project: 'MaterialDesignLite' commitish: 'master' path: 'src';
    	baseline: 'MaterialDesignLite';
    	onWarningLog;
    	load

To add MaterialDesignLite Seaside to your baseline just add this: 

    spec
    	baseline: 'MaterialDesignLite'
    	with: [ spec repository: 'github://jecisc/MaterialDesignLite:master/src' ]
    	
Note that you can replace the #master by another branch as #development or a tag as #v1.0.0.

## Getting start

We use as a base the files product by Google's Material Design Lite. To have a working Material Design Seaside application we need to add those files. 
Most of them can be easily added via a file library but one file need to be explicitely added because this file change depending on the colors you wish for your application.

For now MDL Seaside is based on version 1.2.1 of Google's Material Design Lite.

### Add the right libraries and file

To use MaterialDesign you will need to add JQuery and Material Design library to your application:

	(WAAdmin register: self asApplicationAt: 'myApplication')
		addLibrary: JQDeploymentLibrary;
		addLibrary: MDLLibrary
		
Then you will need to add the css file with the colors. To do so, you will have two options:
 * Add it to your file library
 * Add it in your #updateRoot: 

You can find the files on [https://getmdl.io/customize/index.html](https://getmdl.io/customize/index.html)

They are in the form of: https://storage.googleapis.com/code.getmdl.io/1.2.1/material.XXX-YYY.min.css

Where 	    
 * XXX = primary color
 * YYY = accent color

#### Add the css file in the updateRoot of your application:

    MyApplication>>updateRoot: anHtmlRoot
	    super updateRoot: anHtmlRoot.
	    anHtmlRoot beHtml5.
	    anHtmlRoot stylesheet url: (WAUrl absolute: 'https://storage.googleapis.com/code.getmdl.io/1.2.1/material.XXX-YYY.min.css').


### Subclassing MDLApplication

Another simple way to start with MDL is to subclass MDLApplication to create your root component.
MDLApplication is a class to help you to start an application easily. It will keep in a FileLibrary most of MDL's files.

Since MaterialDesignLite works with a primary color and an accent color you will need to set them. To do so you will need to add this to your #initialize method:

    self primaryColor: MDLColor indigo secondaryColor: MDLColor pink
    
You can find the possible colors into the class MDLColor class.
	
## Examples

You can find multiple examples when the application will be installed at the url: [http://localhost:8080/MDLComponentsDemoApplication](http://localhost:8080/MDLComponentsDemoApplication)

(Change the port if you do not use port 8080)

You can find a demo at: [http://eph-b922e2d9.swarm.pharocloud.com](http://eph-b922e2d9.swarm.pharocloud.com)

    	
