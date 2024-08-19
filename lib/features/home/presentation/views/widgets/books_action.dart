import 'package:bookly/core/widgets/custom_button.dart';
import 'package:bookly/features/home/data/index.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          const Expanded(
            child: CustomButton(
              text: 'Free',
              backgroundColor: Colors.white,
              textColor: Colors.black,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16),
                topLeft: Radius.circular(16),
              ),
            ),
          ),
          Expanded(
            child: CustomButton(
              onPressed: () async {
                Uri uri = Uri.parse(bookModel.volumeInfo.previewLink!);
                if (await canLaunchUrl(uri)) {
                  await launchUrl(uri);
                }
              },
              text: 'Preview',
              backgroundColor: const Color(0xffEF8262),
              textColor: Colors.white,
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
