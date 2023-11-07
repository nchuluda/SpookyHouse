//  Chapter2.swift
//  CLIStoryTemplate
//


import Foundation

func chapterTwo() {
    //    let ghostName: String = "Johndanial"
    let ghostNumber: Int = 67
    var ghostScaryMode = Bool.random()
    //    let ghostScaryLevel: Double = 2.5
    
    var lightTimeOff = Int.random(in: 3...10)
    
    let roomMode = ["spooky", "creepy", "scary"]
    let roomFeeling = roomMode.randomElement() ?? ""
    let roomFeeling2 = roomMode.randomElement() ?? ""
    
    let scarySound = ["movie", "Song", "show"]
    let scaryTimeSounds = scarySound.randomElement() ?? ""
    
    let fanMoving = ["slow", "fast"]
    let fanSpeed = fanMoving.randomElement() ?? ""
    
    let randomObject: String = "window"
    
    enum GhostSound: CaseIterable {
        case loud, quiet, soft
    }
    
    var randomGhostSound = GhostSound.allCases.randomElement()!
    
    struct Ghost {
        var name: String
        var age: Int
        var sound: GhostSound
        var color: String
    }
    
    var ghost1 = Ghost(name: "Ooooky", age: 124, sound: randomGhostSound, color: "red")
    var ghost2 = Ghost(name: "Koi Joi", age: 140, sound: .soft, color: "blue")
    var ghost3 = Ghost (name: "Pumpkin", age: 200, sound: .quiet, color: "green")
    
    let ghosts = [ghost1, ghost2, ghost3]
    let ghost = ghosts.randomElement()!
    
    
//    let myScream = ["crying", "yelling", "jumping", "shaking"]
//    for scream in myScream {
//        print("I was \(scream)")
//    }
    
    func blinkingLight() -> String {
        //        var lightBlinking = ["blink", "blink","blink"]
        var isLightBlinking = Bool.random()
        
        if isLightBlinking == true  {
            
            return "blink, blink, blink"
        }
        else {
            return "Not blinking"
        }
        
    }
    
    
    func ifGhostIsScary(scaryMode: Bool) -> String {
        if scaryMode == true {
            return "ARE YOU SCARED??"
        }
        else {
            return "RUN"
        }
    }
    
    
    
    func ghostColorAndSound(ghost: Ghost) -> String {
        if ghost.age < 130 && ghost.sound != .loud {
            return "Ghost is young"
        } else if ghost.age < 130 && ghost.sound == .loud {
            return "Ghost is young and loud"
        } else {
            return "Ghost was \(ghost.color)"
        }
    }
    
    
    //    func myStory() {
    print("I walked into the basement and found a \(roomFeeling) room. I turned on the light, but it went out after just \(lightTimeOff) seconds, making me feel scared and alone. When I tried to turn the light back on, it stayed off, as if the room didn't want me there. In the quiet room, I heard a strange sound, like water dripping slowly. It was \(roomFeeling2)! I followed the sound and saw a sink with a rusty faucet. Water drops fell in a spooky, rhythmic way, like a scary \(scaryTimeSounds). In one corner, there was a red light that blinked on and off, creating weird shadows. It felt like someone was watching me. I got really scared, and just when I thought things couldn't get weirder, the ceiling fan started moving \(fanSpeed) by itself, as if there was a ghost. Then, I heard a whisper in my ear, telling me to go to the \(randomObject). It was as if the room had a secret. Scared but curious, I slowly walked to the \(randomObject). My heart was racing, and I felt like something really scary and bad was about to happen in that room. As I cautiously approached the \(randomObject), the room grew colder, and the eerie atmosphere thickened. My breath formed misty clouds, and I hesitated, looking out into the inky darkness. Suddenly, a pale, ghostly face materialized in the \(randomObject), pressing against the glass with hollow eyes that seemed to pierce into my soul. I saw a ghost with a sign that says \(ghost.name) and \(ghostColorAndSound(ghost: ghost)). Under the name, there was a \(ghostNumber) number and words that were wrinten in red and says... \(ifGhostIsScary(scaryMode: ghostScaryMode))..,. Terrified, I stumbled backward and rushed to the door. But the doorknob wouldn't turn, and I was trapped in the haunting room. The whisper in my ear grew louder, urging me to uncover the room's evil secret. The red light in the corner blinked more rapidly, casting bizarre and elongated shadows that danced around the room. Desperation took hold of me, and I finally approached the sink again. There, I found a hidden latch that opened a hidden door leading deeper into the basement. With shaky hands, I stepped through the doorway and was met with a chilling corridor that seemed to stretch into darkness forever. A chorus of eerie whispers filled the air as I took my first steps into the unknown, the door slamming shut behind me. I blacked out, and after what seemed like an eternity, I woke in the middle of a hallway that led me to the first-floor kitchen. Terrified, I ran to the kitchen to meet my friends.The room in the basement remains a mystery to this day, a place where time stands still, and those who dare to enter are forever lost in its evil depths."
    )
    //    }
    //    myStory()
}
