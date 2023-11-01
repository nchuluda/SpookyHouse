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

func ghostFactory(numberOfGhosts: Int) {
    switch numberOfGhosts {
    case 2:
        ghost1.phrase = phrases.randomElement()!
        ghost1.verb = verbs.randomElement()!
        phrases = phrases.filter { $0 != ghost1.phrase }
        verbs = verbs.filter { $0 != ghost1.verb }
        ghost2.phrase = phrases.randomElement()!
        ghost2.verb = verbs.randomElement()!
    case 3:
        ghost1.phrase = phrases.randomElement()!
        ghost1.verb = verbs.randomElement()!
        phrases = phrases.filter { $0 != ghost1.phrase }
        verbs = verbs.filter { $0 != ghost1.verb }
        ghost2.phrase = phrases.randomElement()!
        ghost2.verb = verbs.randomElement()!
        phrases = phrases.filter { $0 != ghost2.phrase }
        verbs = verbs.filter { $0 != ghost2.verb }
        ghost3.phrase = phrases.randomElement()!
        ghost3.verb = verbs.randomElement()!
    case 4:
        ghost1.phrase = phrases.randomElement()!
        ghost1.verb = verbs.randomElement()!
        phrases = phrases.filter { $0 != ghost1.phrase }
        verbs = verbs.filter { $0 != ghost1.verb }
        ghost2.phrase = phrases.randomElement()!
        ghost2.verb = verbs.randomElement()!
        phrases = phrases.filter { $0 != ghost2.phrase }
        verbs = verbs.filter { $0 != ghost2.verb }
        ghost3.phrase = phrases.randomElement()!
        ghost3.verb = verbs.randomElement()!
        phrases = phrases.filter { $0 != ghost3.phrase }
        verbs = verbs.filter { $0 != ghost3.verb }
        ghost4.phrase = phrases.randomElement()!
        ghost4.verb = verbs.randomElement()!
    default:
        break
    }
}

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
    if ghost3.phrase != nil && ghost3.verb != nil {
        print("\"\(ghost3.phrase!)\" \(ghost3.verb!) the third ghost.")
    }
    if ghost4.phrase != nil && ghost4.phrase != nil {
        print("\"\(ghost4.phrase!)\" \(ghost4.verb!) the fourth ghost.")
    }
    print("\(myName) runs as fast as he can back downstairs to find his friends.")
}

func lightBroken() {
    print("\(myName) tries flipping the light switch but the bulb is burnt out. The room is dark, so he turns on his flashlight and steps inside.")
    print("To his surprise, the door slams behind him.")
    print("Frightened in the dark, he shines his flashlight around the room.")
    print("The only thing he sees in the room is a wooden trunk. He approaches it, and sees the the latches are not fastened shut.")
    print("He opens the trunk, and immediately, \(numberOfGhosts) ghosts fly out and start circling the room.")
    print("\"\(ghost1.phrase!)\" \(ghost1.verb!) the first ghost.")
    print("\"\(ghost2.phrase!)\" \(ghost2.verb!) the second ghost.")
    if ghost3.phrase != nil && ghost3.verb != nil {
        print("\"\(ghost3.phrase!)\" \(ghost3.verb!) the third ghost.")
    }
    if ghost4.phrase != nil && ghost4.phrase != nil {
        print("\"\(ghost4.phrase!)\" \(ghost4.verb!) the fourth ghost.")
    }
    print("\(myName) turns around and tries to open the bedroom door. Luckily it isn't locked.")
    print("He runs as fast as he can back downstairs to find his friends.")
}

func chapterFour() {
    // Assign random phrases and verbs to each ghost
    ghostFactory(numberOfGhosts: numberOfGhosts)
    
    introduction()
    
    if doesLightWork {
        lightTurnsOn()
    } else {
        lightBroken()
    }
}
