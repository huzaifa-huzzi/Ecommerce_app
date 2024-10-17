import 'package:ecommerece_app/view_model/Controller/ThemeController/ThemeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddNewAddress extends StatefulWidget {
  const AddNewAddress({super.key});

  @override
  State<AddNewAddress> createState() => _AddNewAddressState();
}

class _AddNewAddressState extends State<AddNewAddress> {
  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add New Address',style:TextStyle(
          color: themeController.isDarkTheme.value
              ? Colors.white // Text color for dark theme
              : Colors.black, // Text color for light theme
        ),),
        iconTheme: IconThemeData(
          color: themeController.isDarkTheme.value
              ? Colors.white // Back button color for dark theme
              : Colors.black, // Back button color for light theme
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Name Field
              TextFormField(
                style: TextStyle(
                  color: themeController.isDarkTheme.value
                      ? Colors.white // Text color for dark theme
                      : Colors.black, // Text color for light theme
                ),
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.person,
                    color: themeController.isDarkTheme.value
                        ? Colors.white // Icon color for dark theme
                        : Colors.black, // Icon color for light theme
                  ),
                  labelText: 'Name',
                  labelStyle: TextStyle(
                    color: themeController.isDarkTheme.value
                        ? Colors.white // Label color for dark theme
                        : Colors.black, // Label color for light theme
                  ),
                  filled: true,
                  fillColor: themeController.isDarkTheme.value
                      ? Colors.grey.shade800 // Background for dark mode
                      : Colors.grey.shade200, // Background for light mode
                ),
              ),
              const SizedBox(height: 16),

              // Phone Number Field
              TextFormField(
                style: TextStyle(
                  color: themeController.isDarkTheme.value
                      ? Colors.white
                      : Colors.black,
                ),
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.phone,
                    color: themeController.isDarkTheme.value
                        ? Colors.white
                        : Colors.black,
                  ),
                  labelText: 'Phone Number',
                  labelStyle: TextStyle(
                    color: themeController.isDarkTheme.value
                        ? Colors.white
                        : Colors.black,
                  ),
                  filled: true,
                  fillColor: themeController.isDarkTheme.value
                      ? Colors.grey.shade800
                      : Colors.grey.shade200,
                ),
              ),
              const SizedBox(height: 16),

              // Building No. and Postal Code Row
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      style: TextStyle(
                        color: themeController.isDarkTheme.value
                            ? Colors.white
                            : Colors.black,
                      ),
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.business,
                          color: themeController.isDarkTheme.value
                              ? Colors.white
                              : Colors.black,
                        ),
                        labelText: 'Building No.',
                        labelStyle: TextStyle(
                          color: themeController.isDarkTheme.value
                              ? Colors.white
                              : Colors.black,
                        ),
                        filled: true,
                        fillColor: themeController.isDarkTheme.value
                            ? Colors.grey.shade800
                            : Colors.grey.shade200,
                      ),
                    ),
                  ),
                  const SizedBox(width: 16), // Space between two input fields
                  Expanded(
                    child: TextFormField(
                      style: TextStyle(
                        color: themeController.isDarkTheme.value
                            ? Colors.white
                            : Colors.black,
                      ),
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.code,
                          color: themeController.isDarkTheme.value
                              ? Colors.white
                              : Colors.black,
                        ),
                        labelText: 'Postal Code',
                        labelStyle: TextStyle(
                          color: themeController.isDarkTheme.value
                              ? Colors.white
                              : Colors.black,
                        ),
                        filled: true,
                        fillColor: themeController.isDarkTheme.value
                            ? Colors.grey.shade800
                            : Colors.grey.shade200,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),

              // City and Country Row
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      style: TextStyle(
                        color: themeController.isDarkTheme.value
                            ? Colors.white
                            : Colors.black,
                      ),
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.location_city,
                          color: themeController.isDarkTheme.value
                              ? Colors.white
                              : Colors.black,
                        ),
                        labelText: 'City',
                        labelStyle: TextStyle(
                          color: themeController.isDarkTheme.value
                              ? Colors.white
                              : Colors.black,
                        ),
                        filled: true,
                        fillColor: themeController.isDarkTheme.value
                            ? Colors.grey.shade800
                            : Colors.grey.shade200,
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: TextFormField(
                      style: TextStyle(
                        color: themeController.isDarkTheme.value
                            ? Colors.white
                            : Colors.black,
                      ),
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.flag,
                          color: themeController.isDarkTheme.value
                              ? Colors.white
                              : Colors.black,
                        ),
                        labelText: 'Country',
                        labelStyle: TextStyle(
                          color: themeController.isDarkTheme.value
                              ? Colors.white
                              : Colors.black,
                        ),
                        filled: true,
                        fillColor: themeController.isDarkTheme.value
                            ? Colors.grey.shade800
                            : Colors.grey.shade200,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),

              // Address Line Field
              TextFormField(
                style: TextStyle(
                  color: themeController.isDarkTheme.value
                      ? Colors.white
                      : Colors.black,
                ),
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.map,
                    color: themeController.isDarkTheme.value
                        ? Colors.white
                        : Colors.black,
                  ),
                  labelText: 'Address Line',
                  labelStyle: TextStyle(
                    color: themeController.isDarkTheme.value
                        ? Colors.white
                        : Colors.black,
                  ),
                  filled: true,
                  fillColor: themeController.isDarkTheme.value
                      ? Colors.grey.shade800
                      : Colors.grey.shade200,
                ),
              ),
              const SizedBox(height: 16),

              // Location Field
              TextFormField(
                style: TextStyle(
                  color: themeController.isDarkTheme.value
                      ? Colors.white
                      : Colors.black,
                ),
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.location_on,
                    color: themeController.isDarkTheme.value
                        ? Colors.white
                        : Colors.black,
                  ),
                  labelText: 'Location',
                  labelStyle: TextStyle(
                    color: themeController.isDarkTheme.value
                        ? Colors.white
                        : Colors.black,
                  ),
                  filled: true,
                  fillColor: themeController.isDarkTheme.value
                      ? Colors.grey.shade800
                      : Colors.grey.shade200,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
