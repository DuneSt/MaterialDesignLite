uploaded
sliderCss
	^ '
.mdl-slider-container{
	display: flex;
	flex-wrap: wrap;
	align-items: center;
	margin-bottom: 20px;
}

.mdl-slider__container{
	flex-grow: 1;
}
	
.mdl-slider-container label{
	width: 100%;
	text-align: left;
	margin-bottom: 20px;
}

.mdl-slider-container output{
	border-bottom: 1px solid rgba(0,0,0,.12);
}

input[type="range"].mdl-slider-bounds:before {
    content: attr(min);
    line-height: 30px;
}
input[type="range"].mdl-slider-bounds:after {
    content: attr(max);
    line-height: 30px;
    right: 5%;
    position: absolute;
}
'