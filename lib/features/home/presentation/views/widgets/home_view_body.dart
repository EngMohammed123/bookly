import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

  return  const Padding(
    padding: EdgeInsets.symmetric(horizontal: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppBar(),
        FeaturedBooksListView(),
        SizedBox(height: 50,),
        Padding(
          padding: EdgeInsets.only(left: 8),
          child: Text(
            'Best Seller',
            style: Styles.textStyle18,
          ),
        ),
        SizedBox(height: 20,),
        BestSellerListViewItem(),
      ],
  ),
  );
  }
}

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
          aspectRatio: 2.5/4,
          child: Container(
            decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.red,
              image: const DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(AssetsData.testImage)
                ),
            ),
          ),
          ),
          const SizedBox(width: 30,),
            Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.55,
                child: const Text(
                  'Harry potter and the Goblet of fire',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                   style: Styles.textStyle20,)),
            ],
          )
        ],
      ),
    );
  }
}