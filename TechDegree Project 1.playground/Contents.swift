// Individual dictionaries for each player created used the name of the player as a variable to get a full understanding of what was going on and who was involved
var joeSmith: [String: String] = ["Name": "Joe Smith", "Height": "42", "Experience": "true", "Guardians": "Jim and Jan Smith"]
var jillTanner: [String: String] = ["Name": "Jill Tanner", "Height": "36", "Experience": "true", "Guardians": "Clara Tanner"]
var billBon: [String: String] = ["Name": "Bill Bon", "Height": "43", "Experience": "true", "Guardians": "Sara and Jenny Bon"]
var evaGordon: [String: String] = ["Name": "Eva Gordon", "Height": "45", "Experience": "false", "Guardians": "Wendy and Mike Gordon"]
var mattGill: [String: String] = ["Name": "Matt Gill", "Height": "40", "Experience": "false", "Guardians": "Charles and Sylvia Gill"]
var kimmyStein: [String: String] = ["Name": "Kimmy Stein", "height": "41", "Experience": "false", "Guardians": "Bill and Hillary Stein"]
var sammyAdams: [String: String] = ["Name": "Sammy Adams", "Height": "45", "Experience": "false", "Guardians": "Jeff Adams"]
var karlSaygan: [String: String] = ["Name": "Karl Saygan", "Height": "42", "Experience": "true", "Guardians": "Heather Bledose"]
var suzaneGreenberg: [String: String] = ["Name": "Suzane Greenberg", "Height": "44", "Experience": "true", "Guardians": "Henrietta Dumas"]
var salDali: [String: String] = ["Name": "Sal Dali", "Height": "41", "Experience": "false", "Guardians": "Gala Dali"]
var joeKavalier: [String: String] = ["Name": "Joe Kavalier", "Height": "39", "Experience": "false", "Guardians": "Sam and Elaine Kavalier"]
var benFinkelstein: [String: String] = ["Name": "Ben Finkelstein", "Height": "44", "Experience": "false", "Guardians": "Aaron and Jill Finkelstein"]
var diegoSoto: [String: String] = ["Name": "Diego Soto", "Height": "41", "Experience": "true", "Guardians": "Robin and Sarika Soto"]
var chloeAlaska: [String: String] = ["Name": "Chloe Alaska", "Height": "47", "Experience": "false", "Guardians": "David and Jamie Alaska"]
var arnoldWillis: [String: String] = ["Name": "Arnold Willis", "Height": "43", "Experience": "false", "Guardian": "Claire Willis"]
var phillipHelm: [String: String] = ["Name": "Phillip Helm", "Height": "44", "Experience": "true", "Guardians": "Thomas Helm and Eva Jones"]
var lesClay: [String: String] = ["Name": "Les Clay", "Height": "42", "Experience": "true", "Guardians": "Wynomma Brown"]
var herschelKrustofski: [String: String] = ["Name": "Herschel Krustofski", "Height": "45", "Experience": "true", "Guardians": "Hyman and Rachel Krustofski"]

// Dictionary created putting all players together
let players = [joeSmith, jillTanner, billBon, evaGordon, mattGill, kimmyStein, sammyAdams, karlSaygan, suzaneGreenberg, salDali, joeKavalier, benFinkelstein, diegoSoto, chloeAlaska, arnoldWillis, phillipHelm, lesClay, herschelKrustofski]

// Team names dictionary to hold all the players in
var teamSharks = [[String: String]]()
var teamDragons = [[String: String]]()
var teamRaptors = [[String: String]]()

// Experienced to unexperienced dictionaries to store players depending on answer
var experienced = [[String: String]]()
var unExperienced = [[String: String]]()

// Logic needed to seperate between experienced and unexperienced players 
for player in players {
  let experience = player["Experience"]
    if experience == "true" {
        experienced.append(player)
    } else {
        unExperienced.append(player)
    }
}

// Assigning players to a team depending on there experience so that each time will have an even amount of players 
var counter = 0
for (var player) in experienced {
    counter += 1
    var remainder = counter % 3
    switch remainder {
    case 1:
        player["Team"] = "Raptors"
        player["Practice"] = "March 18th, 1pm"
        teamRaptors.append(player)
    case 2:
        player["Team"] = "Sharks"
        player["Practice"] = "March 17th, 3pm"
        teamSharks.append(player)
    case 0:
        player["Team"] = "Dragons"
        player["Practice"] = "March 17th, 1pm"
        teamDragons.append(player)
    default:
        break
    }
}

var counterTwo = 0
for (var unExperienced) in unExperienced {
    counterTwo += 1
    var remainder = counterTwo % 3
    switch remainder {
    case 1:
        unExperienced["Team"] = "Raptors"
        unExperienced["Practice"] = "March 18th, 1pm"
        teamRaptors.append(unExperienced)
    case 2:
        unExperienced["Team"] = "Sharks"
        unExperienced["Player"] = "March 17th, 3pm"
        teamSharks.append(unExperienced)
    case 0:
        unExperienced["Team"] = "Dragons"
        unExperienced["Practice"] = "March 17th, 1pm"
        teamDragons.append(unExperienced)
    default:
        break
    }
}

// Printing of letters to guardians 
func printLetter(player: [String: String]) -> String {
    return "Dear \(player["Guardians"]), \n Your child, \(player["Name"]) has been placed with team \(player["Team"]). \n The first practice session will be held on \(player["Practice"]). \nWelcome to the team and lets go have some fun together!"
}

// Creating logic for each teams letters
var letters: [String] = []

for player in teamSharks {
    letters.append(printLetter(player: player))
}

for player in teamDragons {
    letters.append(printLetter(player: player))
}

for player in teamRaptors {
    letters.append(printLetter(player: player))
}

for letter in letters {
    print(letter)
}













