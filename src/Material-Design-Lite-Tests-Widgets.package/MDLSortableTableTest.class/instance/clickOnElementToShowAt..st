helper - selenium
clickOnElementToShowAt: anIndex
	(driver findElementByClassName: 'menuButtonWidgetButton') click.
	(Delay forMilliseconds: 300) wait.
	(((driver findElementByClassName: 'mdl-menu__container') findElementsByTagName: 'li') at: anIndex) click