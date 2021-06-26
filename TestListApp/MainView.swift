

import SwiftUI

struct MainView: View {
    
    @EnvironmentObject var viewRouter: ViewRouter

    var body: some View {
        NavigationView {

            List {

            ForEach(viewRouter.pets) { pet in
                NavigationLink(
                    destination: PetView(),
                    tag: pet,
                    selection: $viewRouter.selectedPet,
                    label: {
                        Text(pet.name)
                    }
                )
            }
                Button("Send Notification to Fred") {
                    viewRouter.sendNotification()
                }
                
                Button("Manually go to Fred") {
                    viewRouter.goToFred()
                }
            }
            

        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
