

import SwiftUI

struct PetView: View {
    
    @EnvironmentObject var viewRouter: ViewRouter

    var body: some View {
        
        if let pet = viewRouter.selectedPet {
            Text(pet.name)
        } else {
            EmptyView()
        }
    }
}

struct PetView_Previews: PreviewProvider {
    static var previews: some View {
        PetView()
    }
}
