hooks
style
	^ '.mdl-components {
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex;
    background: #fafafa;
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

/* SCREENS */

.snippet-group {
    margin-left: -16px;
    margin-right: -16px;
    margin-bottom: 84px;
}

.snippet-group .snippet-header {
    display: table;
    border-collapse: collapse;
    border-spacing: 0;
    width: 100%;
}

.snippet-group .snippet-demos, .snippet-group .snippet-captions {
    display: table-row;
}

.snippet-group .snippet-demos .snippet-demo-padding {
    width: 50%;
}

.snippet-group .snippet-demo-padding, .snippet-group .snippet-caption, .snippet-group .snippet-caption-padding {
    display: table-cell;
    vertical-align: middle;
    margin: 0;
}

.snippet-group .snippet-demo {
    padding: 0 40px 40px;
}

.snippet-group .snippet-demo {
    display: table-cell;
    text-align: center;
    vertical-align: middle;
    margin: 0;
}

.snippet-group .snippet-demo .snippet-demo-container {
    text-align: left;
    display: inline-block;
}

.snippet-group .snippet-captions {
    background-color: #fff;
    height: 48px;
}

.snippet-group .snippet-caption {
    font-size: 13px;
    padding: 0 40px;
    white-space: nowrap;
    text-align: center;
    position: relative;
}

.snippet-group .snippet-code {
    position: relative;
    overflow: hidden;
}


/* LISTS */

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