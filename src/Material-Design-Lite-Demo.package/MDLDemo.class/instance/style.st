hooks
style
	^ '.mdl-components {
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex;
}
	
.mdl-components .mdl-components__nav {
    min-width: 200px;
    width: 200px;
    padding: 24px 0;
    z-index: 2;
}

.mdl-components .mdl-components__pages {
    display: inline-block;
    -webkit-flex-grow: 1;
    -ms-flex-positive: 1;
    flex-grow: 1;
    padding-bottom: 120px;
    overflow: auto;
}

.mdl-components .mdl-components__page {
    min-height: 1000px;
}

.mdl-components .component-title {
    margin-top: 30px;
    margin-bottom: 60px;
    margin-left: 32px;
}

.mdl-components .component-title h3 {
    font-size: 16px;
    font-weight: 600;
    margin-top: 80px;
    text-transform: uppercase;
    color: rgba(0,0,0,.54);
}

.mdl-components .component-title p {
    font-family: ''Roboto'',''Helvetica'',''Arial'',sans-serif;
    margin-top: 16px;
    margin-bottom: 16px;
    font-size: 13px;
    max-width: 640px;
}

.nestedList.demo .listContent .listContainer .expList img{
	height: 46px;
	width: 46px;
}

.nestedList.demo .listContainer a { 
    font-size: 16px;
    font-weight: inherit;
    color: rgba(0,0,0,.66);
}

.nestedList.demo .listContainer a .item { 
    line-height: 60px;
}
'