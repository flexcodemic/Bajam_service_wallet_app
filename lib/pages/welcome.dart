import 'package:bajam_app/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:bajam_app/theme.dart';
import 'package:bajam_app/widgets/custom_scafford.dart';

class WelcomeScreen extends StatelessWidget {
  final String firstName;

  const WelcomeScreen({super.key, required this.firstName});

  @override
  Widget build(BuildContext context) {
    return CustomScafford(
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 40.0), // Add spacing from the top
              const Text(
                'Welcome to Bajam Wallet!',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: AppColors.white,
                ),
              ),
              const SizedBox(height: 20.0),
              Text(
                'Hello, $firstName!',
                style: const TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w500,
                  color: AppColors.white,
                ),
              ),
              const SizedBox(height: 30.0),
              // Image at the center
              Container(
                width: 430,
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
                        // Logic for explore
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
              const SizedBox(height: 40.0), // Add space below the cards
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.darkgrey,
                  foregroundColor: AppColors.primary,
                ),
                child: const Text(
                  'Get Started',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
