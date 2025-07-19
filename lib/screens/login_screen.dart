import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:yemekolik_flutter/screens/menu_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _phoneController = TextEditingController();
  final _codeController = TextEditingController();

  String _verificationId = '';
  bool _codeSent = false;

  void _sendCode() async {
    String phone = _phoneController.text.trim();

    // Eğer başta +90 yoksa otomatik ekledik
    if (!phone.startsWith('+90')) {
      phone = '+90' + phone;
    }

    print("Telefon numarası: $phone");

    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: phone,
      verificationCompleted: (PhoneAuthCredential credential) {
        // Otomatik doğrulama varsa
      },
      verificationFailed: (FirebaseAuthException e) {
        print('Doğrulama Hatası: ${e.message}');
      },
      codeSent: (String verificationId, int? resendToken) {
        setState(() {
          _verificationId = verificationId;
          _codeSent = true;
        });
      },
      codeAutoRetrievalTimeout: (String verificationId) {
        _verificationId = verificationId;
      },
    );
  }




  void _verifyCode() async {
    final code = _codeController.text.trim();
    if (_verificationId != null) {
      PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: _verificationId!,
        smsCode: code,
      );

      try {
        await FirebaseAuth.instance.signInWithCredential(credential);
        _goToHome(); // Giriş başarılıysa yönlendir
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Kod doğrulama hatası: $e")),
        );
      }
    }
  }


  void _goToHome() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => const MenuScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _phoneController,
              decoration: const InputDecoration(
                labelText: 'Telefon Numarası',
                prefixText: '+90 ',
              ),
              keyboardType: TextInputType.phone,
            ),
            const SizedBox(height: 16),

            // Kod gönderildiyse doğrulama alanlarını göster
            if (_codeSent) ...[
              TextField(
                controller: _codeController,
                decoration: const InputDecoration(labelText: "Doğrulama Kodu"),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: _verifyCode,
                child: const Text("Giriş Yap"),
              ),
            ],

            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _codeSent ? _verifyCode : _sendCode,
              child: Text(_codeSent ? 'Kodu Doğrula' : 'Kod Gönder'),
            ),
          ],
        ),
      ),
    );
  }
}
