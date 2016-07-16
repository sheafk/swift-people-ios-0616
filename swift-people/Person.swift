//
//  Person.swift
//  swift-people
//
//  Created by Shea Furey-King on 7/15/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Person {
    let name: String
    private(set) var ageInYears: Int?
    private(set) var skills: [String] = [] //I used an array to hold the skills, but a set would have been a cleaner way to do this. A set does not allow duplicates and would have cut out the step of checking to see if the skill was already in the array.
    var qualifiedTutor: Bool{ return skills.count >= 4 }

    //designated initializer
    init(name: String, ageInYears: Int?) {
        
        self.name = name
        self.ageInYears = ageInYears
    }
    
    //convenience initializer
    convenience init(name: String) {
        self.init(name: name, ageInYears:nil)
    }
    
    //default initializer
    convenience init() {
        self.init(name: "John Doe")
    }

    func celebrateBirthday() -> String {
        if var ageInYears = self.ageInYears {
            ageInYears += 1
            self.ageInYears = ageInYears
            let ordinal = ageInYears.ordinal()
            return "HAPPY \(ageInYears) \(ordinal.uppercaseString) BIRTHDAY, \(name.uppercaseString)!!!"
        } else {
            return "HAPPY BIRTHDAY, \(name.uppercaseString)!!!"
        }
}
    func learnSkillBash()	{
        if !self.skills.contains("bash") {
           self.skills.append("bash")
            print("Now knows bash!")
        } else {
            print("\(name) already knows bash!")
        }
    }
    
    func learnSkillXcode() {
        if !self.skills.contains("Xcode") {
            self.skills.append("Xcode")
            print("Now knows Xcode")
        } else {
            print("\(name) already knows Xcode")
        }
    }
    
    func learnSkillObjectiveC()	{
        if !self.skills.contains("Objective-C") {
            self.skills.append("Objective-C")
        } else {
            print("\(name) already knows Objective-C!")
        }
    }
    
    func learnSkillSwift()	{
        if !self.skills.contains("Swift"){
            self.skills.append("Swift")
        } else {
            print("\(name) already knows Swift!")
        }
    }
    
    func learnSkillInterfaceBuilder(){
        if !self.skills.contains("Interface Builder") {
            self.skills.append("Interface Builder")
        } else {
        print("\(name) already knows Interface Builder")
    }
    }
    }
