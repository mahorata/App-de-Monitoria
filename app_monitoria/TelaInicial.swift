import SwiftUI

struct TelaInicial: View {
    
    @State var go_to_settings: Bool = false
    
    var body: some View {
        NavigationStack {
            Text("Hola")
            
                .navigationTitle("Tela Inicial")
                .toolbar {
                    Button(action: {
                        go_to_settings = true
                    }, label: {
                        Label("Store", systemImage: "gear")
                    })
                }
            
                .navigationDestination(isPresented: $go_to_settings) {
                    SettingsScreen()
                }
        }
    }
}

#Preview {
    TelaInicial()
}
