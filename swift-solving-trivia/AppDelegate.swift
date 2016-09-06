//
//  AppDelegate.swift
//  swift-solving-trivia
//
//  Created by Joel Bell on 7/8/16.
//  Copyright © 2016 Joel Bell. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    
    
    func solveTrivia(stateCapital: [String: String])->String{
        var same = false
        var returnState: String = ""
        for (state, capital) in stateCapital{
            let lowerState = state.lowercaseString
            let lowerCapital = capital.lowercaseString
            for a in lowerState.characters{
               if same == false{
                for b in lowerCapital.characters{
                if a != b {
                    returnState = state
                    continue
                } else {
                 same = true
                 returnState = ""
                 break }
                }}
                if same == true {
                same = false // reset to false
                break //same characters in State in Capital, move on to next set.
                }
            }
            if same == false &&
               !returnState.isEmpty{
               return state 
            }}
        return returnState
    }
}

