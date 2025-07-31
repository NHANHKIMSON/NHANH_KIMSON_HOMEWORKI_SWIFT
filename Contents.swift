import Foundation

 //1. Array Operations
var shoppingList: [String] = ["Banana", "Orange", "Apple", "Blueberries"]   // declare an array
shoppingList.append(contentsOf: ["Kiwi", "Cherry", "Coca"])   // add 3 items to an array
print("Total of items in shopping list: \(shoppingList.count)")   // print number of items
shoppingList.removeFirst()   // delete the first item
shoppingList[2] = "MILK"
for item in shoppingList {   // loop data from an array
    print("Item:" ,item)
}


// 2. Dictionary
var movieRatingList : [String: Int] = [
    "The Dark Knight": 9,
    "The Godfather": 5,
    "Inception": 2,
    "The Lion King": 8
]
movieRatingList["The Shawshank Redemption"] = 5
movieRatingList["The Silence of the Lambs"] = 7
      
for (title, rating) in movieRatingList {
    if title == "The Lion King" {
        print("Movie: \(title), Rating: \(rating)")
        break
    }
}

movieRatingList.removeValue(forKey: "Inception")

if movieRatingList.contains(where: { $0.key == "The Dark Knight" }) {
    print("Item found: The Dark Knight \(movieRatingList["The Dark Knight"]!) ")
}else {
    print("Item not found!")
}


// part II Cocoa types
var today = NSDate()
//print("today is:", today)
let formater = DateFormatter()
formater.dateFormat = "MMMM dd, yyyy"
formater.locale = Locale(identifier: "en_US_POSIX")
formater.timeZone = TimeZone(identifier: "Asia/Phnom_Penh")
print("Today is:", formater.string(from: today as Date))

// find next month
let calendar = NSCalendar.current
if let nextMonth = calendar.date(byAdding: .month, value: 1, to: Date()){
    print("next month is:", formater.string(from: nextMonth))
}


// 4 URL object
var urlString = NSURL(string: "https://www.example.com")  // create object
var domain = urlString?.host
print("Domain:", domain ?? "Not found")
let addEndpoint = urlString?.appendingPathComponent("/about")?.absoluteString
print("Domain after adding /about:", addEndpoint ?? "Not found")


//Part3
//5. Set and Cocoa collection:
var favoriteGenres: Set<String> = ["Action", "Adventure", "Animation"]
favoriteGenres.insert("Comedy")
// check if have item
let findFavorite = "Adventure"
if favoriteGenres.contains(findFavorite) {
    print("\(findFavorite) is in the set")
}else{
    print("\(findFavorite) is not found in the set!")
}

var favoriteGenresArray: [String] = Array(favoriteGenres)
//print(favoriteGenres)
print("favoriteGenresArray:", favoriteGenresArray)

// 6. Date mulpulatoin
//- get current date to formart MM/dd/yyyy
var currentDate = NSDate()
var dateFormarter: DateFormatter = DateFormatter()
dateFormarter.dateFormat = "MM/dd/yyyy"
print("current date with new MM/dd/yyyy formart:", dateFormarter.string(from: currentDate as Date))

// convert to Date obj
var userDate = "08/24/2024"
dateFormarter.dateFormat = "MM/dd/yyyy"
dateFormarter.timeZone = TimeZone(identifier: "Asia/Phnom_Penh")
if let dateObj = dateFormarter.date(from: userDate) {
    print("Converted date:", dateObj)
}else{
    print("Converted date failed!")
}










