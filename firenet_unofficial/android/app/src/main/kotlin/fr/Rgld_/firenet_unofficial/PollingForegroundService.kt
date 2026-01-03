package fr.Rgld_.firenet_unofficial

import android.app.*
import android.content.Context
import android.content.Intent
import android.os.Build
import android.os.IBinder
import android.os.PowerManager
import androidx.core.app.NotificationCompat
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.embedding.engine.dart.DartExecutor
import io.flutter.plugin.common.MethodChannel

class PollingForegroundService : Service() {
    private var wakeLock: PowerManager.WakeLock? = null
    private var flutterEngine: FlutterEngine? = null
    private var methodChannel: MethodChannel? = null

    companion object {
        const val CHANNEL_ID = "polling_foreground_service"
        const val NOTIFICATION_ID = 1
        const val METHOD_CHANNEL = "fr.rgld.firenet/polling_service"

        const val ACTION_START = "START_FOREGROUND_SERVICE"
        const val ACTION_STOP = "STOP_FOREGROUND_SERVICE"
    }

    override fun onCreate() {
        super.onCreate()
        createNotificationChannel()
        acquireWakeLock()
    }

    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        when (intent?.action) {
            ACTION_START -> {
                startForeground(NOTIFICATION_ID, createNotification())
                // The actual polling will be handled by Flutter via MethodChannel
            }
            ACTION_STOP -> {
                stopForeground(true)
                stopSelf()
            }
        }
        return START_STICKY // Restart service if killed by system
    }

    override fun onBind(intent: Intent?): IBinder? = null

    override fun onDestroy() {
        super.onDestroy()
        releaseWakeLock()
        flutterEngine?.destroy()
    }

    private fun acquireWakeLock() {
        val powerManager = getSystemService(Context.POWER_SERVICE) as PowerManager
        wakeLock = powerManager.newWakeLock(
            PowerManager.PARTIAL_WAKE_LOCK,
            "PollingForegroundService::WakeLock"
        )
        wakeLock?.acquire(10*60*1000L /*10 minutes*/)
    }

    private fun releaseWakeLock() {
        wakeLock?.let {
            if (it.isHeld) {
                it.release()
            }
        }
    }

    private fun createNotificationChannel() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            val channel = NotificationChannel(
                CHANNEL_ID,
                getString(R.string.foreground_service_channel_name),
                NotificationManager.IMPORTANCE_LOW
            ).apply {
                description = getString(R.string.foreground_service_channel_description)
                setShowBadge(false)
            }

            val notificationManager = getSystemService(NotificationManager::class.java)
            notificationManager.createNotificationChannel(channel)
        }
    }

    private fun createNotification(): Notification {
        val notificationIntent = Intent(this, MainActivity::class.java)
        val pendingIntent = PendingIntent.getActivity(
            this,
            0,
            notificationIntent,
            PendingIntent.FLAG_IMMUTABLE
        )

        return NotificationCompat.Builder(this, CHANNEL_ID)
            .setContentTitle(getString(R.string.foreground_service_notification_title))
            .setContentText(getString(R.string.foreground_service_notification_text))
            .setSmallIcon(android.R.drawable.ic_dialog_info)
            .setContentIntent(pendingIntent)
            .setOngoing(true)
            .setPriority(NotificationCompat.PRIORITY_LOW)
            .build()
    }
}
