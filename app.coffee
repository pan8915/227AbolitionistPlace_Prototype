# Import file "onboarding-screens-wonep-app"
sketch = Framer.Importer.load("imported/onboarding-screens-wonep-app@1x", scale: 1)

Onboarding = PageComponent.wrap(sketch.$1_1_Onbording)
Onboarding.addPage(sketch.$1_2_Onbording)
Onboarding.addPage(sketch.$1_3_Onbording)


#if Onboarding.horizontalPageIndex(Onboarding.currentPage) isnt 2
		#Onboarding.snapToNextPage()
	
	#else
		#app.animate
			#opacity: 1
			#scale: 100	
		#


Onboarding.scrollVertical = false

sketch.Pagination.superLayer = Framer.Device.Screen

sketch.Pagination.y = 500
sketch.Pagination.x = 160

#sketch.Next_Button.superLayer = Framer.Device.Screen

#sketch.Next_Button.y = 550
#sketch.Next_Button.x = 100

sketch.Skip.superLayer = Framer.Device.Screen
			

	#app.animate
		#opacity: 1
		#scale: 100
		
oval_active = new Layer
	height: 11
	image: "images/active_oval.png"
	width: 11
	parent: sketch.Pagination
		

	
Onboarding.on "change:currentPage", ->
	oval_active.x = oval_active.width * 2* Onboarding.horizontalPageIndex(Onboarding.currentPage)

sketch.StartButton.onMouseDown ->
	@.opacity = 0.8
	@.scale = 1.1
	@.curve = Bezier.ease
	
sketch.StartButton.onClick ->
	sketch.Pagination.visible = false
	sketch.Skip.visible = false
	Homepage = sketch.$2_Homepage
	Playgame1 = sketch.$3_1_Play_game
	
	flow = new FlowComponent
	flow.showNext(Homepage)
	
	sketch.PlayGame.onMouseDown ->
		@.opacity = 0.8
		@.scale = 1.1
		@.curve = Bezier.ease

	sketch.ExhibitLayout.onMouseDown ->
		@.opacity = 0.8
		@.scale = 1.1
		@.curve = Bezier.ease
	
	sketch.MuseumInformation.onMouseDown ->
		@.opacity = 0.8
		@.scale = 1.1
		@.curve = Bezier.ease
	
	sketch.listUpanimation.animate
		y: 62
		scale: 1.08
		options:
			time: 0.1
			curve: Spring(tension: 170, friction:52)

	
	sketch.PlayGame.onTap ->
		flow.showNext(Playgame1)
		sketch.progress0Start.animate
			height: 638
			borderRadius: 40
			options:
				time: 1
				curve: Bezier.ease	
			
		sketch.ollycakeButton.animate
			y: 89
			options:
				time: 0.3
				curve: Spring(tension: 140, friction:22)
			
		sketch.listMoveupslow.animate
			y: 92
			options:
				time: 0.3
				curve: Spring(tension: 140, friction:22)
				
	
	sketch.MenuButton.onMouseDown ->
		@.opacity = 0.8
		@.scale = 1.2
		@.curve = Bezier.ease
	
		
	sketch.MenuButton.onTap ->
		flow.showOverlayLeft(sketch.menuPage)
	
	sketch.closeButton.onMouseDown ->
		@.opacity = 0.8
		@.scale = 1.2
		@.curve = Bezier.ease
		
	sketch.closeButton.onTap ->
		flow.showPrevious()
	
	sketch.ollycakeButton.onMouseDown ->
		@.opacity = 0.8
		@.scale = 1.06
		@.curve = Bezier.ease
	
	sketch.ollycakeButton.onTap ->
		flow.showNext(sketch.$3_2_play_game)
	
	
	
	sketch.drag360AR.draggable.enabled = true
	sketch.drag360AR.draggable.vertical = false
	sketch.drag360AR.draggable.constraints =
		x: -200
		y: 0
		width: 800
		height: 200 
	sketch.tapButtonOllycake.onMouseDown ->
		@.opacity = 0.96
		@.scale = 1.07
		@.curve = Bezier.ease
		flow.showNext(sketch.$3_3_play_game)	
			
	
	sketch.tryAgainButton.onMouseDown ->
		@.opacity = 0.96
		@.scale = 1.6
		@.curve = Bezier.ease
		flow.showNext(sketch.$3_2_1_play_game)
			
	
	sketch.info_bar.states =
		show:
			y:1150
			options:
				curve: Bezier.ease
				delay:.1
		
	sketch.ollycakeCollectImagePop.states =
		show:
			x:0
			y:550
			width:375
			height: 707
			image: "images/ollycakeCollectImagePop.png"
			options:
				curve:"spring"
	
			
	#sketch.ollycakeImage.onTap ->
		#flow.showNext(sketch.ollycakePhoto)
	
	sketch.ollycakeCollectImagePop.onMouseDown ->
		@.opacity = 0.96
		@.scale = 1.1
		@.curve = Bezier.ease
		@.stateCycle()
		@.bringToFront()
		sketch.info_bar.stateCycle()
		sketch.info_bar.bringToFront()
		sketch.shareOllycakephotopop.onMouseDown ->
			flow.showOverlayCenter(sketch.shareInterfaceOllycake)
	
	sketch.backButtonOllycake1.onTap ->
		flow.showPrevious()
	
	sketch.drag360ARsubway.draggable.enabled = true
	sketch.drag360ARsubway.draggable.vertical = false
	sketch.drag360ARsubway.draggable.constraints =
		x: 0
		y: 0
		width: 1000
		height: 200 
	
	sketch.tapButtonOllycake1.onMouseDown ->
		@.opacity = 0.96
		@.scale = 1.1
		@.curve = Bezier.ease
		flow.showNext(sketch.$3_3_1_play_game)
	
	sketch.collectButtonOllycake1.onMouseDown ->
		@.opacity = 0.96
		@.scale = 1.1
		@.curve = Bezier.ease
		#animation for progress bar		
	sketch.collectButtonOllycake1.onTap ->
		flow.showNext(sketch.$3_4_Play_game)
		sketch.progressBar10.animate
			height:126
			borderRadius: 40
			options: 
				time:1.4
				curve:Bezier.ease
				
		sketch.text10precent.visible = true
		
		sketch.listClear.animate
			opacity: 0.00
			options:
				time:0.4
				curve: Bezier.ease
		sketch.colonialCurrencyEasyin.animate
			opacity: 1.00
			options:
				curve: Bezier.ease
				delay: 1.0
		sketch.listMovedown.animate
			y:340
			options:
				time:1.2
				curve: Bezier.ease
				
								
	
	sketch.colonialCurrencyEasyin.onMouseDown ->
			@.opacity = 0.96
			@.scale = 1.1
			@.curve = Bezier.ease
			flow.showNext(sketch.$3_5_play_game)	
	sketch.backButtonColonial.onMouseDown ->
		@.opacity = 0.96
		@.scale = 1.1
		@.curve = Bezier.ease
		
	sketch.backButtonColonial.onTap ->
		flow.showPrevious()
	
	sketch.tapCollectColonial.onMouseDown ->
		@.opacity = 0.96
		@.scale = 1.1
		@.curve = Bezier.ease
		
	sketch.tapCollectColonial.onTap ->
		flow.showNext(sketch.$3_6_play_game)
	
	sketch.shareColonial.onMouseDown ->
		@.opacity = 0.96
		@.scale = 1.1
		@.curve = Bezier.ease
		flow.showOverlayCenter(sketch.shareInterface)
	
	sketch.CloseShare.onMouseDown ->
		@.opacity = 0.96
		@.scale = 1.1
		@.curve = Bezier.ease
		flow.showPrevious()
	
	
   





