enum State {
    case WA
    case OR
    case CA
    case NV
    case AZ
    case UT
    case ID
    case MT
    case WY
    case CO
    case NM
    case ND
    case SD
    case NE
    case KS
    case OK
    case TX
    case MN
    case IA
    case MO
    case AR
    case LA
    case WI
    case IL
    case MS
    case MI
    case IN
    case KY
    case TN
    case AL
    case GA
    case FL
    case NC
    case SC
    case OH
    case WV
    case VA
    case PA
    case NY
    case VT
    case NH
    case MA
    case RI
    case CT
    case NJ
    case DE
    case MD
    case DC
    case AK
    case HI
    case ME
}

let electoralVotesByState: [State : Int] = [
    .AK : 3,
    .AL : 9,
    .AR : 6,
    .AZ : 11,
    .CA : 55,
    .CO : 9,
    .CT : 7,
    .DC : 3,
    .DE : 3,
    .FL : 29,
    .GA : 16,
    .HI : 4,
    .IA : 6,
    .ID : 4,
    .IL : 20,
    .IN : 11,
    .KS : 6,
    .KY : 8,
    .LA : 8,
    .MA : 11,
    .MD : 10,
    .MI : 16,
    .MN : 10,
    .MO : 10,
    .MS : 6,
    .MT : 3,
    .ME : 4,
    .NC : 15,
    .ND : 3,
    .NE : 5,
    .NH : 4,
    .NJ : 14,
    .NM : 5,
    .NV : 6,
    .NY : 29,
    .OH : 18,
    .OK : 7,
    .OR : 7,
    .PA : 20,
    .RI : 4,
    .SC : 9,
    .SD : 3,
    .TN : 11,
    .TX : 38,
    .UT : 6,
    .VA : 13,
    .VT : 3,
    .WA : 12,
    .WI : 10,
    .WV : 5,
    .WY : 3
]

enum Candidate {
    case Trump
    case Biden
}

let leadByState: [State : Candidate] = [
    .AK : .Trump,
    .AL : .Trump,
    .AR : .Trump,
    .AZ : .Biden,
    .CA : .Biden,
    .CO : .Biden,
    .CT : .Biden,
    .DC : .Biden,
    .DE : .Biden,
    .FL : .Trump,
    .GA : .Biden,
    .HI : .Biden,
    .IA : .Trump,
    .ID : .Trump,
    .IL : .Biden,
    .IN : .Trump,
    .KS : .Trump,
    .KY : .Trump,
    .LA : .Trump,
    .MA : .Biden,
    .MD : .Biden,
    .MI : .Biden,
    .MN : .Biden,
    .MO : .Trump,
    .MS : .Trump,
    .ME : .Biden,
    .MT : .Trump,
    .NC : .Trump,
    .ND : .Trump,
    .NE : .Trump,
    .NH : .Biden,
    .NJ : .Biden,
    .NM : .Biden,
    .NV : .Biden,
    .NY : .Biden,
    .OH : .Trump,
    .OK : .Trump,
    .OR : .Biden,
    .PA : .Biden,
    .RI : .Biden,
    .SC : .Trump,
    .SD : .Trump,
    .TN : .Trump,
    .TX : .Trump,
    .UT : .Trump,
    .VA : .Biden,
    .VT : .Biden,
    .WA : .Biden,
    .WI : .Biden,
    .WV : .Trump,
    .WY : .Trump
]

// Results if each candidate wins all their leading states

let bidenVotes = leadByState
    .filter{ $0.value == .Biden }
    .reduce(0) { $0 + (electoralVotesByState[$1.key] ?? 0) }

let trumpVotes = leadByState
    .filter{ $0.value == .Trump }
    .reduce(0) { $0 + (electoralVotesByState[$1.key] ?? 0) }
