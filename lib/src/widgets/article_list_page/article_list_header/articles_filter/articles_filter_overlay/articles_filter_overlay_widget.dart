import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_svg/svg.dart';
import 'package:overlayment/overlayment.dart';
import 'package:tproger_mobile_app/l10n/app_localizations.dart';
import 'package:tproger_mobile_app/src/models/app_color.dart';
import 'package:tproger_mobile_app/src/models/app_state/app_state.dart';
import 'package:tproger_mobile_app/src/models/enums/asset.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list_header/articles_filter/articles_filter_overlay/close_button_widget.dart';

class ArticlesFilterOverlayWidget extends StatelessWidget {
  const ArticlesFilterOverlayWidget({ super.key });

  @override
  Widget build(BuildContext context) => DecoratedBox(
    decoration: const BoxDecoration(
      color: AppColor.blackColor1,
    ),
    child: SafeArea(
      child: Stack(
        children: [
          Container(
            color: AppColor.blackColor1,
            padding: const EdgeInsets.all(24),
            width: double.infinity,
            height: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Header(),
                  SizedBox(height: 20),
                  Rubric(),
                  SizedBox(height: 40),
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: CloseButtonWidget(
              onClick: _onCloseClick,
            ),
          ),
        ],
      ),
    ),
  );

  void _onCloseClick() => Overlayment.dismissLast();
}

class Rubric extends StatelessWidget {
  const Rubric({ super.key });

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        AppLocalizations.of(context)!.rubricsText,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: AppColor.grayColor2,
        ),
      ),
      const SizedBox(height: 16),
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              bottom: 5.4,
            ),
            child: Checkbox(
              value: false, 
              onChanged: _onChanged,
              hoverColor: Colors.transparent,
              activeColor: Colors.transparent,
              focusColor: Colors.transparent,
              splashRadius: 0,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              // fillColor: MaterialStateProperty.all(AppColor.greenColor0),
              side: const BorderSide(
                color: AppColor.greenColor0,
                width: 2,
              ),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(4)),
              ),
            ),
          ),
          Text(
            AppLocalizations.of(context)!.forBeginnersText,
            style: const TextStyle(
              fontSize: 18,
              fontFamily: 'Arial',
              fontWeight: FontWeight.w400,
              color: AppColor.grayColor2,
            ),
          )
        ],
      ),
    ],
  );

  void _onChanged(bool? isChecked) {
    print(isChecked);
  }
}

class Header extends StatelessWidget {
  const Header({ super.key });

  @override
  Widget build(BuildContext context) => StoreBuilder<AppState>(
    builder: (context, store) => Column(
      children: [
        Row(
          children: [
            Flexible(
              fit: FlexFit.tight,
              child: Text(
                AppLocalizations.of(context)!.filterText,
                style: const TextStyle(
                  color: AppColor.whiteColor4,
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              Flexible(
                fit: FlexFit.tight,
                child: CleanOut(),
              ),
              SizedBox(width: 4),
              Flexible(
                fit: FlexFit.tight,
                child: Apply(),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

class Apply extends StatelessWidget {
  const Apply({ super.key });

  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.symmetric(
      vertical: 6,
      horizontal: 24,
    ),
    decoration: BoxDecoration(
      border: Border.all(
        width: 2,
        color: Colors.transparent,
      ),
      borderRadius: BorderRadius.circular(8),
      color: AppColor.grayColor5,
    ),
    child: Center(child: Text(
      AppLocalizations.of(context)!.applyText,
      style: const TextStyle(
        color: AppColor.greenColor0,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      textAlign: TextAlign.center,
    ),),
  );
}

class CleanOut extends StatelessWidget {
  const CleanOut({ super.key });

  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.symmetric(
      vertical: 6,
      horizontal: 24,
    ),
    decoration: BoxDecoration(
      border: Border.all(
        width: 2,
        color: Colors.transparent,
      ),
      borderRadius: BorderRadius.circular(8),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          Asset.trash.value,
          package: Asset.package,
          width: 24,
          height: 24,
          color: AppColor.grayColor3,
        ),
        const SizedBox(width: 6),
        Text(
          AppLocalizations.of(context)!.cleanOutText,
          style: const TextStyle(
            color: AppColor.grayColor3,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    ),
  );
}