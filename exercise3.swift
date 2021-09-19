import Foundation

class Dictionary {
    var keys = [Int]()
    var values = [String]()

    init(keys: [Int], values: [String]) {
        if keys.count == values.count {
            self.keys = keys
            self.values = values
        } else {
            print("The number of keys and values must be equal!")
        }
    }

    func put(key: Int, value: String) {
        keys.append(key)
        values.append(value)
    }

    func value(key: Int) -> String {
        if let index = keys.firstIndex(of: key) {
            keys[index] = key
            return values[index]
        } else {
            return "This key has not a specified value."
        }
    }

    func printDictionary() {
        for k in keys {
            print("\(k): \(value(key: k))")
        }
    }
}

var dict = Dictionary(keys: [1, 2, 3], values: ["apple", "orange", "banana"])
dict.printDictionary()

dict.put(key: 4, value: "pear")
dict.printDictionary()

var value = dict.value(key: 3)
print(value)
