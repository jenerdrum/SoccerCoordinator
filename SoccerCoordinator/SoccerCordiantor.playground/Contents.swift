

//: Playground - noun: a place where people can play
import UIKit

// Constants we will use to create the dictionary keys
let name: String = "name"
let height: String = "height"
let soccerExperience: String = "soccer experience"
let guardians: String = "guardians"

let joeSmith: Dictionary<String, Any> = [
    name: "Joe Smith",
    height: 42,
    soccerExperience: true,
    guardians: "Jim and Jan Smith"
]

let jillTanner: Dictionary<String, Any> = [
    name: "Jill Tanner",
    height: 36,
    soccerExperience: true,
    guardians: "Clara Tanner"
]

let billBon: Dictionary<String, Any> = [
    name: "Bill Bon",
    height: 43,
    soccerExperience: true,
    guardians: "Sara and Jenny Bon"
]

let evaGordon: Dictionary<String, Any> = [
    name: "Eva Gordon",
    height: 45,
    soccerExperience: false,
    guardians: "Wendy and Mike Gordon"
]

let mattGill: Dictionary<String, Any> = [
    name: "Matt Gill",
    height: 40,
    soccerExperience: false,
    guardians: "Charles and Sylvia Gill"
]

let kimmyStein: Dictionary<String, Any> = [
    name: "Kimmy Stein",
    height: 41,
    soccerExperience: false,
    guardians: "Bill and Hillary Stein"
]

let sammyAdams: Dictionary<String, Any> = [
    name: "Sammy Adams",
    height: 45,
    soccerExperience: false,
    guardians: "Jeff Adams"
]

let karlSaygan: Dictionary<String, Any> = [
    name: "Karl Saygan",
    height: 42,
    soccerExperience: true,
    guardians: "Heather Bledsoe"
]

let suzaneGreenbergi: Dictionary<String, Any> = [
    name: "Suzane Greenberg",
    height: 44,
    soccerExperience: true,
    guardians: "Henrietta Dumas"
]

let salDali: Dictionary<String, Any> = [
    name: "Sal Dali",
    height: 41,
    soccerExperience: false,
    guardians: "Gala Dali"
]

let joeKavalier: Dictionary<String, Any> = [
    name: "Joe Kavalier",
    height: 39,
    soccerExperience: false,
    guardians: "Sam and Elaine Kavalier"
]

let benFinkelstein: Dictionary<String, Any> = [
    name: "Ben Finkelstein",
    height: 44,
    soccerExperience: false,
    guardians: "Aaron and Jill Finkelstein"
]

let diegoSoto: Dictionary<String, Any> = [
    name: "Diego Soto",
    height: 41,
    soccerExperience: true,
    guardians: "Robin and Sarika Soto"
]

let chloeAlaska: Dictionary<String, Any> = [
    name: "Chloe Alaska",
    height: 47,
    soccerExperience: false,
    guardians: "David and Jamie Alaska"
]

let arnoldWillis: Dictionary<String, Any> = [
    name: "Arnold Willis",
    height: 43,
    soccerExperience: false,
    guardians: "Claire Willis"
]

let phillipHelm: Dictionary<String, Any> = [
    name: "Phillip Helm",
    height: 44,
    soccerExperience: true,
    guardians: "Thomas Helm and Eva Jones"
]

let lesClay: Dictionary<String, Any> = [
    name: "Les Clay",
    height: 42,
    soccerExperience: true,
    guardians: "Wynonna Brown"
]

let herschelKrustofski: Dictionary<String, Any> = [
    name: "Herschel Krustofski",
    height: 45,
    soccerExperience: true,
    guardians: "Hyman and Rachel Krustofski"
]

let players: [Dictionary<String, Any>] = [
    joeSmith,
    jillTanner,
    billBon,
    evaGordon,
    mattGill,
    kimmyStein,
    sammyAdams,
    karlSaygan,
    suzaneGreenbergi,
    salDali,
    joeKavalier,
    benFinkelstein,
    diegoSoto,
    chloeAlaska,
    arnoldWillis,
    phillipHelm,
    lesClay,
    herschelKrustofski
]

// Separaterating out players into arrays by their experience
var experiencedPlayers: [Dictionary<String, Any>] = []
var inexperiencedPlayers: [Dictionary<String, Any>] = []
for player in players {
    if player[soccerExperience] as! Bool == true {
        experiencedPlayers.append(player)
    } else {
        inexperiencedPlayers.append(player)
    }
}

// Initialize teams
var sharks: [Dictionary<String, Any>] = []
var dragons: [Dictionary<String, Any>] = []
var raptors: [Dictionary<String, Any>] = []

// Seperate out experienced players into even teams
for i in 0..<experiencedPlayers.count {
    let player = experiencedPlayers[i]
    let mod = i % 3
    if mod == 0 {
        sharks.append(player)
    } else if mod == 1 {
        dragons.append(player)
    } else {
        raptors.append(player)
    }
}

// Seperate out inexperienced players into even teams
// Seperate players in backwards order to mitigate the possibility of uneven number of players per team
for i in 0..<inexperiencedPlayers.count {
    let player = inexperiencedPlayers[i]
    let mod = i % 3
    if mod == 0 {
        raptors.append(player)
    } else if mod == 1 {
        dragons.append(player)
    } else {
        sharks.append(player)
    }
}
// This section will print out the letters to the Guardians about team placement
// Print Sharks letters
for player in sharks {
    print("Dear \(player[guardians]!), We are pleased to inform you that your child, \(player[name]!), has been placed on the amazing Sharks team. Our first practice for the Sharks will begin March 17, 3pm.")
}

// Print Dragons letters
for player in dragons {
    print("Dear \(player[guardians]!), We are pleased to inform you that your child, \(player[name]!), has been placed on the amazing Dragons team. Our first practice for the Dragons will begin March 17, 1pm.")
}

// Print Raptors letters
for player in raptors {
    print("Dear \(player[guardians]!), We are pleased to inform you that your child, \(player[name]!), has been placed on the amazing Raptors team. Our first practice for the Raptors will begin March 18, 1pm.")
}
