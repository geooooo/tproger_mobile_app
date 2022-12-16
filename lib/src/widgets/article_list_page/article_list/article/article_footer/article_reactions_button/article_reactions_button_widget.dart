import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:get_it/get_it.dart';
import 'package:overlayment/overlayment.dart';
import 'package:tproger_mobile_app/src/models/app_theme/app_theme.dart';
import 'package:tproger_mobile_app/src/models/consts/app_color.dart';
import 'package:tproger_mobile_app/src/models/consts/app_size.dart';
import 'package:tproger_mobile_app/src/models/app_state/app_state.dart';
import 'package:tproger_mobile_app/src/models/reaction_data.dart';
import 'package:tproger_mobile_app/src/services/reaction_service.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/article/article_footer/article_reactions_button/add_reaction_widget.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/article/article_footer/article_reactions_button/reaction_list_widget.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/article/article_footer/article_reactions_button/reactions_overlay/reactions_overlay_widget.dart';

class ArticleReactionsButtonWidget extends StatefulWidget {
  final List<ReactionData> reactions;

  const ArticleReactionsButtonWidget({ 
    required this.reactions,
    super.key,
  });

  @override
  State<ArticleReactionsButtonWidget> createState() => _ArticleReactionsButtonWidgetState();
}

class _ArticleReactionsButtonWidgetState extends State<ArticleReactionsButtonWidget> {
  static const _duration = Duration(milliseconds: 250);
  static final _reactionService = GetIt.instance.get<ReactionService>();

  int get commonCount => _reactionService.commonCount(widget.reactions);

  var _isTapped = false;
  var _isOverlayOpened = false;

  @override
  // ignore: avoid_print
  Widget build(BuildContext context) { print([_isTapped, _isOverlayOpened]); return StoreBuilder<AppState>(
    builder: (context, store) => OverExpander(
      animation: const OverFadeAnimation(
        curve: Curves.ease,
        reverseCurve: Curves.ease,
        durationMilliseconds: 250,
        reverseDurationMilliseconds: 250,
        // beginAlignment: Alignment.topCenter,
      ),
      alignment: Alignment.topCenter,
      isClickable: false,
      expand: _isOverlayOpened,
      backgroundSettings: const BackgroundSettings(
        color: Colors.transparent,
        dismissOnClick: true,
      ),
      expandChild: Opacity(
        opacity: 0.1,
        child: ReactionsOverlayWidget(
          onClick: _onOverlayClick,
        ),
      ),
      child: GestureDetector(
        onTapDown: _onTapDown,
        onTapUp: _onTapUp,
        onTapCancel: _onTapCancel,
        child: AnimatedContainer(
          duration: _duration,
          curve: Curves.ease,
          decoration: BoxDecoration(
            color: Theme.of(context).extension<AppTheme>()!.articleReactionsBackgroundColor,
            boxShadow: _isTapped
              ? const [
                  BoxShadow(
                    color: AppColor.grayColor6,
                    offset: Offset(0, 4),
                    blurRadius: 9,
                  ),
                ] 
              : null,
            border: Border.all(
              width: AppSize.articleReactionsBorderSize,
              color: Theme.of(context).extension<AppTheme>()!.articleReactionsBorderColor,
            ),
            borderRadius: AppSize.articleReactionsBorderRadius,
          ),
          padding: AppSize.articleReactionsPadding,
          child: (commonCount == 0) 
            ? const AddReactionWidget() 
            : ReactionListWidget(reactions: widget.reactions),
        ),
      ),
    ),
  );}

  void _onTapDown(TapDownDetails details) =>
    setState(() { _isTapped = true; });

  void _onTapUp(TapUpDetails details) =>
    setState(() { 
      _isTapped = false;
      _isOverlayOpened = !_isOverlayOpened;
    });

  void _onTapCancel() =>
    setState(() { _isTapped = false; });

  void _onOverlayClick() => 
    setState(() { _isOverlayOpened = false; });
}
