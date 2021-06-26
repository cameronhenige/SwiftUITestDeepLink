

import Foundation

struct Pet: Identifiable, Hashable {
    var name: String
    var id: String { name }

}
