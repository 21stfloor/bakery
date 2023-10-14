import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'rating_bar_customer_review_admin_model.dart';
export 'rating_bar_customer_review_admin_model.dart';

class RatingBarCustomerReviewAdminWidget extends StatefulWidget {
  const RatingBarCustomerReviewAdminWidget({Key? key}) : super(key: key);

  @override
  _RatingBarCustomerReviewAdminWidgetState createState() =>
      _RatingBarCustomerReviewAdminWidgetState();
}

class _RatingBarCustomerReviewAdminWidgetState
    extends State<RatingBarCustomerReviewAdminWidget> {
  late RatingBarCustomerReviewAdminModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RatingBarCustomerReviewAdminModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return RatingBar.builder(
      onRatingUpdate: (newValue) =>
          setState(() => _model.ratingBarValue = newValue),
      itemBuilder: (context, index) => Icon(
        Icons.star_rounded,
        color: FlutterFlowTheme.of(context).warning,
      ),
      direction: Axis.horizontal,
      initialRating: _model.ratingBarValue ??= 3.0,
      unratedColor: FlutterFlowTheme.of(context).accent3,
      itemCount: 5,
      itemSize: 40.0,
      glowColor: FlutterFlowTheme.of(context).warning,
    );
  }
}
