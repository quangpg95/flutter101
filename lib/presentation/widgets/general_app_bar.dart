import 'package:flutter/material.dart';
import 'package:flutter_101/theme/colors.dart';
import 'package:flutter_101/theme/typography.dart';
import 'package:flutter_101/utils/app_images.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class GeneralAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Color foregroundColor;
  final Function()? onTapBack;

  const GeneralAppBar({
    this.foregroundColor = defaultTextColor,
    this.onTapBack,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: SvgPicture.asset(AppImages.icBack, color: foregroundColor),
        onPressed: () {
          onTapBack?.call();
        },
      ),
      actions: [
        IconButton(
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return Wrap(children: [
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                    style: KiotVietTextStyle.titleXL, 'Tác Vụ'),
                                IconButton(
                                    onPressed: () => {Navigator.pop(context)},
                                    icon: SvgPicture.asset(AppImages.icClose))
                              ],
                            ),
                            GestureDetector(
                              onTap: () {
                                _openDialer();
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 8.0, bottom: 8.0),
                                child: Row(
                                  children: [
                                    SvgPicture.asset(AppImages.icCsSupport),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                        style: KiotVietTextStyle.bodyMRE,
                                        'Hỗ trợ')
                                  ],
                                ),
                              ),
                            ),
                            Divider(),
                            GestureDetector(
                              onTap: () {
                                _openDialer();
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 8.0, bottom: 8.0),
                                child: Row(
                                  children: [
                                    SvgPicture.asset(AppImages.icExit),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                        style: KiotVietTextStyle.bodyMRE,
                                        'Thoát đăng ký')
                                  ],
                                ),
                              ),
                            ),
                            Divider()
                          ],
                        ),
                      ),
                    ]);
                  });
            },
            icon: SvgPicture.asset(AppImages.icMore, color: foregroundColor))
      ],
      backgroundColor: Colors.white,
      title: Text(
          style: KiotVietTextStyle.titleXL.copyWith(color: foregroundColor),
          'Đăng ký vay'),
      automaticallyImplyLeading: false,
    );
  }

  @override
  Size get preferredSize {
    return const Size.fromHeight(52.0);
  }

  void _openDialer() async {
    const phoneNumber = '19006522'; // Replace with the desired phone number
    final uri = Uri.parse('tel:$phoneNumber');

    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $uri';
    }
  }
}
