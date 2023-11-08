//
//  Chapter4.swift
//  CLIStoryTemplate
//

import Foundation

let myName = "Nathan"
let doesLightWork = Bool.random()
let numberOfPhantoms = Int.random(in: 2...4)

var phrases = ["Boo!", "Leave us alone!", "Get out!", "You aren't welcome here!", "This is our house!"]
var verbs = ["howls", "hisses", "shrieks", "screams", "shouts", "booms", "yells"]

var phantom1 = Phantom()
var phantom2 = Phantom()
var phantom3 = Phantom()
var phantom4 = Phantom()

let phantoms = [phantom1, phantom2, phantom3, phantom4]

struct Phantom {
    var phrase: String? = nil
    var verb: String? = nil
    var ordinal: String = ""
}

func phantomFactory() {
    phrases.shuffle()
    verbs.shuffle()
    phantom1 = Phantom(phrase: phrases[0], verb: verbs[0], ordinal: "first")
    phantom2 = Phantom(phrase: phrases[1], verb: verbs[1], ordinal: "second")
    phantom3 = Phantom(phrase: phrases[2], verb: verbs[2], ordinal: "third")
    phantom4 = Phantom(phrase: phrases[3], verb: verbs[3], ordinal: "fourth")
}

enum Ending: CaseIterable {
    case downstairs, outside, friends
}

let randomEnding = Ending.allCases.randomElement() ?? .downstairs

func introduction() {
    print("Standing outside a bedroom door, \(myName) reaches out and turns the doorknob. The door creaks as he opens the door.")
}

func lightTurnsOn() {
    print("\(myName) flips the light switch and the light turns on. He steps inside and looks around.")
    print("The room is empty except for a large mirror hanging on the wall.")
    print("\(myName) takes out his camera and takes a picture of himself in the mirror.")
    print("To his surprise, \(numberOfPhantoms) phantoms are behind him in the photograph!")
    print("Frightened, he turns around and looks behind him, but doesn't see anything.")
    print("He hears the invisible phantoms clearly:")
    phantomsSay(numberOfPhantoms)
}

func lightBroken() {
    print("\(myName) tries flipping the light switch but the bulb is burnt out. The room is dark, so he turns on his flashlight and steps inside.")
    print("To his surprise, the door slams behind him.")
    print("Frightened in the dark, he shines his flashlight around the room.")
    print("The only thing he sees in the room is a wooden trunk. He approaches it, and sees the the latches are not fastened shut.")
    print("He opens the trunk, and immediately, \(numberOfPhantoms) phantoms fly out and start circling the room.")
    phantomsSay(numberOfPhantoms)
}

func phantomsSay(_ numberOfPhantoms: Int) {
    for i in 0..<numberOfPhantoms {
        print("\"\(phantoms[i].phrase!)\" \(phantoms[i].verb!) the \(phantoms[i].ordinal) phantom.")
    }
}

func ending(_ randomEnding: Ending) {
    switch randomEnding {
    case .downstairs:
        print("Startled, he runs downstairs as fast as he can to find his friends.")
    case .outside:
        print("Terrified, he runs downstairs and right out the front door, never to return again.")
    case .friends:
        print("Fascinated, he calls his friends so they can come see the phantoms for themselves.")
    }
}

func chapterFour() {
    // Assign random phrases and verbs to each ghost
    phantomFactory()
    
    // Start telling story
    introduction()
    
    if doesLightWork {
        lightTurnsOn()
    } else {
        lightBroken()
    }
    
    ending(randomEnding)
}
