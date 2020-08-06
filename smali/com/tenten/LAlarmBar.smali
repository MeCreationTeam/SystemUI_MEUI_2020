.class public Lcom/tenten/LAlarmBar;
.super Landroid/widget/ImageView;
.source "LAlarmBar.java"


# instance fields
.field alarmSet:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v3, p0, Lcom/tenten/LAlarmBar;->alarmSet:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.ALARM_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/tenten/LAlarmBar$1;

    invoke-direct {v1, p0}, Lcom/tenten/LAlarmBar$1;-><init>(Lcom/tenten/LAlarmBar;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v1, "stat_notify_alarm"

    invoke-virtual {p0, v1}, Lcom/tenten/LAlarmBar;->setDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tenten/LAlarmBar;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "alarming"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v3}, Lcom/tenten/LAlarmBar;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/tenten/LAlarmBar;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public setDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 8

    const-string v5, "com.android.systemui"

    const/4 v2, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/tenten/LAlarmBar;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v6, "com.android.systemui"

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    const-string v6, "drawable"

    const-string v7, "com.android.systemui"

    invoke-virtual {v1, p1, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :goto_0
    return-object v4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
