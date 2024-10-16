import 'package:flutter/material.dart';
import 'package:location/location.dart';

import '../../../../core/routing/routes_names.dart';
import '../../../../core/theming/text_styles.dart';


Location location=Location();
void showServiceErrorDialog(BuildContext context, Function() getUserLocation) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Location Required',style: AppTextStyles.font18RobotoPink),
        content: Text(
          'GPS is required to continue, Please enable location services to proceed.',style: AppTextStyles.font14RobotoBlack,
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              Navigator.pushReplacementNamed(context, Routes.homePageLayout);
            },
            child: Text('Back to Home',style: AppTextStyles.font14RobotoPink),
          ),
          TextButton(
            onPressed: () async {
              Navigator.pop(context); // Close the dialog
              // Request location service if disabled
              bool serviceEnabled = await location.requestService();
              if (serviceEnabled) {
                // Recheck permission after enabling service
                await getUserLocation();
              } else {
                showServiceErrorDialog(context,getUserLocation);
              }
            },
            child: Text('Retry',style: AppTextStyles.font14RobotoPink),
          ),
        ],
      );
    },
  );
}

void showPermissionErrorDialog(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        title:  Text('Location Required!',style: AppTextStyles.font18RobotoPink),
        content:  Text(
          'Location access is needed to provide accurate service. Please enable location permissions to continue.',style: AppTextStyles.font14RobotoBlack,
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              Navigator.pushReplacementNamed(context, Routes.homePageLayout);
            },
            child: Text('Back to Home',style: AppTextStyles.font14RobotoPink),
          ),
        ],
      );
    },
  );
}