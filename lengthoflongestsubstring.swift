class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        let chars = Array(s)
        var maxLength = 0
        for i in 0..<chars.count {
            var seen = Set<Character>()
            var length = 0
            for j in i..<chars.count {
                if seen.contains(chars[j]) {
                    break
                }
                seen.insert(chars[j])
                length += 1
            }
            maxLength = max(maxLength, length)
        }
        return maxLength
    }
}
