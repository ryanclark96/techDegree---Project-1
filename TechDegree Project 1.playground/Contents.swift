// Individual requirements of all players based on name, height, experience and guardians
let player01: [String: String] = ["Name": "Joe Smith", "Height": "42", "Experience": "Yes", "Guardians": "Jim and Jan Smith"]
let player02: [String: String] = ["Name": "Jill Tanner", "Height": "36", "Experience": "Yes", "Guardians": "Clara Tanner"]
let player03: [String: String] = ["Name": "Bill Bon", "Height": "43", "Experience": "Yes", "Guardians": "Sara and Jenny Bon"]
let player04: [String: String] = ["Name": "Eva Gordon", "Height": "45", "Experience": "No", "Guardians": "Wendy and Mike Gordon"]
let player05: [String: String] = ["Name": "Matt Gill", "Height": "40", "Experience": "No", "Guardians": "Charles and Sylvia Gill"]
let player06: [String: String] = ["Name": "Kimmy Stein", "Height": "41", "Experience": "No", "Guardinas": "Bill and Hillary Stein"]
let player07: [String: String] = ["Name": "Sammy Adams", "Height": "45", "Experience": "No", "Guardinas": "Jeff Adams"]
let player08: [String: String] = ["Name": "Karl Saygan", "Height": "42", "Experience": "Yes", "Guardians": "Heather Bledsoe"]
let player09: [String: String] = ["Name": "Suzane Greenberg", "Height": "44", "Experience": "Yes", "Guardinas": "Henrietta Dumas"]
let player10: [String: String] = ["Name": "Sal Dali", "Height": "41", "Experience": "Yes", "Guardians": "Gala Dali"]
let player11: [String: String] = ["Name": "Joe Kavalier", "Height": "39", "Experience": "No", "Guardians": "Sam and Elaine Kavalier"]
let player12: [String: String] = ["Name": "Ben Finkelstein", "Height": "44", "Experience": "No", "Guardians": "Aaron and Jill Finkelstein"]
let player13: [String: String] = ["Name": "Diego Soto", "Height": "41", "Experience": "Yes", "Guardians": "Robin and Sarika Soto"]
let player14: [String: String] = ["Name": "Chloe Alaska", "Height": "47", "Experience": "No", "Guardians": "David and Jamie Alaska"]
let player15: [String: String] = ["Name": "Arnold Willis", "Height": "43", "Experience": "No", "Guardians": "Claire Willis"]
let player16: [String: String] = ["Name": "Phillip Helm", "Height": "44", "Experience": "Yes", "Guardians": "Thomas Helm and Eva Jones"]
let player17: [String: String] = ["Name": "Les Clay", "Height": "42", "Experience": "Yes", "Guardians": "Wyonna Brown"]
let player18: [String: String] = ["Name": "Herschel Krustofski", "Height": "45", "Experience": "Yes", "Guardians": "Hyman abd Rachel Krustofski"]

// This is the Dictionary created to hold all the players information
var players = [player01, player02, player03, player04, player05, player06, player07, player08, player09, player10, player11, player12, player13, player14, player15, player16, player17, player18]

// Empty dictionaries to hold players of each team
var teamSharks = [[String: String]]()
var teamDragons = [[String: String]]()
var teamRaptors = [[String: String]]()

// Empty dictionaries to sort players out between experience, no experience and average height
var hasExperience = [[String: String]]()
var noExperience = [[String: String]]()
var averageHeight = [[String: String]]()


