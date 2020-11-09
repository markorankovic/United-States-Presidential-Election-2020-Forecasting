// Calculates the percentage Biden and Trump would need to win of the remaining votes to be counted in order to equalize.

let state = "Arizona"
let biden_votes = 1631195
let trump_votes = 1612585
let jorgensen_votes = 49406

let bidenLead = biden_votes - trump_votes

let totalCurrentVotes = Int(
    biden_votes + trump_votes + jorgensen_votes
)

let reporting = 0.90

let totalVotes = Int(Double((totalCurrentVotes)) / reporting)

let remainingVotes = totalVotes - totalCurrentVotes
let bidenToEqualize = Int(Double(remainingVotes / 2) - Double(bidenLead))
let trumpToEqualize = Int(Double(remainingVotes / 2) + Double(bidenLead))

let bidenNeeds = Int(((Double(bidenToEqualize) / Double(remainingVotes) * 100).rounded()))
let trumpNeeds = Int(((Double(trumpToEqualize) / Double(remainingVotes) * 100).rounded()))

print("Of the remaining \(state) votes\n\nTo equalize candidates must get:\n\nBiden: \(bidenNeeds)%, Trump: \(trumpNeeds)%.")
