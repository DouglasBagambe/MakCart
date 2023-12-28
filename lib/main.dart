import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'utils/Constants/app_constants.dart';
import 'utils/app_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    AppConstants.setSystemStyling();
    return ScreenUtilInit(
      builder: (BuildContext context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme,
        initialRoute: '/',
        routes: AppConstants.appRoutes,
      ),
      designSize: const Size(375, 812),
    );
  }
}








// void main() {
//   WidgetsFlutterBinding.ensureInitialized();
//   AppConstants.setSystemStyling();
//   runApp(
//     ScreenUtilInit(
//       builder: () => MaterialApp(
//         debugShowCheckedModeBanner: false,
//         theme: AppTheme.lightTheme,
//         initialRoute: '/',
//         routes: AppConstants.appRoutes,
//       ),
//       designSize: const Size(375, 812),
//     ),
//   );
// }

















































































// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: HomeScreen(),
//     );
//   }
// }

// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('E-Commerce App'),
//       ),
//       body: Column(
//         children: [
//           ElevatedButton(
//             onPressed: () {
//               // Add the login logic here
//             },
//             child: const Text('Login'),
//           ),
//           ElevatedButton(
//             onPressed: () {
//               // Add the sign-up logic here
//             },
//             child: const Text('Sign Up'),
//           ),
//           const Divider(),
//           const Text(
//             'Product Categories',
//             style: TextStyle(
//               fontSize: 20,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           const ListTile(
//             leading: Icon(Icons.shopping_bag),
//             title: Text('Product Category 1'),
//           ),
//           const ListTile(
//             leading: Icon(Icons.shopping_bag),
//             title: Text('Product Category 2'),
//           ),
//           const ListTile(
//             leading: Icon(Icons.shopping_bag),
//             title: Text('Product Category 3'),
//           ),
//           // Add more categories as needed
//         ],
//       ),
//     );
//   }
// }
































// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: ProductList(),
//     );
//   }
// }

// class ProductList extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('E-Commerce App'),
//       ),
//       body: ListView(
//         children: [
//           ProductCard(
//             name: 'Product 1',
//             price: '\$10.99',
//             imageUrl: 'https://via.placeholder.com/150',
//           ),
//           ProductCard(
//             name: 'Product 2',
//             price: '\$19.99',
//             imageUrl: 'https://via.placeholder.com/150',
//           ),
//           ProductCard(
//             name: 'Product 3',
//             price: '\$6.99',
//             imageUrl: 'https://via.placeholder.com/150',
//           ),
//           ProductCard(
//             name: 'Product 4',
//             price: '\$24.99',
//             imageUrl: 'https://via.placeholder.com/150',
//           ),
//           ProductCard(
//             name: "Dyson's Car",
//             price: "\$9999.99",
//             imageUrl: "https://via.placeholder.com/150",
//           ),
//         ],
//       ),
//     );
//   }
// }

// class ProductCard extends StatelessWidget {
//   final String name;
//   final String price;
//   final String imageUrl;

//   ProductCard({
//     required this.name,
//     required this.price,
//     required this.imageUrl,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: ListTile(
//         leading: Image.network(imageUrl),
//         title: Text(name),
//         subtitle: Text('Price: $price'),
//         trailing: Icon(Icons.shopping_cart),
//       ),
//     );
//   }
// }






















// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Test App'),
//         ),
//         body: Center(
//           child: Text('Hello, Dyson!'),
//         ),
//       ),
//     );
//   }
// }
