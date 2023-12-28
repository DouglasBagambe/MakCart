import 'package:flutter/material.dart';
import '/utils/app_colors.dart';
import '/utils/font_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartTile extends StatelessWidget {
  const CartTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
              image: const DecorationImage(
                  image: AssetImage('assets/product/pic1.png')),
              borderRadius: BorderRadius.circular(10.0)),
        ),
        Expanded(
          child: Container(
            height: 80.h,
            padding: const EdgeInsets.all(5.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Men\'s Air Force 1',
                  style: FontStyles.montserratRegular14(),
                ),
                // SizedBox(height: 20.0),
                Text(
                  'UGX 250,000',
                  style: FontStyles.montserratBold17(),
                )
              ],
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Icon(Icons.add_circle_outline, color: AppColors.lightGray),
            Text('1', style: TextStyle(color: AppColors.primaryLight)),
            Icon(
              Icons.remove_circle_outline,
              color: AppColors.lightGray,
            ),
          ],
        ),
      ],
    );
  }
}


// class CartTile extends StatefulWidget {
//   final CartItem item; // Pass the CartItem to the widget
//   final Function(int) onQuantityChange; // Callback to notify the parent widget

//   const CartTile({Key? key, required this.item, required this.onQuantityChange})
//       : super(key: key);

//   @override
//   _CartTileState createState() => _CartTileState();
// }

// class _CartTileState extends State<CartTile> {
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Container(
//           height: 80,
//           width: 80,
//           decoration: BoxDecoration(
//             image: const DecorationImage(
//                 image: AssetImage('assets/product/pic1.png')),
//             borderRadius: BorderRadius.circular(10.0),
//           ),
//         ),
//         Expanded(
//           child: Container(
//             height: 80.h,
//             padding: const EdgeInsets.all(5.0),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   widget.item.productName,
//                   style: FontStyles.montserratRegular14(),
//                 ),
//                 Text(
//                   widget.item.getTotalPrice(), // Use the CartItem's total price
//                   style: FontStyles.montserratBold17(),
//                 )
//               ],
//             ),
//           ),
//         ),
//         Column(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             IconButton(
//               icon: Icon(Icons.add_circle_outline, color: AppColors.lightGray),
//               onPressed: () {
//                 setState(() {
//                   widget.item.incrementQuantity(); // Increment the quantity
//                   widget.onQuantityChange(widget.item.quantity); // Notify the parent widget
//                 });
//               },
//             ),
//             Text(
//               widget.item.quantity.toString(), // Display the current quantity
//               style: TextStyle(color: AppColors.primaryLight),
//             ),
//             IconButton(
//               icon: Icon(Icons.remove_circle_outline, color: AppColors.lightGray),
//               onPressed: () {
//                 setState(() {
//                   widget.item.decrementQuantity(); // Decrement the quantity
//                   widget.onQuantityChange(widget.item.quantity); // Notify the parent widget
//                 });
//               },
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }

// class CartTile extends StatelessWidget {
//   final CartItem item; // The cart item data
//   final Function(int) onQuantityChange; // Callback to update quantity

//   const CartTile({
//     Key? key,
//     required this.item, // Pass in the item data
//     required this.onQuantityChange, // Callback to update quantity
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Container(
//           height: 80,
//           width: 80,
//           decoration: BoxDecoration(
//             image: const DecorationImage(
//               image: AssetImage('assets/product/pic1.png'),
//             ),
//             borderRadius: BorderRadius.circular(10.0),
//           ),
//         ),
//         Expanded(
//           child: Container(
//             height: 80.h,
//             padding: const EdgeInsets.all(5.0),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   item.productName, // Use the product name from item
//                   style: FontStyles.montserratRegular14(),
//                 ),
//                 Text(
//                   'UGX ${item.price * item.quantity}', // Calculate total price
//                   style: FontStyles.montserratBold17(),
//                 ),
//               ],
//             ),
//           ),
//         ),
//         Column(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             GestureDetector(
//               onTap: () {
//                 onQuantityChange(item.quantity + 1); // Increase quantity
//               },
//               child: Icon(Icons.add_circle_outline, color: AppColors.lightGray),
//             ),
//             Text(
//               item.quantity.toString(), // Display quantity from item
//               style: TextStyle(color: AppColors.primaryLight),
//             ),
//             GestureDetector(
//               onTap: () {
//                 if (item.quantity > 1) {
//                   onQuantityChange(item.quantity - 1); // Decrease quantity
//                 }
//               },
//               child: Icon(
//                 Icons.remove_circle_outline,
//                 color: AppColors.lightGray,
//               ),
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }

// class CartItem {
//   final int productId; // Unique identifier for the product
//   final String productName; // Name of the product
//   final double price; // Price of the product
//   int quantity; // Quantity of the product in the cart
//   List<CartItem> cartItems = [];

//   CartItem({
//     required this.productId,
//     required this.productName,
//     required this.price,
//     this.quantity = 1, // Default quantity is 1
//   });

//   // You can add methods to increase or decrease the quantity, if needed
//   void incrementQuantity() {
//     quantity++;
//   }

//   void decrementQuantity() {
//     if (quantity > 1) {
//       quantity--;
//     }
//   }

//   // Get the total price of the cart item (including currency)
//   String getTotalPrice() {
//     return 'UGX ${(price * quantity).toStringAsFixed(2)}'; // Format the total price
//   }

//   // Create a CartItem representing the product to be added
//   CartItem newItem = CartItem(
//     productId: 1,
//     productName: "Men's Air Force 1",
//     price: 250000.0,
//   );

//   // Add the new item to the cart
//   cartItems.add(newItem);

// }


