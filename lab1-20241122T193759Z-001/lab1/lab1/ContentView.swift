import SwiftUI

struct ContentView: View {
    @State private var name: String = ""
    @State private var email: String = ""

    var body: some View {
        VStack {
            // Зображення
            ZStack {
                Image("profile_picture") // Назва вашого зображення в проєкті
                    .resizable()
                    .scaledToFill()
                    .frame(width: 200, height: 200)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 4))
                    .shadow(radius: 10)
                
                Text("Ваше ім'я")
                    .font(.title)
                    .bold()
                    .foregroundColor(.white)
                    .padding(.top, 120)
            }
            .padding()

            // Інформація про користувача
            VStack(alignment: .leading, spacing: 15) {
                Text("Ім'я:")
                    .font(.headline)
                    .foregroundColor(.primary)
                
                TextField("Введіть ваше ім'я", text: $name)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(8)
                    .autocapitalization(.words)
                    .padding(.bottom, 10)

                Text("Email:")
                    .font(.headline)
                    .foregroundColor(.primary)
                
                TextField("Введіть ваш email", text: $email)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(8)
                    .keyboardType(.emailAddress)
            }
            .padding()
            .background(Color.blue.opacity(0.05))
            .cornerRadius(15)

            Spacer()
            
            // Кнопка для збереження даних
            Button(action: {
                // Дія при натисканні (можна додати збереження або виведення даних)
                print("Збережено: \(name), \(email)")
            }) {
                Text("Зберегти")
                    .font(.title2)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(12)
            }
            .padding(.bottom, 20)
        }
        .padding()
        .background(Color(.systemBackground))
        .navigationBarTitle("Моя інформація", displayMode: .inline)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
