chip
mdlChipCss
	^ '.mdl-chip{
	height: 32px;	
	padding: 8px 12px;
	background-color: #E0E0E0;
	font-size: 12px;
	color: #565656;
	border-radius: 16px;
	margin: 8px;
	white-space: nowrap;
	text-decoration: none;
}

.mdl-chip:hover{
	background-color: #BDBDBD;
	box-shadow: 0 2px 2px 0 rgba(0,0,0,.14),0 3px 1px -2px rgba(0,0,0,.2),0 1px 5px 0 rgba(0,0,0,.12);
}

.mdl-chip.mdl-chip__deletable{
	padding-right: 0;
}

.mdl-chip .mdl-chip__deleteIcon{
	width: 24px;
	height: 24px;
	line-height: 20px;
	min-width: initial;
	margin: 8px 4px;
	font-size: 20px;
	vertical-align: middle;
	color: #BDBDBD;
	cursor: pointer;
}

.mdl-chip:hover .mdl-chip__deleteIcon{
	-webkit-filter: invert(100%);
    filter: invert(100%);
}

.mdl-chip.mdl-chip__with-icon{
	padding-left: 0;
}

.mdl-chip .mdl-chip__icon{
	border-radius: 50%;
	height: 32px;
	width: 32px;
	min-width: 32px;
	margin-right: 8px;
	line-height: 32px;
	font-size: 20px;
	vertical-align: middle;
	background-color: #9E9E9E;
	color: #EEEEEE;
	display: inline-block;
	text-align: center;
}'