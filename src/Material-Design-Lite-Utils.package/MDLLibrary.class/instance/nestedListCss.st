css
nestedListCss
	^ '.nestedList{
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
	display: flex; 
	justify-content: space-around; 
	align-items: center;
}

.nestedList .mdl-spinner {
  width: 24px;
  height: 24px;
}

.nestedList .mdl-spinner__circle {
  border-width: 2px;
}	

.nestedList .listResearchField .mdl-textfield{
	position: relative;
	padding: 10px 0;
	width: calc( 100% - 50px);
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
    background: url(/files/MDLLibrary/arrowUp.png) no-repeat center center;
}

.expList .collapsed ul{
	display: none;
}

.expList .collapsed .icon{ 
	background: url(/files/MDLLibrary/arrowDown.png) no-repeat center center; 
}

.expList .icon{
   width: 40px;
	height: 40px;
	cursor: pointer;
} 

.nestedList .mdl-tooltip {
	white-space: initial;
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