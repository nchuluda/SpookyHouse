//
//  Chapter3.swift
//  CLIStoryTemplate
//

import Foundation

func chapterThree() {
    struct Witch {
        var name:String
        var age:Int?
    }
    
    let witch = Witch(name: "Rynessess", age: 500)

    
    
    enum Snake: CaseIterable {
        case serpents, cobras, pythons
    }
    
    let randomSnake = Snake.allCases.randomElement()!
    
    func introduction() {
        print("There was a magic room")
        print("I stepped into the room and seen a witch. \(witch.name) was her name and she was \(witch.age!) years old")
        print("And she threw two yellow stones that put me back in time where I am now in the old legend of the snake goddess of bell isle")
        print("Suddenly the witch disappear and the room but her voice is still there and she instructs me to figure out the meaning behind her title ,After everything is settled the scene is now changed and I am now on belle isle at night trying to break and understand the curse of the snake goddess ")
        print("I start By going into the woods and look for the  one rare white doe because the story says that the Chippewa chief had his daughter to be protected from men who wanted to marry his beautiful daughter so the gods turned her into a beautiful white doe but the clue I have to find out is what made her get the title ")
        print("\" snake goddess of bell isle?\" As I go through the dark woods I finally get to a clear landing where everything is peaceful and I see the prettiest white doe and we meet eyes and I bow to show my respect to her when she yells asking why dare I intrude on her island and when she yelled three massive \(randomSnake) that protects her and the island ")
        print("when I meet eyes with the \(randomSnake) I yell quickly that im not here to hurt her I just wanna know how you ended up like this, when she hears my plea she walks up to me and states \"if you really want to know me touch my forehead and look into my past\" so I decide")
    }
    
    func backstory() {
        print("In the chippewa village")
        print("Native American Chief Sleeping Bear had a daughter with beauty of no other, many men wanted to wed his daughter but he kept turning them down")
        print("Eventually he put his daughter on a boat and covered her up so no men would would want to marry her after sometime she")
    }
    
    func ending(){
        print("\"So your father just wanted just wanted to protect you and make sure that u never got hurt but ended up hurting you for eternity that’s so sad, this is the reason why no one wants to come to the island because they fear you but don’t know you.\"")
        print("I kneel down to hug her and say \"no matter what form or shape you take you will always be beautiful\"")
        print("and with that I had not only figured out why she got the title of “snake goddess of bell isle” but also freed her of her curse of immortality and saving her soul and bell isle")
        print("Smoke surrounded me and I was in the empty room which I originally had stepped into and there was nothing so I left and went into the kitchen to see where my friends were")
    }
    
    let consequences = ["the deer Yells at you", "the ground shakes", "\(randomSnake) take you off the island"]
    
    func choices() {
        var correctThing = false
        while correctThing == false{
            print("Touch Forehead? yes or no?")
            let choice = readLine()
            
            if choice == ("yes") {
                backstory()
                stayOrWind()
                boatOrIsland()
                correctThing = true
            }else if choice == "no" {
                for consequence in consequences {
                    print(consequence)
                }
            } else {
                print("Try Again")
            }
        }
        
        func boatOrIsland(){
            print("choice:boat or island?")
            let answer = readLine()
            if answer == "boat"{
                print("he puts his daughter back into the boat and the same thing happens and his daughter ends up getting married")
            }else if answer == "island"{
                print("he takes his daughter to the island and ask the gods to protect her from any danger and  the gods make her immortal and put giants \(randomSnake) on the island to protect her and from that day fort no one has ever came to the island.")
            }
        }
        
        func stayOrWind() {
            var correctChoice = false
            while correctChoice  == false{
                print("stay or wind?")
                let choice2 = readLine()
                
                if choice2 == ("wind") {
                    print("the wind is also very curious to see the girl so it blows off the cover but also sends her down the river where she ends up being took by a man for a while the given back to her father after he gets his daughter back he decides to")
                    correctChoice = true
                }else if choice2 == "stay" {
                    print("she stays there forever")
                } else {
                    print("Try Again make sure you enter only stay or wind")
                }
            }
        }
        
    }
    introduction()
    choices()
    ending()
}

