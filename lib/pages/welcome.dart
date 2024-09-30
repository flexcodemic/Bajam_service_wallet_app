import 'package:bajam_app/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:bajam_app/theme.dart';
import 'package:bajam_app/widgets/custom_scafford.dart';
import 'signin.dart'; // To navigate back to sign-in screen (logout feature)

class WelcomeScreen extends StatelessWidget {
  final String firstName;

  const WelcomeScreen({super.key, required this.firstName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Bajam Wallet',
          style: TextStyle(color: AppColors.white),
        ),
        backgroundColor: AppColors.primary,
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            color: AppColors.white,
            onPressed: () {
              // Log out logic, navigate to SignIn screen
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const SignInScreen()),
              );
            },
            tooltip: 'Logout',
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.primary,
        selectedItemColor: AppColors.white,
        unselectedItemColor: AppColors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        onTap: (int index) {
          // Logic for bottom navigation (add according to your navigation flow)
        },
      ),
      body: CustomScafford(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // const SizedBox(height: 20.0), // Add spacing from the top
                Text(
                  'Welcome, $firstName!',
                  style: const TextStyle(
                    fontSize: 26.0,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primary,
                  ),
                ),
                // const SizedBox(height: 10.0),
                const Text(
                  'Account Status: Active', // Placeholder for account info
                  style: TextStyle(
                    fontSize: 16.0,
                    color: AppColors.white,
                  ),
                ),
                const SizedBox(height: 30.0),
                // Image at the center
                Container(
                  width: 420,
                  height: 200,
                  decoration: const BoxDecoration(
                    // shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/images/undraw_Welcome.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 40.0), // Spacing between image and cards
                // Cards side by side
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Make a transaction card
                    Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: InkWell(
                        onTap: () {
                          // Logic for making a transaction
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomeScreen(),
                            ),
                          );
                        },
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.4,
                          height: 120.0,
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.payment,
                                size: 40.0,
                                color: AppColors.primary,
                              ),
                              SizedBox(height: 10.0),
                              Text(
                                'Make a Transaction',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.darkgrey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20.0), // Spacing between cards
                    // Explore card
                    Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: InkWell(
                        onTap: () {
                          // Logic for exploring options
                        },
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.4,
                          height: 120.0,
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.explore,
                                size: 40.0,
                                color: AppColors.primary,
                              ),
                              SizedBox(height: 10.0),
                              Text(
                                'Explore',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.darkgrey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30.0),
                // Additional Features (Settings, Help & Support)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Settings card
                    Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: InkWell(
                        onTap: () {
                          // Logic for settings
                        },
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.4,
                          height: 120.0,
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.settings,
                                size: 40.0,
                                color: AppColors.primary,
                              ),
                              SizedBox(height: 10.0),
                              Text(
                                'Settings',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.darkgrey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20.0), // Spacing between cards
                    // Help & Support card
                    Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: InkWell(
                        onTap: () {
                          // Logic for help & support
                        },
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.4,
                          height: 120.0,
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.help_outline,
                                size: 40.0,
                                color: AppColors.primary,
                              ),
                              SizedBox(height: 10.0),
                              Text(
                                'Help & Support',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.darkgrey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40.0), // Add space below the cards
              ],
            ),
          ),
        ),
      ),
    );
  }
}
