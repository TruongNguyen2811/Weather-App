package com.example.app_model

import android.appwidget.AppWidgetManager
import android.content.Context
import android.content.SharedPreferences
import android.graphics.Bitmap
import android.graphics.Color
import android.widget.ImageView
import android.widget.RemoteViews
import androidx.core.widget.RemoteViewsCompat.setViewBackgroundColor
import androidx.core.widget.RemoteViewsCompat.setViewBackgroundResource
import com.bumptech.glide.Glide
import com.bumptech.glide.request.RequestOptions
import com.bumptech.glide.request.target.AppWidgetTarget
import com.bumptech.glide.request.transition.Transition
import es.antonborri.home_widget.HomeWidgetLaunchIntent
import es.antonborri.home_widget.HomeWidgetProvider

class AppWidgetProvider : HomeWidgetProvider() {
    override fun onUpdate(
        context: Context,
        appWidgetManager: AppWidgetManager,
        appWidgetIds: IntArray,
        widgetData: SharedPreferences
    ) {
        appWidgetIds.forEach { widgetId ->
            val views = RemoteViews(context.packageName, R.layout.widget_layout).apply {

                // Open App on Widget Click
                val pendingIntent = HomeWidgetLaunchIntent.getActivity(
                    context,
                    MainActivity::class.java
                )
                setOnClickPendingIntent(R.id.widget_root, pendingIntent)

                val temp = widgetData.getString("text", "")
                val imageUrl = widgetData.getString("imageUrl", "")
                val des = widgetData.getString("des", "")
                val location = widgetData.getString("location", "")
                val isDay = widgetData.getBoolean("isDay", false)
                setTextViewText(R.id.tv_tempC, temp)
                setTextViewText(R.id.tv_des, des)
                setTextViewText(R.id.tv_location, location)
                for (appWidgetId in appWidgetIds) {
        val views = RemoteViews(context.packageName, R.layout.widget_layout)
        views.setTextViewText(R.id.tv_tempC, temp)
        views.setTextViewText(R.id.tv_des, des)
        appWidgetManager.updateAppWidget(appWidgetId, views)
    }


                val awt: AppWidgetTarget = object : AppWidgetTarget(context.applicationContext, R.id.icon, this, *appWidgetIds) {
                    override fun onResourceReady(resource: Bitmap, transition: Transition<in Bitmap>?) {
                        super.onResourceReady(resource, transition)
                    }
                }

                val options = RequestOptions().
                override(500, 500).placeholder(R.drawable.loading)

                Glide.with(context.applicationContext).asBitmap().load(imageUrl).apply(options).into(awt)
            }
            appWidgetManager.updateAppWidget(widgetId, views)
        }
    }
}