import UIKit

private class Library {
    
    let adress: String = "st. Pushkin, 86"
    let name: String = "National library of Tatarstan"
    let amountOfReadingRooms: Int
    
    init(amountOfReadingRooms: Int) {
        self.amountOfReadingRooms = amountOfReadingRooms
    }
}
protocol LibraryService {
    
    func isThebookAbleToRent( nameOfBook book: String) -> Bool
    
    func getBookByName( nameOfBook name: String) -> String
    
    func replaceBook( nameOfBook name: String) -> String
    
    func countAbleBooksByName( name book: String) -> Int
    
    func wichBookShouldGiveBack( BookList list: [String]) -> [String]
    
}

protocol LibraryServiceToStuff {
    
    func getRest(nameOfStuff name: String, startTime: String,  endTime: String) -> Bool
    
    func quit(NameOfStuff name: String) -> Bool
 
}

public class ReedingRoom {
    
    var numberOfReadingRoom: Int
    var amountOfReading: Int
    
    init(numberOfReadingRoom: Int, amountOfReading: Int) {
        self.numberOfReadingRoom = numberOfReadingRoom
        self.amountOfReading = amountOfReading
    }
    
    func info() {
        print("In the \(self.numberOfReadingRoom) room \(self.amountOfReading) reeding")
    }
}

 public class LibraryStuf {
    
    let name: String
    let surname: String
    var experience: Int
    
    init(name: String, surname: String,experience: Int) {
        self.name = name
        self.surname = surname
        self.experience = experience
    }

    func work() {
        print("\(self.surname)\(self.name) work for \(self.experience) yers")
    }
    
    func training() {
        self.experience += 1
    }
}
    
class Caretakers: LibraryStuf {
    
    var numberOfReadingRooms: Int = 2
        
    override func work() {
        super.work()
        print("Caretaker \(self.name)\(self.surname) now works in the \(numberOfReadingRooms) reading room ")
    }
    
}
class BossOfLibrary: LibraryStuf {
    
    let post: String = "boss"
    
    override func training() {
        super.training()
        self.experience += 1
        print("bruh \(self.surname)\(self.name) already the \(self.post)")
    }
}

struct LibraryUser {
    
    let name: String
    let age: Int
    var countOfBooksRead: Int
    
    init(name: String, age: Int, countOfBooksRead: Int) {
        self.name = name
        self.age = age
        self.countOfBooksRead = countOfBooksRead
    }
    
    mutating func read() {
        self.countOfBooksRead += 1
    }
}

struct Book {
    
    let genre: String
    let name: String
    let nameOfAuthor: String
    
    init (name: String, genre: String, nameOfAuthor: String) {
        self.name = name
        self.genre = genre
        self.nameOfAuthor = nameOfAuthor
    }
    func info() -> String {
        return "\(name) \(genre) \(nameOfAuthor)"
    }
}

struct LibraryEvent {
    
    let name: String
    let startTime: String
    let endTime: String
    
    init(name: String,startTime: String, endtime: String) {
        self.name = name
        self.startTime = startTime
        self.endTime = endtime
    }
    
    func info() -> String {
        return "Event : \(name) will be from \(startTime) to \(endTime)"
    }
}

enum BookGenre: String {
    
    case Classic, ComicBook, Detective, Fantasy
    
    var label: String{
        
        switch self {
            
            case .Classic: return "Classics"
            
            case .ComicBook: return "ComicBook"
            
            case .Detective: return "Detective"
            
            case .Fantasy: return "Fantacy"
        }
    }
}

enum WorkDays: Int {
     
    case Monday=1, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday
     
    func getCurrentDay() -> String {
         
        return WorkDays.getDay(number: rawValue)
    }
     
    static func getDay(number: Int) -> String {
         
        switch number{
             
        case 1: return "Library works"
            
        case 2: return "Library works"
            
        case 3: return "Library works"
            
        case 4: return "Library works"
            
        case 5: return "Library works"
            
        case 6: return "Library doesn`t work"
            
        case 7: return "Library deosn`t work"
            
        default: return "use the internet mahnnn"
        }
    }
}
