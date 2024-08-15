import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget buildQubitHub() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: [
            const Icon(
              Icons.hub,
              size: 30,
              color: Colors.redAccent,
            ),
            SizedBox(
              width: 5.w,
            ),
            const Text(
              'QubitHub',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            TextButton(
                onPressed: () {},
                child: const Text(
                  "View",
                  style: TextStyle(color: Colors.redAccent),
                )),
          ],
        ),
      ),
      const SizedBox(height: 8),
      SizedBox(
        height: 250,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          itemBuilder: (context, index) {
            return Card(
              child: SizedBox(
                width: 170,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          color: Colors.grey[300],
                          child: const Center(
                            child: Icon(Icons.image, size: 50),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Title For This Image ${index + 1}',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),

                          const SizedBox(height: 4),
                          Text(
                            'The Type- ${index + 1}',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                          // Text('\$${(index + 1) * 10}.99',
                          //     style: const TextStyle(
                          //         fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    ],
  );
}
