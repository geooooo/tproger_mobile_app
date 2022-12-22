import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:just_the_tooltip/just_the_tooltip.dart';
import 'package:tproger_mobile_app/src/models/app_theme/app_theme.dart';
import 'package:tproger_mobile_app/src/models/consts/app_size.dart';
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

class _ArticleReactionsButtonWidgetState 
  extends State<ArticleReactionsButtonWidget> 
  with SingleTickerProviderStateMixin
{
  static const _borderRadius = AppSize.articleReactionsBorderRadius;
  static const _beginBoxShadow = [
    BoxShadow(color: Colors.transparent),
  ];

  static final _reactionService = GetIt.instance.get<ReactionService>();

  late final _animationController = AnimationController(
    duration: const Duration(milliseconds: 250),
    vsync: this,
  )..addListener(() => setState(() {}));

  var _isAnimationInitialized = false;

  late DecorationTween _tween;
  late Animation<Decoration?> _animation;

  int get _commonCount => _reactionService.commonCount(widget.reactions);

  @override
  Widget build(BuildContext context) {
    _initAnimation();

    return GestureDetector(
      onTapDown: _onTapDown,
      onTapUp: _onTapUp,
      onTapCancel: _onTapCancel,
      child: JustTheTooltip(
        isModal: true,
        barrierDismissible: true,
        preferredDirection: AxisDirection.up,
        triggerMode: TooltipTriggerMode.tap,
        elevation: 0,
        tailBaseWidth: 0,
        tailLength: 0,
        curve: Curves.ease,
        fadeInDuration: const Duration(milliseconds: 250),
        fadeOutDuration: const Duration(milliseconds: 250),
        backgroundColor: Colors.transparent,
        shadow: const Shadow(
          color: Colors.transparent,
        ),
        content: ConstrainedBox(
          constraints: const BoxConstraints(
            maxHeight: double.infinity,
          ),
          child: Stack(
            clipBehavior: Clip.none,
            children: const [
              ReactionsOverlayWidget(),
            ],
          ),
        ),
        child: Container(
          decoration: _animation.value,
          padding: AppSize.articleReactionsPadding,
          child: (_commonCount == 0) 
            ? const AddReactionWidget() 
            : ReactionListWidget(reactions: widget.reactions),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();

    super.dispose();
  }

  void _initAnimation() {
    final color = AppTheme.of(context).articleReactionsBackgroundColor;
    final border = Border.all(
      width: AppSize.articleReactionsBorderSize,
      color: AppTheme.of(context).articleReactionsBorderColor,
    );
    const endBoxShadow = [
      BoxShadow(
        color: Color.fromRGBO(0, 0, 0, 0.14),
        offset: Offset(0, 4),
        blurRadius: 9,
      ),
    ];

    final newBeginTween = BoxDecoration(
      color: color,
      boxShadow: _beginBoxShadow,
      border: border,
      borderRadius: _borderRadius,
    );
    final newEndTweet = BoxDecoration(
      color: color,
      boxShadow: endBoxShadow,
      border: border,
      borderRadius: _borderRadius,
    );

    final isNeedUpdate = !_isAnimationInitialized ||
      _tween.begin != newBeginTween ||
      _tween.end != newEndTweet;
    
    if (isNeedUpdate) {
      _tween = DecorationTween(
        begin: newBeginTween,
        end: newEndTweet,
      );
      _animation = _tween.animate(_animationController);

      _isAnimationInitialized = true;
    }
  }

  void _onTapDown(TapDownDetails details) => _animationController.forward(from: 1);

  void _onTapUp(TapUpDetails details) => _animationController.reverse();

  void _onTapCancel() => _animationController.reverse();
}
