//
//  Chapter4.swift
//  CLIStoryTemplate
//

import Foundation

let myName = "Nathan"
let doesLightWork = Bool.random()
let numberOfGhosts = Int.random(in: 2...4)
var ghostOneSays: String = ""
var ghostTwoSays: String = ""
var ghostThreeSays: String?
var ghostFourSays: String?
var ghostPhrases = ["Boo!", "Leave us alone!", "Get out!", "You aren't welcome here!", "This is our house!"]

func chapterFour() {

    func whatTheGhostSays() -> String {
        return ghostPhrases.randomElement()!
    }
    
    func whatTheGhostsSay(numberOfGhosts: Int) {
        switch numberOfGhosts {
        case 2:
            ghostOneSays = ghostPhrases.randomElement()!
            ghostPhrases = ghostPhrases.filter { $0 != ghostOneSays }
            ghostTwoSays = ghostPhrases.randomElement()!
            //            print("Ghost 1: \(ghostOneSays)")
            //            print("Ghost 2: \(ghostTwoSays)")
            
        case 3:
            ghostOneSays = ghostPhrases.randomElement()!
            ghostPhrases = ghostPhrases.filter { $0 != ghostOneSays }
            ghostTwoSays = ghostPhrases.randomElement()!
            ghostPhrases = ghostPhrases.filter { $0 != ghostTwoSays }
            ghostThreeSays = ghostPhrases.randomElement()!
            //            print("Ghost 1: \(ghostOneSays)")
            //            print("Ghost 2: \(ghostTwoSays)")
            //            print("Ghost 3: \(ghostThreeSays!)")
        case 4:
            ghostOneSays = ghostPhrases.randomElement()!
            ghostPhrases = ghostPhrases.filter { $0 != ghostOneSays }
            ghostTwoSays = ghostPhrases.randomElement()!
            ghostPhrases = ghostPhrases.filter { $0 != ghostTwoSays }
            ghostThreeSays = ghostPhrases.randomElement()!
            ghostPhrases = ghostPhrases.filter { $0 != ghostThreeSays }
            ghostFourSays = ghostPhrases.randomElement()!
            //            print("Ghost 1: \(ghostOneSays)")
            //            print("Ghost 2: \(ghostTwoSays)")
            //            print("Ghost 3: \(ghostThreeSays!)")
            //            print("Ghost 4: \(ghostFourSays!)")
        default:
            break
        }
    }
    
    func lightTurnsOn() {
        print("\(myName) flips the light switch and the light turns on. He steps inside and looks around.")
        print("The room is empty except for a large mirror hanging on the wall.")
        print("\(myName) takes out his camera and takes a picture of himself in the mirror.")
        print("To his surprise, \(numberOfGhosts) ghosts are behind him in the photograph!")
        print("Frightened, he turns around and looks behind him, but doesn't see anything.")
        //        print("\"\(whatTheGhostSays())\" boom the ghosts in unison.")
        print("\"\(ghostOneSays)\" booms the first ghost.")
        print("\"\(ghostTwoSays)\" shrieks the second ghost.")
        if ghostThreeSays != nil {
            print("\"\(ghostThreeSays!)\" hisses the third ghost.")
        }
        if ghostFourSays != nil {
            print("\"\(ghostFourSays!)\" thunders the fourth ghost.")
        }
        print("\(myName) runs as fast as he can back downstairs to find his friends.")
    }
    
    func lightBroken() {
        print("\(myName) tries flipping the light switch but the bulb is burnt out. The room is dark, so he turns on his flashlight and steps inside.")
        print("To his surprise, the door slams behind him.")
        print("Frightened in the dark, he shines his flashlight around the room.")
        
    }
    
    whatTheGhostsSay(numberOfGhosts: 4)
    
    // STORY BEGINS HERE
    print("Standing outside a bedroom door, \(myName) reaches out and turns the doorknob. The door creaks as he opens the door.")
    
    if doesLightWork {
        lightTurnsOn()
    } else {
        lightBroken()
    }
}
