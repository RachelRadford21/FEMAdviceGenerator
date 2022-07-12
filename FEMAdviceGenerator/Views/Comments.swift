//
//  Comments.swift
//  FEMAdviceGenerator
//
//  Created by Rachel Radford on 7/12/22.
//

import Foundation


///MARK: COMMENTS
/*
    QuoteView:
        This is the "main view", the subviews are passed up to the   cardview and then cardview is passed to this view.
 
    CardView:
        This is the background card seen on screen behind the pieces of advice.
        The divider image, the AdviceNumHeaderView, the AdviceView & the DiceIconView
        are "attached" to this card, using .overlay().
        GeometryReader detects the orientation of the device and allows you to customize
        the layout accordingly.
        GeoReader can be "expensive", but I find it to be much more reliable than size classes.
 
    AdviceNumHeaderView:
        This view creates the header on the card showing the advice number. For some
        reason I could not display the actual advice id from the api. So I created a
        variable to make a random number to show in place of the actual id.

        This header is hidden when the app first starts and once the dice button has
        been pushed it will be dislayed on screen.
 
    AdviceView:
        This view is responsible for displaying the pieces of advice. The Text view in
        this view shows the "opening text" when the app isn't started. It then shows
        the advice from the api call after the dice is pressed.
 
    DiceIconView:
        This view is created the dice button view. It has 3 functions.
        When the buttton is pressed it toggles isStarted. This will create
        a glow effect around the button once the user presses it to start
        displaying the advice.
        The fetchData() func is called once the button pressed to get advice.
        The button will also present a diff number for the AdviceNumHeaderView
 
    ViewModel:
        The ViewModel where I placed my variables and call the advice slip api,
        to get advice.
            - randomAdvice ->  My Advice model.
            - currentPage -> Sets the page from the enum to page1, for the switch statement in content view.
            - randomNum -> creates a random number for the header(AdviceNumHeaderView()).
            - isStarted - > When the app is not started the opening text is shown. Otherwise, a piece of advice is displayed. This also sets a shadow radius around button once the button has been pressed and the advice is displayed.
            - openingText -> The text shown on screen before the app has started
            - fetchData -> Make api call.
*/
