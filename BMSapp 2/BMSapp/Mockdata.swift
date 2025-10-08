//
//  Mockdata.swift
//  BMSapp
//
//  Created by Nxtwave on 19/08/25.
//
import Foundation
func generateSeats(rows: [String], seatsperrow: Int) -> [String] {
    var allSeats: [String] = []
    for row in rows{
        for number in 1...seatsperrow{
            allSeats.append("\(row)\(number)")
        }
    }
    return allSeats
}



struct Movie: Identifiable, Hashable {
    let id: UUID = UUID()
    let title: String
    let genre: String
    let rating: Double
    let votes: String
    let posterImageName: String
    let duration: String
    let languages: [String]
    let releaseDate: String
    let description: String
    var formats: [String]
    let tags: [String]
    let showTimes: [String]
    var seats: [String]
    let theaterNames: [String]
}
struct BookingSelection: Identifiable, Equatable {
    let date: String
    let showTime: String
    var id: String { date + showTime }
}




let mockMovies: [Movie] = [
    Movie(
        title: "OG (Ojas Gambeera)",
        genre: "Action/Thriller/Drama",
        rating: 8.4,
        votes: "200.3K Votes",
        posterImageName: "og",
        duration: "2h 45m",
        languages: ["Telugu", "Hindi", "Tamil", "Malayalam"],
        releaseDate: "27 Sep, 2024",
        description: "A high-octane gangster drama starring Pawan Kalyan, showcasing his rise in the underworld and the intense battles that follow.",
        formats: ["2D", "IMAX 2D", "4DX", "Dolby Atmos"],
        tags: ["Gangster", "Blockbuster", "MassAction"],
        showTimes: ["9:30 AM", "1:00 PM", "5:00 PM", "9:00 PM"],
        seats: generateSeats(rows: ["A","B","C","D","E"], seatsperrow: 6),
        theaterNames: [
            "PVR Cinemas, Hyderabad",
            "AMB Cinemas, Hyderabad",
            "Prasads IMAX, Hyderabad",
            "Asian GPR Multiplex, Hyderabad",
            "Cinepolis Manjeera Mall, Hyderabad",
            "INOX Banjara Hills, Hyderabad",
            "AAA Cinemas, Hyderabad",
            "Sensation Insomnia, Hyderabad",
            "PVR Icon Hitech City, Hyderabad",
            "Miraj Cinemas Kukatpally, Hyderabad"
        ]
    ),
    Movie(
        title: "War 2",
        genre: "Action/Thriller",
        rating: 8.0,
        votes: "121.9K Votes",
        posterImageName: "war2",
        duration: "2h 53m",
        languages: ["Hindi", "Telugu"],
        releaseDate: "14 Aug, 2025",
        description: "Years ago Agent Kabir went rogue. Became India's greatest villain ever. But this time, as he descends...",
        formats: ["2D", "ICE", "IMAX 2D", "4DX", "DOLBY CINEMA 2D"],
        tags: ["Blockbuster", "GreatActing", "SuperbDirection"],
        showTimes: ["10:00 AM", "1:30 PM", "9:45 PM"],
        seats: generateSeats(rows: ["A","B","C","D","E"], seatsperrow: 6),
        theaterNames: [
            "INOX, Hyderabad",
            "PVR Cinemas, Hyderabad",
            "Cinepolis, Hyderabad",
            "Asian Satyam, Hyderabad",
            "AMB Cinemas Gachibowli, Hyderabad",
            "Sudarshan 35MM, Hyderabad",
            "Miraj Cinemas Uppal, Hyderabad",
            "PVR Forum Mall, Hyderabad",
            "INOX GVK Mall, Hyderabad",
            "Prasads IMAX, Hyderabad"
        ]
    ),
    Movie(
        title: "Coolie",
        genre: "Action/Thriller",
        rating: 7.7,
        votes: "172.8K Votes",
        posterImageName: "Coolie",
        duration: "2h 20m",
        languages: ["Hindi", "Tamil"],
        releaseDate: "10 July, 2023",
        description: "Three different men with drastically different lifestyles, characters, and ambitions become entwined by fate.",
        formats: ["2D", "IMAX 2D"],
        tags: ["Thrilling", "ActionPacked", "MustWatch"],
        showTimes: ["11:00 AM", "2:45 PM", "7:15 PM"],
        seats: generateSeats(rows: ["A","B","C","D","E"], seatsperrow: 6),
        theaterNames: [
            "AMB, Hyderabad",
            "Asian Cinemas, Hyderabad",
            "Sudarshan 35MM, Hyderabad",
            "INOX Maheshwari Parmeshwari, Hyderabad",
            "PVR Kukatpally, Hyderabad",
            "AAA Cinemas, Hyderabad",
            "Asian M Cube Mall, Hyderabad",
            "Cinepolis Manjeera Mall, Hyderabad",
            "PVR Icon Hitech City, Hyderabad",
            "INOX Miyapur, Hyderabad"
        ]
    ),
    Movie(
        title: "Mahavatar Narsimha",
        genre: "Action/Animation/Drama",
        rating: 9.6,
        votes: "258.6K Votes",
        posterImageName: "MN",
        duration: "2h 45m",
        languages: ["Kannada", "Telugu", "Hindi"],
        releaseDate: "5 June, 2024",
        description: "A mythical story unfolded with action and emotion, showcasing the warrior spirit of Narsimha.",
        formats: ["2D", "Dolby Atmos"],
        tags: ["Epic", "Animation", "Drama"],
        showTimes: ["9:00 AM", "12:30 PM", "4:30 PM", "8:30 PM"],
        seats: generateSeats(rows: ["A","B","C","D","E"], seatsperrow: 6),
        theaterNames: [
            "PVR Inorbit, Hyderabad",
            "INOX GVK Mall, Hyderabad",
            "Asian M Cube Mall, Hyderabad",
            "AMB Cinemas, Hyderabad",
            "Prasads IMAX, Hyderabad",
            "Cinepolis Manjeera Mall, Hyderabad",
            "Asian GPR Multiplex, Hyderabad",
            "Sensation Insomnia, Hyderabad",
            "INOX Banjara Hills, Hyderabad",
            "PVR Icon Hitech City, Hyderabad"
        ]
    ),
    Movie(
        title: "KGF Chapter 2",
        genre: "Action/Thriller",
        rating: 8.2,
        votes: "161.5K Votes",
        posterImageName: "kgf2",
        duration: "2h 50m",
        languages: ["Kannada", "Hindi", "Telugu"],
        releaseDate: "16 April, 2022",
        description: "The journey of Rocky continues as he fights his way to rule the gold mines and face new enemies.",
        formats: ["2D", "IMAX 2D", "4DX"],
        tags: ["Blockbuster", "Intense", "Action"],
        showTimes: ["10:15 AM", "3:00 PM", "7:00 PM", "10:30 PM"],
        seats: generateSeats(rows: ["A","B","C","D","E"], seatsperrow: 6),
        theaterNames: [
            "Prasad Imax, Hyderabad",
            "PVR Forum Mall, Hyderabad",
            "INOX Maheshwari Parmeshwari, Hyderabad",
            "Cinepolis Manjeera Mall, Hyderabad",
            "AMB Cinemas, Hyderabad",
            "INOX Miyapur, Hyderabad",
            "Asian GPR Multiplex, Hyderabad",
            "PVR Kukatpally, Hyderabad",
            "Sensation Insomnia, Hyderabad",
            "Miraj Cinemas Uppal, Hyderabad"
        ]
    ),
    Movie(
        title: "F1",
        genre: "Action/Drama",
        rating: 7.5,
        votes: "89.3K Votes",
        posterImageName: "f1",
        duration: "2h 30m",
        languages: ["Hindi", "English"],
        releaseDate: "15 May, 2023",
        description: "A gripping drama revolving around the high-stakes world of Formula 1 racing and fierce rivalries.",
        formats: ["2D", "Dolby Cinema"],
        tags: ["Thrilling", "Sports", "Drama"],
        showTimes: ["12:00 PM", "4:00 PM", "8:00 PM"],
        seats: generateSeats(rows: ["A","B","C","D","E"], seatsperrow: 6),
        theaterNames: [
            "AAA, Hyderabad",
            "PVR Kukatpally, Hyderabad",
            "INOX Miyapur, Hyderabad",
            "Asian M Cube Mall, Hyderabad",
            "PVR Inorbit, Hyderabad",
            "AMB Cinemas, Hyderabad",
            "Prasads IMAX, Hyderabad",
            "Cinepolis Manjeera Mall, Hyderabad",
            "INOX GVK Mall, Hyderabad",
            "PVR Icon Hitech City, Hyderabad"
        ]
    )
]



//struct Movie:Identifiable,Hashable {
//    let id: UUID = UUID()
//    let title: String
//    let genre: String
//    let rating: Double
//    let votes: String
//    let posterImageName: String
//    let duration: String
//    let languages: [String]
//    let releaseDate: String
//    let description: String
//    var formats: [String]
//    let tags: [String]
//}
//
//let mockMovies: [Movie] = [
//    Movie(
//        title: "War 2",
//        genre: "Action/Thriller",
//        rating: 8.0,
//        votes: "121.9K Votes",
//        posterImageName: "war2",
//        duration: "2h 53m",
//        languages: ["Hindi", "Telugu"],
//        releaseDate: "14 Aug, 2025",
//        description: "Years ago Agent Kabir went rogue. Became India's greatest villain ever. But this time, as he descends...",
//        formats: ["2D", "ICE", "IMAX 2D", "4DX", "DOLBY CINEMA 2D"],
//        tags: ["Blockbuster", "GreatActing", "SuperbDirection"]
//    ),
//    Movie(
//        title: "Coolie",
//        genre: "Action/Thriller",
//        rating: 7.7,
//        votes: "172.8K Votes",
//        posterImageName: "Coolie",
//        duration: "2h 20m",
//        languages: ["Hindi", "Tamil"],
//        releaseDate: "10 July, 2023",
//        description: "Three different men with drastically different lifestyles, characters, and ambitions become entwined by fate.",
//        formats: ["2D", "IMAX 2D"],
//        tags: ["Thrilling", "ActionPacked", "MustWatch"]
//    ),
//    Movie(
//        title: "Mahavatar Narsimha",
//        genre: "Action/Animation/Drama",
//        rating: 9.6,
//        votes: "258.6K Votes",
//        posterImageName: "MN",
//        duration: "2h 45m",
//        languages: ["Kannada", "Telugu", "Hindi"],
//        releaseDate: "5 June, 2024",
//        description: "A mythical story unfolded with action and emotion, showcasing the warrior spirit of Narsimha.",
//        formats: ["2D", "Dolby Atmos"],
//        tags: ["Epic", "Animation", "Drama"]
//    ),
//    Movie(
//        title: "KGF Chapter 2",
//        genre: "Action/Thriller",
//        rating: 8.2,
//        votes: "161.5K Votes",
//        posterImageName: "kgf2",
//        duration: "2h 50m",
//        languages: ["Kannada", "Hindi", "Telugu"],
//        releaseDate: "16 April, 2022",
//        description: "The journey of Rocky continues as he fights his way to rule the gold mines and face new enemies.",
//        formats: ["2D", "IMAX 2D", "4DX"],
//        tags: ["Blockbuster", "Intense", "Action"]
//    ),
//    Movie(
//        title: "F1",
//        genre: "Action/Drama",
//        rating: 7.5,
//        votes: "89.3K Votes",
//        posterImageName: "f1",
//        duration: "2h 30m",
//        languages: ["Hindi", "English"],
//        releaseDate: "15 May, 2023",
//        description: "A gripping drama revolving around the high-stakes world of Formula 1 racing and fierce rivalries.",
//        formats: ["2D", "Dolby Cinema"],
//        tags: ["Thrilling", "Sports", "Drama"]
//    )
//]
