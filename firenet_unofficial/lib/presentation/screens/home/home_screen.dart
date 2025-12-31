import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../l10n/app_localizations.dart';
import '../../../providers/stove_providers.dart';
import '../../../providers/auth_providers.dart';
import '../../widgets/common/loading_indicator.dart';
import '../../widgets/common/error_widget.dart';
import '../../widgets/common/empty_state_widget.dart';
import 'widgets/stove_list_tile.dart';
import '../../theme/app_colors.dart';
import '../stove_detail/stove_detail_screen.dart';

/// Home screen displaying list of available stoves
class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  bool _hasAutoNavigated = false;

  void _navigateToSingleStove(BuildContext context, String stoveId, String stoveName) {
    if (!_hasAutoNavigated && context.mounted) {
      _hasAutoNavigated = true;
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (context.mounted) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (_) => StoveDetailScreen(
                stoveId: stoveId,
                stoveName: stoveName,
              ),
            ),
          );
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final stoveList = ref.watch(stoveListProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.myStoves),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            tooltip: l10n.logout,
            onPressed: () async {
              final confirmed = await showDialog<bool>(
                context: context,
                builder: (context) => AlertDialog(
                  title: Text(l10n.logoutTitle),
                  content: Text(l10n.logoutConfirmation),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.of(context).pop(false),
                      child: Text(l10n.cancel),
                    ),
                    ElevatedButton(
                      onPressed: () => Navigator.of(context).pop(true),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.error,
                        foregroundColor: Colors.white,
                      ),
                      child: Text(l10n.logout),
                    ),
                  ],
                ),
              );

              if (confirmed == true && context.mounted) {
                await ref.read(authStateProvider.notifier).logout();
              }
            },
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          await ref.read(stoveListProvider.notifier).discoverStoves();
        },
        child: stoveList.when(
          loading: () => LoadingIndicator(
            message: l10n.loadingStoves,
          ),
          error: (error, stackTrace) => AppErrorWidget(
            errorMessage: error.toString(),
            onRetry: () {
              ref.read(stoveListProvider.notifier).discoverStoves();
            },
          ),
          data: (stoves) {
            if (stoves.isEmpty) {
              return EmptyStateWidget(
                icon: Icons.fireplace_outlined,
                title: l10n.noStoveFound,
                message: l10n.noStoveAssociated,
                action: ElevatedButton.icon(
                  onPressed: () {
                    ref.read(stoveListProvider.notifier).discoverStoves();
                  },
                  icon: const Icon(Icons.refresh),
                  label: Text(l10n.refresh),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    foregroundColor: AppColors.textOnPrimary,
                  ),
                ),
              );
            }

            // Auto-navigate if only one stove
            if (stoves.length == 1) {
              _navigateToSingleStove(context, stoves[0].id, stoves[0].name);
            }

            return SafeArea(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(vertical: 8),
                itemCount: stoves.length,
              itemBuilder: (context, index) {
                final stove = stoves[index];
                return StoveListTile(
                  stove: stove,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => StoveDetailScreen(
                          stoveId: stove.id,
                          stoveName: stove.name,
                        ),
                      ),
                    );
                  },
                );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
