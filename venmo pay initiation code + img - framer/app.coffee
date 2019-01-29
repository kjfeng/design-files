# elements

friends_feed.states.a =
	scale: 1.00
	opacity: 1.00
	
myFriends_feed = new Layer
	width: 412
	height: 732
	image: "images/myFriends-feed.png"

status_bar = new Layer
	width: 411
	height: 27
	image: "images/status%20bar.png"
	
navbar = new Layer
	width: 411
	height: 48
	image: "images/navbar.png"
	y: 684

floating_action_btn = new Layer
	width: 65
	height: 65
	image: "images/floating-action-btn.png"
	x: 335
	y: 606
	
cancel_btn = new Layer
	width: 43
	height: 34
	image: "images/floating-action-btn.png"
	y: 32
	x: 7

modal_bkgrd = new Layer
	width: 412
	height: 658
	image: "images/modal-bkgrd.png"
	y: 25
	opacity: 0
	animationOptions: 
		time: 0.3
	
request_group = new Layer
	width: 160
	height: 62
	image: "images/request-group.png"
	x: 240
	y: 606
	opacity: 0
	animationOptions: 
		curve: Bezier.easeInOut
		time: 0.3
	
pay_group = new Layer
	width: 129
	height: 62
	image: "images/pay-group.png"
	y: 606
	x: 271
	opacity: 0
	animationOptions: 
		curve: Bezier.easeInOut
		time: 0.35
		
pay_btn = new Layer
	width: 65
	height: 65
	image: "images/floating-action-btn.png"
	y: 460
	x: 332
	
request_btn = new Layer
	width: 65
	height: 65
	image: "images/floating-action-btn.png"
	y: 533
	x: 332
		
cancel_floating_action = new Layer
	width: 72
	height: 72
	image: "images/cancel-floating-action.png"
	y: 608
	x: 333
	opacity: 0
	animationOptions: 
		curve: Bezier.easeInOut
		time: 0.3
		
pay_or_request_screen = new Layer
	width: 412
	height: 732
	image: "images/pay-or-request-screen.png"
	opacity: 0
	x: 415
	animationOptions: 
		time: 0.5
		
# states

modal_bkgrd.states.a =
	opacity: 1
	
cancel_floating_action.states.a =
	opacity: 1
	
pay_group.states.a =
	y: 460
	x: 271
	opacity: 1
	
request_group.states.a =
	x: 240
	y: 533
	opacity: 1
	
pay_or_request_screen.states.a =
	x: 0
	opacity: 1
	
# onTap functions
	
floating_action_btn.onTap ->
	modal_bkgrd.stateCycle()
	cancel_floating_action.stateCycle()
	pay_group.stateCycle()
	request_group.stateCycle()
	
pay_btn.onTap ->
	pay_or_request_screen.states.switch("a")
	
request_btn.onTap ->
	pay_or_request_screen.states.switch("a")
	
cancel_btn.onTap ->
	pay_or_request_screen.states.switch("default")
	

	
	
	
	




