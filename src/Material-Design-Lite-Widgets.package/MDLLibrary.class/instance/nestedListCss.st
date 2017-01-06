list
nestedListCss
	^ '
.nestedList{
	height: 100%;
    width: 100%;
	background-color: #FFF;
}

.nestedList li > ul {
    background-color: white;
}

.nestedList .listResearchField{
	width: 100%;
	text-align: center;
	height: 46px;
}

.nestedList .listResearchField .mdl-textfield{
	position: relative;
	width: calc(100% - 20px);
	padding: 10px 0;
}

.nestedList .listResearchField .mdl-textfield__label{
	top: 14px;
}

.nestedList .listResearchField .mdl-textfield__label:after{
	bottom: 10px;
}

.nestedList .listContent{
	height: 100%;
}

.nestedList .listContent.withSearch{
	height: calc(100% - 46px);
}
	
.listContainer{
	height: 100%;
	width: 100%;
   overflow: hidden;
}

.listContainer:hover{
	overflow: auto;
}

.listContainer ul{
	padding-left: 0;
}

.listContainer a{
	color: rgba(0, 0, 0, 0.87);
	text-decoration: none;
	display: -webkit-flex; /* Safari */
	display: flex;
	align-items: center;
	white-space: nowrap;
	cursor: pointer;
	flex-grow: 1;
	width: 0;
}

.nestedList .listContent.withSearch .expList{
	margin: 0;
}

.expList .itemContener.isSelected {
    background-color: #CFD8DC;
	position: relative;
}

.expList .itemContener.isSelected:hover {
    background-color: #B0BEC5;
}

.expList ul, .expList li {
    transform: translate3d(0px, 0px, 0px);
    transition: all 450ms cubic-bezier(0.23, 1, 0.32, 1) 0ms;
    width: 100%;
    line-height: 0;
}

.expList .itemContener {
    display: flex;
	align-items: center;
}

.expList .itemContener:hover {
    background-color:#EEEEEE;
}

.expList li .item{
	vertical-align: middle;
	text-overflow: ellipsis;
	overflow: hidden;
}

.expList i{
    color: #757575;
    margin: 0 4px;
    padding-right: 16px;
	vertical-align: middle;
}

.expList img {
    height: 24px;
    width: 24px;
    margin: 0 10px;
}

.nestedList .mdl-tooltip--large {
    position: absolute;
    top: 100% !important;
    left: 10px !important;
    margin-left: 0 !important;
}

.expList > li:last-child {
    margin-bottom: 60px;
}

.listContainer::-webkit-scrollbar {
    display: none;
}

.expList .expanded {
    border-style: solid;
    border-width: 1px 0;
    border-color: rgb(220,220,220);
}

.expList .expanded .icon{
    background: url(' , (self urlOf: 'arrowUpPng') asString
		,
			') no-repeat center center;
}

.expList .collapsed ul{
	display: none;
}

.expList .collapsed .icon{ 
	background: url(' , (self urlOf: 'arrowDownPng') asString
		,
			') no-repeat center center; 
}

.expList .icon{
    width: 40px;
	height: 40px;
	cursor: pointer;
} 

/**remove if we found why componentHandler.upgradeElement() andcomponentHandler.upgradeDom() does not work*/
.expList span.item:hover + .mdl-tooltip.mdl-tooltip {
	-webkit-animation: pulse 200ms cubic-bezier(0,0,.2,1)forwards;
	animation: pulse 200ms cubic-bezier(0,0,.2,1)forwards;
}
.nestedList .mdl-tooltip {
	white-space: initial;
}

/**TODO: REMOVE THIS LATER. SEE: https://github.com/DuneSt/MaterialDesignLite/issues/31*/
.expList li:hover {
    position: relative;
    z-index: 1000;
}

/** STYLES **/

.nestedList.standard .listContainer a{
	font-size: 16px;
	font-weight: inherit;
}

.nestedList.standard .expList li .item{
	line-height: 48px;
}

.nestedList.compact .listContainer a{
	font-size: 13px;
	font-weight: inherit;
}

.nestedList.compact .expList li .item{
	line-height: 40px;
}

'