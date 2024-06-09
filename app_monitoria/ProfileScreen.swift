import SwiftUI

struct ProfileScreen: View {
    
    @State var name: String = "Leandro"
    @State var showNameInputView = false
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                Text("Olá, \(name)")
                    .font(.title)
            }
            .navigationTitle("Perfil")
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
            
            Spacer()
            
            Text("Hola")
        
            Spacer()
        }
    }
}

#Preview {
    NavigationStack {
        ProfileScreen()
    }
}
