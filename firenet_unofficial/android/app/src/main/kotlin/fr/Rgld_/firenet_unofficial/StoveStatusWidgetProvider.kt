package fr.Rgld_.firenet_unofficial

import android.appwidget.AppWidgetManager
import android.appwidget.AppWidgetProvider
import android.content.Context
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

    private fun updateAppWidget(
        context: Context,
        appWidgetManager: AppWidgetManager,
        appWidgetId: Int
    ) {
        val views = RemoteViews(context.packageName, R.layout.stove_status_widget)

        // Get data from SharedPreferences
        val prefs = context.getSharedPreferences("HomeWidgetPreferences", Context.MODE_PRIVATE)

        val stoveName = prefs.getString("stove_name", "Poêle") ?: "Poêle"
        val currentTemp = prefs.getString("current_temperature", "--") ?: "--"
        val targetTemp = prefs.getString("target_temperature", "--") ?: "--"
        val flameTemp = prefs.getString("flame_temperature", "--") ?: "--"
        val status = prefs.getString("status", "État inconnu") ?: "État inconnu"
        val pellets = prefs.getString("pellets_consumption", "--") ?: "--"
        val lastUpdateIso = prefs.getString("last_update", null)
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
        if (lastUpdateIso != null) {
            try {
                val inputFormat = SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss", Locale.getDefault())
                val outputFormat = SimpleDateFormat("HH:mm", Locale.getDefault())
                val date = inputFormat.parse(lastUpdateIso)
                val formattedTime = if (date != null) outputFormat.format(date) else "--:--"
                views.setTextViewText(R.id.last_update, "Dernière mise à jour: $formattedTime")
            } catch (e: Exception) {
                views.setTextViewText(R.id.last_update, "Dernière mise à jour: --:--")
            }
        } else {
            views.setTextViewText(R.id.last_update, "Dernière mise à jour: --:--")
        }

        // Update widget
        appWidgetManager.updateAppWidget(appWidgetId, views)
    }
}
