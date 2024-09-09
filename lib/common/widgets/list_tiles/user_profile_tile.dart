import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:nichrome_test/unknown_locations/x_circular_image.dart';

import 'package:nichrome_test/utils/constants/colors.dart';
import 'package:nichrome_test/utils/constants/image_strings.dart';

class XUserProfileTile extends StatelessWidget {
  const XUserProfileTile({super.key
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const XCircularImage(image: XImages.user, width: 50, height: 50, padding: 0,),
      title: Text('Arnav Pise', style: Theme.of(context).textTheme.headlineSmall!.apply(color: XColors.white),),
      subtitle: Text('arnavpise15@gmail.com', style: Theme.of(context).textTheme.bodyMedium!.apply(color: XColors.white),),
      trailing: IconButton(onPressed: (){}, icon: const Icon(Iconsax.edit, color: XColors.white,)),
    );
  }
}