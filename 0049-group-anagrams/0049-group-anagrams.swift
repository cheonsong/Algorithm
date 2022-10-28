class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var hashTable: [String: [String]] = [:]

        for str in strs {
            let sortedStr = String(str.sorted())
            if var value = hashTable[sortedStr] {
                value.append(str)
                hashTable[sortedStr] = value
            } else {
                hashTable[sortedStr] = [str]
            }
        }
        return hashTable.map({ k,v in return v }).sorted(by: {$0.count < $1.count})
    }
}