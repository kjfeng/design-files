# elements

settings = new Layer
	width: 412
	height: 732
	image: "images/settings.png"
	
feed_new_settings = new Layer
	width: 412
	height: 732
	image: "images/feed-new-settings.png"
	opacity: 0
	y: 300
	animationOptions: 
		time: 0.3
		
tap_cancel = new Layer
	width: 43
	height: 43
	image: "images/tap-area.png"
	y: 29
	x: 7
	
tap_area1 = new Layer
	width: 43
	height: 43
	image: "images/tap-area.png"
	x: 353
	y: 159
	
tap_area2 = new Layer
	width: 43
	height: 43
	image: "images/tap-area.png"
	x: 353
	y: 237
	
tap_area3 = new Layer
	width: 43
	height: 43
	image: "images/tap-area.png"
	x: 353
	y: 313
	
selected_bubble0 = new Layer
	width: 24
	height: 24
	image: "images/selected-bubble.png"
	x: 362
	y: 546
	opacity: 0
	animationOptions: 
		time: 0.3

selected_bubble1 = new Layer
	width: 24
	height: 24
	image: "images/selected-bubble.png"
	x: 362
	y: 169
	opacity: 0
	animationOptions: 
		time: 0.2
	
selected_bubble2 = new Layer
	width: 24
	height: 24
	image: "images/selected-bubble.png"
	x: 362
	y: 247
	opacity: 0
	animationOptions: 
		time: 0.2
	
selected_bubble3 = new Layer
	width: 24
	height: 24
	image: "images/selected-bubble.png"
	x: 362
	y: 323
	opacity: 0
	animationOptions: 
		time: 0.2

friends_social_tap = new Layer
	width: 412
	height: 39
	y: 347
	backgroundColor: "rgba(255,255,255,0)"

navbar = new Layer
	width: 412
	height: 48
	image: "images/navbar.png"
	y: 684

status_bar = new Layer
	width: 412
	height: 27
	image: "images/status%20bar.png"
	
	
# states

feed_new_settings.states.a =
	opacity: 1
	y: 0
	
selected_bubble0.states.a =
	opacity: 1
	x: 362
	y: 247
	
selected_bubble0.states.b =
	opacity: 0
	x: 362
	y: 247
	animationOptions:
		time: 0.3
	
selected_bubble1.states.a =
	opacity: 1
	
selected_bubble2.states.a =
	opacity: 1
	
selected_bubble3.states.a =
	opacity: 1
	
	
# onTap functions

friends_social_tap.onTap ->
	feed_new_settings.states.switch("a")
	selected_bubble0.states.switch("a")
	
tap_cancel.onTap ->
	feed_new_settings.states.switch("default")
	selected_bubble1.states.switch("default")
	selected_bubble2.states.switch("default")
	selected_bubble3.states.switch("default")
	selected_bubble0.states.switch("default")
	
tap_area1.onTap ->
	selected_bubble1.states.switch("a")
	selected_bubble2.states.switch("default")
	selected_bubble3.states.switch("default")
	selected_bubble0.states.switch("b")
	
tap_area2.onTap ->
	selected_bubble2.states.switch("a")
	selected_bubble1.states.switch("default")
	selected_bubble3.states.switch("default")
	selected_bubble0.states.switch("b")
	
tap_area3.onTap ->
	selected_bubble3.states.switch("a")
	selected_bubble2.states.switch("default")
	selected_bubble1.states.switch("default")
	selected_bubble0.states.switch("b")
	


