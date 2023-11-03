//
//  Chapter4.swift
//  CLIStoryTemplate
//

import Foundation

let myName = "Nathan"
let doesLightWork = Bool.random()
let numberOfGhosts = Int.random(in: 2...4)

var phrases = ["Boo!", "Leave us alone!", "Get out!", "You aren't welcome here!", "This is our house!"]
var verbs = ["howls", "hisses", "shrieks", "screams", "shouts", "booms", "yells"]

var ghost1 = Ghost()
var ghost2 = Ghost()
var ghost3 = Ghost()
var ghost4 = Ghost()

struct Ghost {
    var phrase: String? = nil
    var verb: String? = nil
}

func ghostFactory() {
    phrases.shuffle()
    verbs.shuffle()
    ghost1 = Ghost(phrase: phrases[0], verb: verbs[0])
    ghost2 = Ghost(phrase: phrases[1], verb: verbs[1])
    ghost3 = Ghost(phrase: phrases[2], verb: verbs[2])
    ghost4 = Ghost(phrase: phrases[3], verb: verbs[3])
}

enum Ending: CaseIterable {
    case downstairs, outside, friends
}

var randomEnding = Ending.allCases.randomElement()!

func introduction() {
    print("Standing outside a bedroom door, \(myName) reaches out and turns the doorknob. The door creaks as he opens the door.")
}

func lightTurnsOn() {
    print("\(myName) flips the light switch and the light turns on. He steps inside and looks around.")
    print("The room is empty except for a large mirror hanging on the wall.")
    print("\(myName) takes out his camera and takes a picture of himself in the mirror.")
    print("To his surprise, \(numberOfGhosts) ghosts are behind him in the photograph!")
    print("Frightened, he turns around and looks behind him, but doesn't see anything.")
    print("\"\(ghost1.phrase!)\" \(ghost1.verb!) the first ghost.")
    print("\"\(ghost2.phrase!)\" \(ghost2.verb!) the second ghost.")
    if numberOfGhosts == 3 {
        print("\"\(ghost3.phrase!)\" \(ghost3.verb!) the third ghost.")
    }
    if numberOfGhosts == 4 {
        print("\"\(ghost3.phrase!)\" \(ghost3.verb!) the third ghost.")
        print("\"\(ghost4.phrase!)\" \(ghost4.verb!) the fourth ghost.")
    }
}

func lightBroken() {
    print("\(myName) tries flipping the light switch but the bulb is burnt out. The room is dark, so he turns on his flashlight and steps inside.")
    print("To his surprise, the door slams behind him.")
    print("Frightened in the dark, he shines his flashlight around the room.")
    print("The only thing he sees in the room is a wooden trunk. He approaches it, and sees the the latches are not fastened shut.")
    print("He opens the trunk, and immediately, \(numberOfGhosts) ghosts fly out and start circling the room.")
    print("\"\(ghost1.phrase!)\" \(ghost1.verb!) the first ghost.")
    print("\"\(ghost2.phrase!)\" \(ghost2.verb!) the second ghost.")
    if numberOfGhosts == 3 {
        print("\"\(ghost3.phrase!)\" \(ghost3.verb!) the third ghost.")
    }
    if numberOfGhosts == 4 {
        print("\"\(ghost3.phrase!)\" \(ghost3.verb!) the third ghost.")
        print("\"\(ghost4.phrase!)\" \(ghost4.verb!) the fourth ghost.")
    }
}

func ending(_ randomEnding: Ending) {
    switch randomEnding {
    case .downstairs:
        print("Startled, he runs downstairs as fast as he could to find his friends.")
    case .outside:
        print("Terrified, he runs downstairs and right out the front door, never to return again.")
    case .friends:
        print("Fascinated, he yells to his friends to come see the ghosts for themselves.")
    }
}

func chapterFour() {
    // Assign random phrases and verbs to each ghost
    ghostFactory()
    
    // Start telling story
    introduction()
    
    if doesLightWork {
        lightTurnsOn()
    } else {
        lightBroken()
    }
    
    ending(randomEnding)
}



