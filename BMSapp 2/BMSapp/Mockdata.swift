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


//
//struct Movie: Identifiable, Hashable {
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
//    let showTimes: [String]
//    var seats: [String]
//    let theaterNames: [String]
//}
//struct BookingSelection: Identifiable, Equatable {
//    let date: String
//    let showTime: String
//    var id: String { date + showTime }
//}

struct LiveEvent: Identifiable, Hashable {
    let id: UUID = UUID()
    let title: String
    let category: String       // e.g., Music, Comedy, Sports, Theatre
    let rating: Double
    let votes: String
    let posterImageName: String
    let date: String           // e.g., "12 Oct, 2025"
    let time: String           // e.g., "7:30 PM"
    let venue: String
    let city: String
    let priceRange: String     // e.g., "₹499 – ₹3,999"
    let description: String
    var seats: [String]
}



let mockLiveEvents: [LiveEvent] = [
    // 🎵 Music Concerts
    LiveEvent(
        title: "Arijit Singh Live in Concert",
        category: "Music Concert",
        rating: 9.5,
        votes: "52.3K Votes",
        posterImageName: "arijit_live",
        date: "20 Oct, 2025",
        time: "7:30 PM",
        venue: "Gachibowli Indoor Stadium",
        city: "Hyderabad",
        priceRange: "₹999 – ₹5,499",
        description: "An unforgettable night with Arijit Singh performing his greatest hits live with a full band and stunning light effects.",
        seats: generateSeats(rows: ["A","B","C","D","E","F","G","H"], seatsperrow: 12)
    ),
    LiveEvent(
        title: "Sunburn Reload Hyderabad",
        category: "Music Festival",
        rating: 9.3,
        votes: "44.6K Votes",
        posterImageName: "sunburn_hyd",
        date: "25 Dec, 2025",
        time: "5:00 PM",
        venue: "Hitex Exhibition Center",
        city: "Hyderabad",
        priceRange: "₹1,299 – ₹7,999",
        description: "Asia’s biggest EDM festival Sunburn brings a night full of beats, lights, and electrifying performances by international DJs.",
        seats: generateSeats(rows: ["VIP","A","B","C","D","E","F"], seatsperrow: 15)
    ),
    LiveEvent(
        title: "Sid Sriram – Heartstrings Tour",
        category: "Music Concert",
        rating: 9.6,
        votes: "39.8K Votes",
        posterImageName: "sid_sriram_live",
        date: "15 Nov, 2025",
        time: "7:00 PM",
        venue: "Shilpakala Vedika",
        city: "Hyderabad",
        priceRange: "₹799 – ₹3,999",
        description: "Experience the soulful voice of Sid Sriram live, singing your favorite Telugu and Tamil chartbusters.",
        seats: generateSeats(rows: ["A","B","C","D","E","F","G"], seatsperrow: 12)
    ),
    LiveEvent(
        title: "AP Dhillon – Out of This World Tour",
        category: "Music Concert",
        rating: 9.4,
        votes: "30.5K Votes",
        posterImageName: "ap_dhillon_live",
        date: "28 Nov, 2025",
        time: "8:00 PM",
        venue: "GMR Arena",
        city: "Hyderabad",
        priceRange: "₹1,499 – ₹6,499",
        description: "Groove to AP Dhillon’s biggest hits like ‘Brown Munde’ and ‘Excuses’ at this electrifying Punjabi-English fusion concert.",
        seats: generateSeats(rows: ["VIP","A","B","C","D","E"], seatsperrow: 18)
    ),

    // 😂 Comedy Shows
    LiveEvent(
        title: "Vir Das – Mind Fool Tour",
        category: "Comedy Show",
        rating: 9.0,
        votes: "28.1K Votes",
        posterImageName: "virdas_show",
        date: "18 Oct, 2025",
        time: "8:00 PM",
        venue: "Shilpakala Vedika",
        city: "Hyderabad",
        priceRange: "₹599 – ₹2,499",
        description: "India’s top stand-up comedian Vir Das brings his latest comedy tour ‘Mind Fool’ packed with laughter, wit, and surprises.",
        seats: generateSeats(rows: ["A","B","C","D","E","F"], seatsperrow: 10)
    ),
    LiveEvent(
        title: "Zakir Khan – Mann Pasand Tour",
        category: "Comedy Show",
        rating: 9.2,
        votes: "41.2K Votes",
        posterImageName: "zakir_khan_show",
        date: "22 Oct, 2025",
        time: "8:30 PM",
        venue: "Ravindra Bharathi Auditorium",
        city: "Hyderabad",
        priceRange: "₹799 – ₹3,499",
        description: "Zakir Khan returns with his signature relatable humor and storytelling that will leave you in splits.",
        seats: generateSeats(rows: ["A","B","C","D","E","F","G"], seatsperrow: 12)
    ),
    LiveEvent(
        title: "Anubhav Singh Bassi – Bas Kar Bassi",
        category: "Comedy Show",
        rating: 9.1,
        votes: "26.7K Votes",
        posterImageName: "bassi_show",
        date: "30 Oct, 2025",
        time: "7:30 PM",
        venue: "Shilpakala Vedika",
        city: "Hyderabad",
        priceRange: "₹599 – ₹2,299",
        description: "Bassi brings his hilarious tales from college, friendships, and life with his unique storytelling style.",
        seats: generateSeats(rows: ["A","B","C","D","E","F"], seatsperrow: 10)
    ),

    // ⚽ Sports
    LiveEvent(
        title: "India vs Australia – T20 Match",
        category: "Sports",
        rating: 9.8,
        votes: "1.2M Votes",
        posterImageName: "ind_aus_t20",
        date: "5 Nov, 2025",
        time: "7:00 PM",
        venue: "Rajiv Gandhi International Stadium",
        city: "Hyderabad",
        priceRange: "₹499 – ₹12,999",
        description: "Catch all the cricket action live under the floodlights as India faces Australia in this thrilling T20 clash.",
        seats: generateSeats(rows: ["VIP","P","Q","R","S","T","U","V","W"], seatsperrow: 20)
    ),
    LiveEvent(
        title: "Hyderabad FC vs Bengaluru FC – ISL Match",
        category: "Sports",
        rating: 9.4,
        votes: "65.3K Votes",
        posterImageName: "isl_hfc_bfc",
        date: "12 Dec, 2025",
        time: "7:30 PM",
        venue: "GMC Balayogi Stadium",
        city: "Hyderabad",
        priceRange: "₹399 – ₹4,999",
        description: "Cheer for Hyderabad FC as they battle Bengaluru FC in this action-packed Indian Super League football match.",
        seats: generateSeats(rows: ["VIP","P","Q","R","S","T","U","V"], seatsperrow: 18)
    ),
    LiveEvent(
        title: "Hyderabad Marathon 2025",
        category: "Sports",
        rating: 9.7,
        votes: "32.1K Votes",
        posterImageName: "hyd_marathon",
        date: "8 Dec, 2025",
        time: "6:00 AM",
        venue: "Necklace Road",
        city: "Hyderabad",
        priceRange: "₹299 – ₹1,499",
        description: "Join thousands of runners in the annual Hyderabad Marathon across scenic city routes and test your endurance.",
        seats: generateSeats(rows: ["A","B","C","D","E","F"], seatsperrow: 15)
    ),

    // 🎉 Festivals
    LiveEvent(
        title: "Comic Con Hyderabad 2025",
        category: "Festival",
        rating: 9.6,
        votes: "54.2K Votes",
        posterImageName: "comiccon_hyd",
        date: "21 Nov, 2025",
        time: "10:00 AM",
        venue: "Hitex Exhibition Center",
        city: "Hyderabad",
        priceRange: "₹499 – ₹2,999",
        description: "Hyderabad’s biggest pop-culture celebration featuring comics, cosplay competitions, fan meet-ups, and merchandise.",
        seats: generateSeats(rows: ["VIP","A","B","C","D","E"], seatsperrow: 25)
    ),
    LiveEvent(
        title: "Oktoberfest Hyderabad",
        category: "Festival",
        rating: 9.3,
        votes: "23.5K Votes",
        posterImageName: "oktoberfest_hyd",
        date: "17 Oct, 2025",
        time: "4:00 PM",
        venue: "Taj Krishna Lawns",
        city: "Hyderabad",
        priceRange: "₹899 – ₹3,499",
        description: "Celebrate the German beer festival with live music, authentic Bavarian food, and unlimited fun.",
        seats: generateSeats(rows: ["VIP","A","B","C","D"], seatsperrow: 12)
    )
]















//let mockMovies: [Movie] = [
//    Movie(
//        title: "OG (Ojas Gambeera)",
//        genre: "Action/Thriller/Drama",
//        rating: 8.4,
//        votes: "200.3K Votes",
//        posterImageName: "og",
//        duration: "2h 45m",
//        languages: ["Telugu", "Hindi", "Tamil", "Malayalam"],
//        releaseDate: "27 Sep, 2024",
//        description: "A high-octane gangster drama starring Pawan Kalyan, showcasing his rise in the underworld and the intense battles that follow.",
//        formats: ["2D", "IMAX 2D", "4DX", "Dolby Atmos"],
//        tags: ["Gangster", "Blockbuster", "MassAction"],
//        showTimes: ["9:30 AM", "1:00 PM", "5:00 PM", "9:00 PM"],
//        seats: generateSeats(rows: ["A","B","C","D","E"], seatsperrow: 6),
//        theaterNames: [
//            "PVR Cinemas, Hyderabad",
//            "AMB Cinemas, Hyderabad",
//            "Prasads IMAX, Hyderabad",
//            "Asian GPR Multiplex, Hyderabad",
//            "Cinepolis Manjeera Mall, Hyderabad",
//            "INOX Banjara Hills, Hyderabad",
//            "AAA Cinemas, Hyderabad",
//            "Sensation Insomnia, Hyderabad",
//            "PVR Icon Hitech City, Hyderabad",
//            "Miraj Cinemas Kukatpally, Hyderabad"
//        ]
//    ),
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
//        tags: ["Blockbuster", "GreatActing", "SuperbDirection"],
//        showTimes: ["10:00 AM", "1:30 PM", "9:45 PM"],
//        seats: generateSeats(rows: ["A","B","C","D","E"], seatsperrow: 6),
//        theaterNames: [
//            "INOX, Hyderabad",
//            "PVR Cinemas, Hyderabad",
//            "Cinepolis, Hyderabad",
//            "Asian Satyam, Hyderabad",
//            "AMB Cinemas Gachibowli, Hyderabad",
//            "Sudarshan 35MM, Hyderabad",
//            "Miraj Cinemas Uppal, Hyderabad",
//            "PVR Forum Mall, Hyderabad",
//            "INOX GVK Mall, Hyderabad",
//            "Prasads IMAX, Hyderabad"
//        ]
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
//        tags: ["Thrilling", "ActionPacked", "MustWatch"],
//        showTimes: ["11:00 AM", "2:45 PM", "7:15 PM"],
//        seats: generateSeats(rows: ["A","B","C","D","E"], seatsperrow: 6),
//        theaterNames: [
//            "AMB, Hyderabad",
//            "Asian Cinemas, Hyderabad",
//            "Sudarshan 35MM, Hyderabad",
//            "INOX Maheshwari Parmeshwari, Hyderabad",
//            "PVR Kukatpally, Hyderabad",
//            "AAA Cinemas, Hyderabad",
//            "Asian M Cube Mall, Hyderabad",
//            "Cinepolis Manjeera Mall, Hyderabad",
//            "PVR Icon Hitech City, Hyderabad",
//            "INOX Miyapur, Hyderabad"
//        ]
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
//        tags: ["Epic", "Animation", "Drama"],
//        showTimes: ["9:00 AM", "12:30 PM", "4:30 PM", "8:30 PM"],
//        seats: generateSeats(rows: ["A","B","C","D","E"], seatsperrow: 6),
//        theaterNames: [
//            "PVR Inorbit, Hyderabad",
//            "INOX GVK Mall, Hyderabad",
//            "Asian M Cube Mall, Hyderabad",
//            "AMB Cinemas, Hyderabad",
//            "Prasads IMAX, Hyderabad",
//            "Cinepolis Manjeera Mall, Hyderabad",
//            "Asian GPR Multiplex, Hyderabad",
//            "Sensation Insomnia, Hyderabad",
//            "INOX Banjara Hills, Hyderabad",
//            "PVR Icon Hitech City, Hyderabad"
//        ]
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
//        tags: ["Blockbuster", "Intense", "Action"],
//        showTimes: ["10:15 AM", "3:00 PM", "7:00 PM", "10:30 PM"],
//        seats: generateSeats(rows: ["A","B","C","D","E"], seatsperrow: 6),
//        theaterNames: [
//            "Prasad Imax, Hyderabad",
//            "PVR Forum Mall, Hyderabad",
//            "INOX Maheshwari Parmeshwari, Hyderabad",
//            "Cinepolis Manjeera Mall, Hyderabad",
//            "AMB Cinemas, Hyderabad",
//            "INOX Miyapur, Hyderabad",
//            "Asian GPR Multiplex, Hyderabad",
//            "PVR Kukatpally, Hyderabad",
//            "Sensation Insomnia, Hyderabad",
//            "Miraj Cinemas Uppal, Hyderabad"
//        ]
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
//        tags: ["Thrilling", "Sports", "Drama"],
//        showTimes: ["12:00 PM", "4:00 PM", "8:00 PM"],
//        seats: generateSeats(rows: ["A","B","C","D","E"], seatsperrow: 6),
//        theaterNames: [
//            "AAA, Hyderabad",
//            "PVR Kukatpally, Hyderabad",
//            "INOX Miyapur, Hyderabad",
//            "Asian M Cube Mall, Hyderabad",
//            "PVR Inorbit, Hyderabad",
//            "AMB Cinemas, Hyderabad",
//            "Prasads IMAX, Hyderabad",
//            "Cinepolis Manjeera Mall, Hyderabad",
//            "INOX GVK Mall, Hyderabad",
//            "PVR Icon Hitech City, Hyderabad"
//        ]
//    )
//]
