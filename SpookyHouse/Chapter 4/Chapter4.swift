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
            // Choose random element from ghostPhrases for ghostOneSays
            ghostOneSays = ghostPhrases.randomElement()!
            // Filter ghostPhrases to remove the element assigned to ghostOneSays
            ghostPhrases = ghostPhrases.filter { $0 != ghostOneSays }
            // Choose random element from remaining phrases in ghostPhrases for ghostTwoSays
            ghostTwoSays = ghostPhrases.randomElement()!
        case 3:
            ghostOneSays = ghostPhrases.randomElement()!
            ghostPhrases = ghostPhrases.filter { $0 != ghostOneSays }
            ghostTwoSays = ghostPhrases.randomElement()!
            ghostPhrases = ghostPhrases.filter { $0 != ghostTwoSays }
            ghostThreeSays = ghostPhrases.randomElement()!
        case 4:
            ghostOneSays = ghostPhrases.randomElement()!
            ghostPhrases = ghostPhrases.filter { $0 != ghostOneSays }
            ghostTwoSays = ghostPhrases.randomElement()!
            ghostPhrases = ghostPhrases.filter { $0 != ghostTwoSays }
            ghostThreeSays = ghostPhrases.randomElement()!
            ghostPhrases = ghostPhrases.filter { $0 != ghostThreeSays }
            ghostFourSays = ghostPhrases.randomElement()!
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
        print("The only thing he sees in the room is a wooden trunk. He approaches it, and sees the the latches are not fastened shut.")
        print("He opens the trunk, and immediately, \(numberOfGhosts) fly out and start circling the room.")
        print("\"\(ghostOneSays)\" booms the first ghost.")
        print("\"\(ghostTwoSays)\" shrieks the second ghost.")
        if ghostThreeSays != nil {
            print("\"\(ghostThreeSays!)\" hisses the third ghost.")
        }
        if ghostFourSays != nil {
            print("\"\(ghostFourSays!)\" thunders the fourth ghost.")
        }
        print("\(myName) turns around and tries to open the bedroom door. Luckily it isn't locked.")
        print("He runs as fast as he can back downstairs to find his friends.")
    }
    
    whatTheGhostsSay(numberOfGhosts: numberOfGhosts)
    
    // STORY BEGINS HERE
    print("Standing outside a bedroom door, \(myName) reaches out and turns the doorknob. The door creaks as he opens the door.")
    
    if doesLightWork {
        lightTurnsOn()
    } else {
        lightBroken()
    }
}
