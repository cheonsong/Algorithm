class Solution {
    func findAnagrams(_ s: String, _ p: String) -> [Int] {
        let s = s.map { letterIndex($0) }
        let p = p.map { letterIndex($0) }
        
        var ref = Array(repeating: 0, count: 26)
        for char in p {
            ref[char] += 1
        }
        
        var result = [Int]()
        var map = ref.map { _ in 0 }
        for i in 0..<s.count {
            map[s[i]] += 1
            if i - p.count >= 0 {
                map[s[i-p.count]] -= 1
            }

            if map == ref {
                result.append(i - p.count + 1)
            }
        }
        
        return result
    }
    
    func letterIndex(_ letter: Character) -> Int {
        return Int(letter.unicodeScalars.first!.value) - Int(Unicode.Scalar("a").value)
    }
}