/**
 * The knows API is defined in the parent class VersionControl.
 *     func isBadVersion(_ version: Int) -> Bool{}
 */

class Solution : VersionControl {
    func firstBadVersion(_ n: Int) -> Int {
        var high = n
        var low = 1
        var mid = 0
        
        while(low < high) {
            mid = (high + low) / 2
            if isBadVersion(mid) {
                high = mid
            } else {
                low = mid + 1
            }
        }
        
        return low
    }
}