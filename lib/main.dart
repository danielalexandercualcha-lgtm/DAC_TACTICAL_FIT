import 'package:flutter/material.dart';

void main() {
  runApp(const DACTacticalFit());
}

class DACTacticalFit extends StatelessWidget {
  const DACTacticalFit({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DAC Tactical Fit',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: const Color(0xFF3B5E3B),
        scaffoldBackgroundColor: const Color(0xFF0B0B0B),
      ),
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const HomePage()),
      );
    });

    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.black,
              Color(0xFF1B4332),
              Color(0xFF081C15),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.shield,
              color: Colors.amber,
              size: 110,
            ),
            SizedBox(height: 20),
            Text(
              "DAC TACTICAL FIT",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                letterSpacing: 3,
              ),
            ),
            SizedBox(height: 12),
            Text(
              "Entrenamiento • Disciplina • Honor",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 40),
            CircularProgressIndicator(
              color: Colors.amber,
            ),
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DAC Tactical Fit"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [

          menu(
            Icons.fitness_center,
            "Entrenamiento",
          ),

          menu(
            Icons.flag,
            "Misiones",
          ),

          menu(
            Icons.timer,
            "Cronómetro",
          ),

          menu(
            Icons.monitor_weight,
            "Calculadora IMC",
          ),

          menu(
            Icons.photo_library,
            "Galería",
          ),

          menu(
            Icons.info,
            "Acerca de DAC",
          ),
        ],
      ),
    );
  }

  Widget menu(IconData icon, String texto) {
    return Card(
      color: Colors.green.shade900,
      margin: const EdgeInsets.only(bottom: 15),
      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.amber,
          size: 35,
        ),
        title: Text(
          texto,
          style: const TextStyle(fontSize: 20),
        ),
        trailing: const Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
