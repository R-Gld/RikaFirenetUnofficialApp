package fr.Rgld_.firenet_unofficial

import android.app.PendingIntent
import android.appwidget.AppWidgetManager
import android.appwidget.AppWidgetProvider
import android.content.Context
import android.content.Intent
import android.widget.RemoteViews
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale

class StoveStatusWidgetProvider : AppWidgetProvider() {

    override fun onUpdate(
        context: Context,
        appWidgetManager: AppWidgetManager,
        appWidgetIds: IntArray
    ) {
        for (appWidgetId in appWidgetIds) {
            updateAppWidget(context, appWidgetManager, appWidgetId)
        }
    }

    override fun onEnabled(context: Context) {
        // Called when the first widget is added
        super.onEnabled(context)
    }

    override fun onDisabled(context: Context) {
        // Called when the last widget is removed
        super.onDisabled(context)
    }

    private fun updateAppWidget(
        context: Context,
        appWidgetManager: AppWidgetManager,
        appWidgetId: Int
    ) {
        val views = RemoteViews(context.packageName, R.layout.stove_status_widget)

        // Get data from SharedPreferences - home_widget uses this specific name
        val prefs = context.getSharedPreferences("HomeWidgetPreferences", Context.MODE_PRIVATE)

        // Debug: log all keys to see what's available
        android.util.Log.d("StoveWidget", "Available keys: ${prefs.all.keys}")
        android.util.Log.d("StoveWidget", "All values: ${prefs.all}")

        val stoveName = prefs.getString("stove_name", "Poêle") ?: "Poêle"
        val currentTemp = prefs.getString("current_temperature", "--") ?: "--"
        val targetTemp = prefs.getString("target_temperature", "--") ?: "--"
        val flameTemp = prefs.getString("flame_temperature", "--") ?: "--"
        val status = prefs.getString("status", "État inconnu") ?: "État inconnu"
        val pellets = prefs.getString("pellets_consumption", "--") ?: "--"
        val lastUpdateTimestamp = prefs.getLong("last_update_timestamp", 0)
        val isOnline = prefs.getBoolean("is_online", false)
        val hasError = prefs.getBoolean("has_error", false)

        // Update views
        views.setTextViewText(R.id.stove_name, stoveName)
        views.setTextViewText(R.id.status, status)
        views.setTextViewText(R.id.current_temperature, currentTemp)
        views.setTextViewText(R.id.target_temperature, targetTemp)
        views.setTextViewText(R.id.flame_temperature, "$flameTemp°C")
        views.setTextViewText(R.id.pellets_consumption, "$pellets kg")

        // Format last update time
        if (lastUpdateTimestamp > 0) {
            try {
                val date = Date(lastUpdateTimestamp)
                val outputFormat = SimpleDateFormat("HH:mm", Locale.getDefault())
                val formattedTime = outputFormat.format(date)
                views.setTextViewText(R.id.last_update, "Dernière mise à jour: $formattedTime")
            } catch (e: Exception) {
                views.setTextViewText(R.id.last_update, "Dernière mise à jour: --:--")
            }
        } else {
            views.setTextViewText(R.id.last_update, "Dernière mise à jour: --:--")
        }

        // Add click listener to refresh widget when tapped
        val intent = Intent(context, StoveStatusWidgetProvider::class.java)
        intent.action = AppWidgetManager.ACTION_APPWIDGET_UPDATE
        intent.putExtra(AppWidgetManager.EXTRA_APPWIDGET_IDS, intArrayOf(appWidgetId))
        val pendingIntent = PendingIntent.getBroadcast(
            context,
            appWidgetId,
            intent,
            PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE
        )
        views.setOnClickPendingIntent(R.id.stove_name, pendingIntent)

        // Update widget
        appWidgetManager.updateAppWidget(appWidgetId, views)
    }
}
