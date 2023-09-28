import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ekam_app/core/constants/app_styles.dart';

class AppointmentView extends StatelessWidget {
  const AppointmentView({super.key});

  static const routeName = '/appointment';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_circle_left_outlined),
            //replace with our own icon data.
          ),
        ),
        centerTitle: true,
        title: Text(
          'Book Appointment',
          style: Styles.appBarTitleStyle,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    CircleAvatar(
                      radius: 60,
                      child: ClipOval(
                        child: CachedNetworkImage(
                          imageUrl:
                              'https://hireforekam.s3.ap-south-1.amazonaws.com/doctors/1-Doctor.png',
                          imageBuilder: (context, imageProvider) => Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: imageProvider,
                                fit: BoxFit.cover,
                                colorFilter: const ColorFilter.mode(
                                  Colors.red,
                                  BlendMode.colorBurn,
                                ),
                              ),
                            ),
                          ),
                          placeholder: (context, url) =>
                              const CircularProgressIndicator(),
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 1,
                      right: 1,
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              width: 3,
                              color: Colors.white,
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(
                                50,
                              ),
                            ),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                offset: const Offset(2, 4),
                                color: Colors.black.withOpacity(
                                  0.3,
                                ),
                                blurRadius: 3,
                              ),
                            ]),
                        child: const Padding(
                          padding: EdgeInsets.all(1.0),
                          child: Icon(Icons.star, color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 1,
                          vertical: 2,
                        ),
                        child: Text('Dr. John Doe'),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 1,
                          vertical: 2,
                        ),
                        child: Text('Cardiologist'),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_rounded,
                            color: Colors.blue,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text('123 Health St, MedCity'),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.add_card,
                            color: Colors.blue,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Divider(
              thickness: 1,
              color: Colors.grey.shade300,
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
