as yet unclassified
nestedListCss
	^ 'body{
	height: 100%;	
}
	
.listContainer{
	border-right: 1px solid rgb(217, 217, 217);
	height: 100%;
	width: 100%;
   overflow: hidden;
	background-color: #FFF;
}

.listContainer:hover{
	overflow: auto;
}

.listContainer ul{
	padding-left: 0;
}
 
.listContainer a{
	font-size: 16px;
	font-weight: inherit;
	color: rgba(0, 0, 0, 0.87);
	text-decoration: none;
	display: block;
	white-space: nowrap;
}

.expList ul, .expList li {
    transform: translate3d(0px, 0px, 0px);
    transition: all 450ms cubic-bezier(0.23, 1, 0.32, 1) 0ms;
}

.expList .itemContener:hover {
    background-color:#EEEEEE;
}

.expList li .item{
	line-height: 40px;
	vertical-align: middle;
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

.expList .mdl-tooltip--large {
    position: absolute;
    top: 0px !important;
    left: 150px !important;
    margin-left: 0 !important;
}

.expList .expIcon{
    width: 40px;
	height: 40px;
	float: right;
	cursor: pointer;
   background: url(' , (self urlOf: 'arrowDownPng') asString , ') no-repeat center center;
	padding-left: 15px;
	position: absolute;
   right: 5px;
   top: 0;
} 

.expList .expandedIcon{
    background: url(' , (self urlOf: 'arrowUpPng') asString , ') no-repeat center center;
}

.listContainer::-webkit-scrollbar {
    display: none;
}

.expanded {
    border-style: solid;
    border-width: 1px 0;
    border-color: rgb(220,220,220);
}'