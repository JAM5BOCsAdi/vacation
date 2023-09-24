import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../constants/const_images.dart';

class HorizontalPageView extends HookWidget {
  final ValueChanged<int> onPageChanged;

  const HorizontalPageView({Key? key, required this.onPageChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = usePageController();
    final currentIndex = useState(0);

    useEffect(() {
      void pageChangedListener() {
        final newPage = controller.page?.round() ?? 0;
        if (newPage != currentIndex.value) {
          currentIndex.value = newPage;
          onPageChanged(newPage);
        }
      }

      controller.addListener(pageChangedListener);

      // Remove the listener when the widget is disposed
      return () {
        controller.removeListener(pageChangedListener);
      };
    }, [controller]);

    return SizedBox(
      height: 250,
      width: double.maxFinite,
      child: PageView.builder(
        controller: controller,
        scrollDirection: Axis.horizontal,
        itemCount: (frequentlyVisitedList.length + 1) ~/ 2, // Display two images per page
        itemBuilder: (context, index) {
          final startIndex = index * 2;
          final endIndex = startIndex + 2;
          final items = frequentlyVisitedList.sublist(
            startIndex,
            endIndex.clamp(0, frequentlyVisitedList.length),
          );

          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: items.map((item) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    item.img,
                    height: 150,
                    width: 156,
                    fit: BoxFit.fill,
                  ),
                  Text(item.name),
                  Text(item.address),
                  Text(item.price),
                  Text(item.rating),
                ],
              );
            }).toList(),
          );
        },
      ),
    );
  }
}
