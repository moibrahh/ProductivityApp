import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Productivity Pal")
                    .font(.largeTitle)
                    .foregroundColor(Color.blue)
                    .padding()
                
                Text("ProductivityPal is your trusted companion on the journey to enhanced productivity and focused work. Say goodbye to distractions and hello to a more efficient you!")
                    .foregroundColor(Color.black)
                    .padding()
                
                NavigationLink(destination: SettingsView()) {
                    Text("Social Media Lock")
                        .font(.title3)
                        .fontWeight(.bold)
                        .frame(width: 200, height: 50)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding(.bottom)
                
                NavigationLink(destination: DailyRemindersView()) {
                    Text("Daily Reminders")
                        .font(.title3)
                        .fontWeight(.bold)
                        .frame(width: 200, height: 50)
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding(.bottom)
                
                NavigationLink(destination: PersonalizedInsightsView()) {
                    Text("Personalized Insights")
                        .font(.title3)
                        .fontWeight(.bold)
                        .frame(width: 200, height: 50)
                        .background(Color.orange)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding(.bottom)
                
                NavigationLink(destination: TaskManagementView()) {
                    Text("Task Management")
                        .font(.title3)
                        .fontWeight(.bold)
                        .frame(width: 200, height: 50)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
