/* Insertion Sort
     - Iterates through array.  At each index, it works backwards towards the front and compares to each element to see if the sort order is respected.  If not, it swaps the items, effectively shifting items until the element is inserted in the correct position.
     - Sorts the way a human would sort a deck of cards
     - Runtime: O(n^2)
 */

import UIKit

extension Array where Element: Comparable {
    mutating func insertionSort(ascending: (Element, Element) -> Bool) {
        for i in 1 ..< self.count {
            for j in (1...i).reversed() { 
                if ascending(self[j], self[j-1]) {
                    self.swapAt(j, j-1)
                } else {
                    break
                }
            }
        }
    }
}

var numbers = [8,3,9,20,17,23,1,0,4,6]

numbers.insertionSort(ascending: <)

