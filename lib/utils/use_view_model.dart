import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:track_map/utils/view_model.dart';

T useViewModel<T extends ViewModel>(T Function() builder) {
  final viewModel = useMemoized<T>(builder);
  useEffect(() => viewModel.dispose, [viewModel]);
  return viewModel;
}
