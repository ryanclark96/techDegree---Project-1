// Individual dictionaries for each player created used the name of the player as a variable to get a full understanding of what was going on and who was involved
var player1: [String: String] = ["Name": "Joe Smith", "Height": "42", "Experience": "true", "Guardians": "Jim and Jan Smith"]
var player2: [String: String] = ["Name": "Jill Tanner", "Height": "36", "Experience": "true", "Guardians": "Clara Tanner"]
var player3: [String: String] = ["Name": "Bill Bon", "Height": "43", "Experience": "true", "Guardians": "Sara and Jenny Bon"]
var player4: [String: String] = ["Name": "Eva Gordon", "Height": "45", "Experience": "false", "Guardians": "Wendy and Mike Gordon"]
var player5: [String: String] = ["Name": "Matt Gill", "Height": "40", "Experience": "false", "Guardians": "Charles and Sylvia Gill"]
var player6: [String: String] = ["Name": "Kimmy Stein", "height": "41", "Experience": "false", "Guardians": "Bill and Hillary Stein"]
var player7: [String: String] = ["Name": "Sammy Adams", "Height": "45", "Experience": "false", "Guardians": "Jeff Adams"]
var player8: [String: String] = ["Name": "Karl Saygan", "Height": "42", "Experience": "true", "Guardians": "Heather Bledose"]
var player9: [String: String] = ["Name": "Suzane Greenberg", "Height": "44", "Experience": "true", "Guardians": "Henrietta Dumas"]
var player10: [String: String] = ["Name": "Sal Dali", "Height": "41", "Experience": "false", "Guardians": "Gala Dali"]
var player11: [String: String] = ["Name": "Joe Kavalier", "Height": "39", "Experience": "false", "Guardians": "Sam and Elaine Kavalier"]
var player12: [String: String] = ["Name": "Ben Finkelstein", "Height": "44", "Experience": "false", "Guardians": "Aaron and Jill Finkelstein"]
var player13: [String: String] = ["Name": "Diego Soto", "Height": "41", "Experience": "true", "Guardians": "Robin and Sarika Soto"]
var player14: [String: String] = ["Name": "Chloe Alaska", "Height": "47", "Experience": "false", "Guardians": "David and Jamie Alaska"]
var player15: [String: String] = ["Name": "Arnold Willis", "Height": "43", "Experience": "false", "Guardians": "Claire Willis"]
var player16: [String: String] = ["Name": "Phillip Helm", "Height": "44", "Experience": "true", "Guardians": "Thomas Helm and Eva Jones"]
var player17: [String: String] = ["Name": "Les Clay", "Height": "42", "Experience": "true", "Guardians": "Wynomma Brown"]
var player18: [String: String] = ["Name": "Herschel Krustofski", "Height": "45", "Experience": "true", "Guardians": "Hyman and Rachel Krustofski"]

// Dictionary created putting all players together
var players = [player1, player2, player3, player4, player5, player6, player7, player8, player9, player10, player11, player12, player13, player14, player15, player16, player17, player18]

// Team names dictionary to hold all the players in
var teamSharks: [[String: String]] = []
var teamDragons: [[String: String]] = []
var teamRaptors: [[String: String]] = []

// Collection to hold teams 
let teams = [teamSharks, teamDragons, teamRaptors]

// Experienced to unexperienced dictionaries to store players depending on answer
var experienced: [[String: String]] = []
var unExperienced: [[String: String]] = []

// Logic needed to seperate between experienced and unexperienced players 
for player in players {
    for (key,value) in player {
        if (value == "true") {
            experienced.append(player)
        } else if (value == "false") {
            unExperienced.append(player)
        }
    }
}

// Assigning players to a team depending on there experience so that each time will have an even amount of players and giving first practice session
var experienceCounter = 0
for (var player) in experienced {
    experienceCounter += 1
    
    var remainder = experienceCounter % 3
    
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

var unexperiencedCounter = 0
for (var player) in unExperienced {
    unexperiencedCounter += 1
    
    var remainder = unexperiencedCounter % 3
    
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

// Printing of letters to guardians 
func printLetter(player: [String: String]) -> String {
   return "Dear \(player["Guardians"]!), Your child \(player["Name"]!) has been choosen for \(player["Team"]!). The first trainning session will be held on \(player["Practice"]!) we look forward to seeing you there and hope you will have a great season with the team."
}

var letters: [String] = []

//Creating seperate groups of letters for each team
for player in teamRaptors {
    letters.append(printLetter(player: player))
}

for player in teamSharks {
    letters.append(printLetter(player: player))
}

for player in teamDragons {
    letters.append(printLetter(player: player))
}

// Print letter for each player
for letter in letters {
    print(letter)
}










