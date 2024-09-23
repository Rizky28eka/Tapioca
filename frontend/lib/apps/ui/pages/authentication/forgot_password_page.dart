import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Forgot password"),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                "Don't worry! We got you covered. Please select password recovery methods below",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              _buildRecoveryOption(
                icon: Icons.sms,
                label: "Via SMS",
                value: "+1 938 756 878",
                backgroundColor: Colors.white,
                borderColor: Colors.grey.shade300,
              ),
              const SizedBox(height: 16),
              _buildRecoveryOption(
                icon: Icons.email,
                label: "Via Email",
                value: "john123@mail.com",
                backgroundColor: Colors.redAccent,
                borderColor: Colors.redAccent,
                textColor: Colors.white,
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () {
                  // Action when "Continue" is pressed
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text("Continue", style: TextStyle(fontSize: 16)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRecoveryOption({
    required IconData icon,
    required String label,
    required String value,
    required Color backgroundColor,
    required Color borderColor,
    Color? textColor,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: borderColor),
      ),
      child: Row(
        children: [
          Icon(icon, color: textColor ?? Colors.black),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: TextStyle(
                  color: textColor ?? Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                value,
                style: TextStyle(color: textColor ?? Colors.black),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
