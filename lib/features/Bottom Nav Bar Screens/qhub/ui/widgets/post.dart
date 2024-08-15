import 'package:flutter/material.dart';
import 'package:quebetrats/core/constant/app_styles.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
 



Widget Post(String titleOfPost, String typeOfPost, String timeOfPost,
    keepPressed, sharePressed , String image) {
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: Container(
      foregroundDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.white,
            width: 5,
          )),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GradientText(
            titleOfPost,
            style: AppTextStyle.aBeeZeefont16boldblue
                .copyWith(fontSize: 18, height: 1.2),
            colors: const [
              Colors.blue,
              Colors.red,
              Colors.teal,
            ],
          ),

          const SizedBox(height: 4.0),
          Row(
            children: [
              Row(
                children: [
                  Text(
                    typeOfPost,
                    style: AppTextStyle.aBeeZeefont16boldblue.copyWith(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                  const Text(
                    ' • ',
                  ),
                  Text(
                    timeOfPost,
                    style: AppTextStyle.aBeeZeefont16boldblue.copyWith(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const Spacer(),
              IconButton(
                  onPressed: keepPressed,
                  icon: const Icon(
                    Icons.mark_chat_read_rounded,
                    color: Colors.black,
                  )),
              IconButton(
                  onPressed: sharePressed,
                  icon: const Icon(
                    Icons.share,
                    color: Colors.black,
                  )),
            ],
          ),
          const SizedBox(height: 16.0),
          Image.asset(image), // Replace with your image asset
          const SizedBox(height: 16.0),
          
      
        ],
      ),
    ),
  );
}




// import 'package:shared_preferences/shared_preferences.dart';
// class _PostState extends State<Post> {
//   bool isBookmarked = false;
//   @override
//   void initState() {
//     super.initState();
//     _loadBookmarkState();  }

//   _loadBookmarkState() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     setState(() {
//       isBookmarked = prefs.getBool('bookmark_${widget.titleOfPost}') ?? false;
//     });
//   }

//   void savePost() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     await prefs.setBool('bookmark_${widget.titleOfPost}', true);
//     print('تم حفظ المنشور');
//   }

//   void removePostFromBookmarks() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     await prefs.setBool('bookmark_${widget.titleOfPost}', false);
//     print('تمت إزالة المنشور من المحفوظات');
//   }
  
 
//   // ... باقي الكود
// }
