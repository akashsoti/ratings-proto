background = new ScrollComponent
	x: 0, y:0, width: Screen.width, height: Screen.height, mouseWheelEnabled: false, 
	scrollHorizontal: false, scroll: false

background.backgroundColor = '#fafafa'
background.contentInset = {bottom: 100}
background.content.draggable.bounce = true

page = new Layer
	width: 1080, height: 3318
	image: "images/page.png"
	superLayer: background.content

submit = new Layer
	width: 1080, height: 170, y: 1610
	image: "images/submitBtn.png"
	opacity: 1
	y: 1800
	
tab = new Layer
	width: 1080, height: 144, y: 1776
	image: "images/tab.png"

stamp = new Layer
	width: 273, height: 265
	image: "images/stamp.png"
	superLayer: page
	x: 670
	y: 290
	scale: 3
	opacity: 0
	
driverImage = new Layer
	width: 194, height: 194
	image: "images/driver image.png"
	superLayer: page
	y: 1000
	
driverImage.centerX()

horrible = new Layer
	width: 192, height: 192
	image: "images/horrible.png"
	superLayer: page
	x: driverImage.x
	y: driverImage.y
	opacity: 0
	rotationX: 90
	
text = new Layer
	width: 518, height: 58
	image: "images/text.png"
	superLayer: page
	y: 1240
	opacity: 1
	
text.centerX()
	
bad = new Layer
	width: 282, height: 46
	image: "images/tex-bad.png"
	superLayer: page
	y: 1240
	opacity: 0
	
bad.centerX()

Ratings = 
	awesome:
		starImage: 
			imageEmpty: "images/star.png"
			imageFill: "images/starfill.png"
			x: 220
			y: 1334
		handMoodImage:
			image: "images/horrible.png"
			x: 443
			y: 1000
		textImage:
			image: "images/tex-bad.png"
			x: Screen.width/2
			y: 1240
	good:
		starImage: 
			imageEmpty: "images/star.png"
			imageFill: "images/starfill.png"
			x: 220
			y: 1334
		handMoodImage:
			image: "images/horrible.png"
			x: 443
			y: 1000
		textImage:
			image: "images/tex-bad.png"
			x: Screen.width/2
			y: 1240
	ok:
		starImage: 
			imageEmpty: "images/star.png"
			imageFill: "images/starfill.png"
			x: 220
			y: 1334
		handMoodImage:
			image: "images/horrible.png"
			x: 443
			y: 1000
		textImage:
			image: "images/tex-bad.png"
			x: Screen.width/2
			y: 1240
	bad:
		starImage: 
			imageEmpty: "images/star.png"
			imageFill: "images/starfill.png"
			x: 220
			y: 1334
		handMoodImage:
			image: "images/horrible.png"
			x: 443
			y: 1000
		textImage:
			image: "images/tex-bad.png"
			x: Screen.width/2
			y: 1240
	poor:
		starImage: 
			imageEmpty: "images/star.png"
			imageFill: "images/starfill.png"
			x: 220
			y: 1334
		handMoodImage:
			image: "images/horrible.png"
			x: 443
			y: 1000
		textImage:
			image: "images/tex-bad.png"
			x: Screen.width/2
			y: 1240

Ratings.create

setStars = ->
	
	@star=[]
	@starFill=[]
	
	for count in [0..4]
		star[count] = new Layer
			width: 97, height: 96
			image: "images/star.png"
			superLayer: page
			x: 220
			y: 1334
	
		star[count].name = "s#{count}"
			
		starFill[count] = new Layer
			width: 97, height: 96
			image: "images/starfill.png"
			superLayer: page
			x: 220
			y: 1334
			scale: 0
			
		starFill[count].name = "sf#{count}"
		
	star[1].x = 349
	star[2].x = 478
	star[3].x = 607
	star[4].x = 736
	starFill[1].x = 349
	
setStars()

animateScroll = ->
	background.animate
		properties:
			scrollY: 980
		delay: 0.4
		time: 0.4
	
animateRating = ->
	
	driverImage.animate
		properties: 
			rotationX: 90
			opacity: 0
		time: 0.2
	
	horrible.animate
		properties:
			rotationX: 0
			opacity: 1
		time: 0.5
		
	star[0].opacity =0
	star[1].opacity =0
	
	starFill[0].animate
		properties:
			scale: 1
		curve: 'spring(200,0,10)'
		time: 0.2
		
	starFill[1].animate
		properties:
			#rotationY: 360
			scale: 1
		curve: 'spring(200,0,10)'
		delay: 0.1
		
	page.animate
		delay: 0.8
		time: 0.5
		
	background.scrollY = -980
	
	submit.animate
		properties:
			y: 1630
		delay: 0.8
		time: 0.5
	
	text.opacity = 0
	bad.opacity = 1

star[1].on Events.Click, ->
	
	background.scroll = true
	background.scrollHorizontal = false
	background.mouseWheelEnabled = true
	
	animateRating()

	animateScroll()
	
	animateList()
	
tab.on Events.Click, ->
	stamp.animate
		properties: 
			scale: 1
			opacity: 1
		curve: 'spring(500,30,20)'
		time: 0.13
		
imageLayer2 = new Layer
	width: 1080, height: 122, y: 1491+100, superLayer: page
	opacity: 0
	image: "images/row1.png"
imageLayer3 = new Layer
	width: 972, height: 54, y: 1656+100, superLayer: page, x: 48
	opacity: 0
	image: "images/row2.png"
imageLayer4 = new Layer
	width: 972, height: 54, y: 1856+100, superLayer: page, x: 48
	opacity: 0
	image: "images/row3.png"
imageLayer5 = new Layer
	width: 973, height: 56, y: 2056+100, superLayer: page, x: 48
	opacity: 0
	image: "images/row4.png"
imageLayer6 = new Layer
	width: 972, height: 55, y: 2256+100, superLayer: page, x: 48
	opacity: 0
	image: "images/row5.png"
imageLayer7 = new Layer
	width: 972, height: 55, y: 2456+100, superLayer: page, x: 48
	opacity: 0
	image: "images/row6.png"
imageLayer8 = new Layer
	width: 973, height: 54, y: 2656+100, superLayer: page, x: 48
	opacity: 0
	image: "images/row7.png"
imageLayer9 = new Layer
	width: 987, height: 71, y: 2856+100, superLayer: page, x: 48
	opacity: 0
	image: "images/text field.png"
	
list = [imageLayer2,imageLayer3,imageLayer4,imageLayer5,imageLayer6,imageLayer7,imageLayer8,imageLayer9]

animateList = ->
	for l in list
		currentY = l.y
		l.animate
			properties: 
				y: currentY-50
				opacity:1
			delay: 0.04 * (l.index)
			curve:"spring(225,30,2)"
	