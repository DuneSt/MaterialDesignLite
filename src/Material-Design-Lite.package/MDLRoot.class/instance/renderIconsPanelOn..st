rendering
renderIconsPanelOn: html
	html mdlTabsPanel
		id: 'icons';
		with: [ 
					html
						mdlCell
						desktopSize: 4;
						tabletSize: 4;
						phoneSize: 4;
						style: 'background-color: #ffffff;';
						with: [ 
							#(#accessibility #account_balance #account_box #account_circle #alarm #alarm_add #alarm_off #alarm_on #android #announcement #aspect_ratio #assignment #autorenew #backup #book #bookmark #bookmark_border #bug_report #build #card_travel #change_history #check_circle #class #code #credit_card #dashboard #delete #description #done #done_all #eject #explore #extension #face #star #star_border #star_half #favorite_border #feedback #find_in_page #get_app #gif #grade #help #help_outline #history #invert_colors #label #label_outline #language #list #open_with #power_settings_new #polymer #print #room #search #settings #shopping_cart #thumb_down #thumb_up #thumbs_up_down #verified_user #zoom_in #zoom_out #high_quality #not_interested #directions_bike #directions_bus #directions_car #flight #layers)
								do: [ :iconName | html mdlIcon: iconName ] ] ]