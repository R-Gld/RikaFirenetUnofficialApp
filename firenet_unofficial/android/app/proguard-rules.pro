# Flutter wrapper
-keep class io.flutter.app.** { *; }
-keep class io.flutter.plugin.** { *; }
-keep class io.flutter.util.** { *; }
-keep class io.flutter.view.** { *; }
-keep class io.flutter.** { *; }
-keep class io.flutter.plugins.** { *; }
-dontwarn io.flutter.embedding.**

# Freezed models
-keep class **.freezed.dart { *; }
-keep class * extends com.google.gson.TypeAdapter

# Dio HTTP client
-keep class com.jakewharton.retrofit2.** { *; }
-dontwarn okhttp3.**
-dontwarn okio.**
-keepattributes Signature
-keepattributes Exceptions
-keepattributes *Annotation*

# Flutter plugins utilisés
-keep class io.flutter.plugins.flutter_secure_storage.** { *; }
-keep class com.dexterous.flutterlocalnotifications.** { *; }
-keep class be.tramckrijte.workmanager.** { *; }
-keep class androidx.work.** { *; }
-keep class es.antonborri.home_widget.** { *; }

# Custom Kotlin classes
-keep class fr.Rgld_.firenet_unofficial.** { *; }

# Keep native methods
-keepclassmembers class * {
    native <methods>;
}

# Preserve line numbers for debugging
-keepattributes SourceFile,LineNumberTable
-renamesourcefileattribute SourceFile

# Gson (if used indirectly)
-keepattributes Signature
-keepattributes *Annotation*
-keep class sun.misc.Unsafe { *; }
-keep class com.google.gson.stream.** { *; }
