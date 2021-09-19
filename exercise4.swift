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
            return values[index]
        } else {
            return "This key has not a specified value."
        }
    }

    func remove(key: Int) {
        if let index = keys.firstIndex(of: key) {
            keys.remove(at: index)
            values.remove(at: index)
        } else {
            print("This index does not exist.")
        }
    }

    func clear() {
        keys.removeAll()
        values.removeAll()
    }

    func contains(key: Int) -> Bool {
        var contains = false
        for k in keys {
            if k == key {
                contains = true
            }
        }
        return contains
    }

    func contains(value: String) -> Bool {
        var contains = false
        for v in values {
            if v == value {
                contains = true
            }
        }
        return contains
    }

    func isEmpty() -> Bool {
        if keys != nil {
            return false
        } else {
            return true
        }
    }

    func count() -> Int {
        return keys.count
    }

    func printDictionary() {
        for k in keys {
            print("\(k): \(value(key: k))")
        }
    }
}

var dict = Dictionary(keys: [1, 2, 3], values: ["apple", "orange", "banana"])
//dict.printDictionary()

dict.put(key: 4, value: "pear")
//dict.printDictionary()

var value = dict.value(key: 3)
print(value)

dict.remove(key: 3)
dict.printDictionary()

print(dict.contains(key: 1))
print(dict.contains(value: "orange"))
print(dict.isEmpty())
print(dict.count())
