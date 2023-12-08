import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Mengakses MediaQuery untuk mendapatkan informasi perangkat
    MediaQueryData mediaQuery = MediaQuery.of(context);

    // Mendapatkan ukuran layar dalam logikal piksel
    Size screenSize = mediaQuery.size;

    // Mendapatkan orientasi perangkat (potret atau lanskap)
    Orientation orientation = mediaQuery.orientation;

    // Mendapatkan faktor resolusi perangkat
    double pixelRatio = mediaQuery.devicePixelRatio;

    return Scaffold(
      appBar: AppBar(
        title: Text('MediaQuery Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Ukuran Layar: $screenSize'),
            Text('Orientasi: $orientation'),
            Text('Faktor Resolusi: $pixelRatio'),
            SizedBox(height: 20),
            // Contoh penggunaan MediaQuery untuk responsivitas
            Container(
              width: mediaQuery.size.width * 0.8, // Menyesuaikan lebar berdasarkan ukuran layar
              height: 100,
              color: Colors.blue,
              child: Center(
                child: Text(
                  'Widget Responsif',
                  style: TextStyle(
                    fontSize: mediaQuery.size.width * 0.05 * pixelRatio, // Menyesuaikan ukuran teks berdasarkan faktor resolusi
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
