import 'package:flutter/material.dart';
import '/common/Widgets/custom_app_bar.dart';
import '/screens/Notifications/widgets/notification_item.dart';
import 'dart:io' as plateform;

class NotificationScreen extends StatelessWidget {
  static const String routeName = 'notifications';
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: buildNotificationList(context),
    );
  }

  PreferredSize _buildAppBar(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size(double.infinity, 100),
      child: CustomAppBar(
          isHome: false,
          fixedHeight: 100,
          enableSearchField: false,
          leadingIcon: plateform.Platform.isIOS
              ? Icons.arrow_back_ios
              : Icons.arrow_back,
          leadingOnTap: () {
            Navigator.pop(context);
          },
          title: 'Notifications'),
    );
  }

  Widget buildNotificationList(BuildContext context) {
    return ListView.builder(
      itemCount: 1,
      itemBuilder: (context, index) {
        return NotificationItem(
            seen: false,
            notificationImage: 'https://via.placeholder.com/150',
            notificationMessage: "New Product in Gadgets added",
            isImageAvailable: true,
            onPressed: () async {},
            notificationTimestamp: DateTime.now());
      },
    );
  }
}
