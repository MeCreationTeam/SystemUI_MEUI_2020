.class Lcom/android/systemui/statusbar/StatusBarPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "StatusBarPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/StatusBarPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/StatusBarPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v8, "StatusBarPolicy"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v4, "StatusBarPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Receive intent ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    #calls: Lcom/android/systemui/statusbar/StatusBarPolicy;->updateBattery(Landroid/content/Intent;)V
    invoke-static {v4, p2}, Lcom/android/systemui/statusbar/StatusBarPolicy;->access$100(Lcom/android/systemui/statusbar/StatusBarPolicy;Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v4, "android.intent.action.ALARM_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    #calls: Lcom/android/systemui/statusbar/StatusBarPolicy;->updateAlarm(Landroid/content/Intent;)V
    invoke-static {v4, p2}, Lcom/android/systemui/statusbar/StatusBarPolicy;->access$200(Lcom/android/systemui/statusbar/StatusBarPolicy;Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string v4, "android.intent.action.SYNC_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    #calls: Lcom/android/systemui/statusbar/StatusBarPolicy;->updateSyncState(Landroid/content/Intent;)V
    invoke-static {v4, p2}, Lcom/android/systemui/statusbar/StatusBarPolicy;->access$300(Lcom/android/systemui/statusbar/StatusBarPolicy;Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    const-string v4, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    #calls: Lcom/android/systemui/statusbar/StatusBarPolicy;->onBatteryLow(Landroid/content/Intent;)V
    invoke-static {v4, p2}, Lcom/android/systemui/statusbar/StatusBarPolicy;->access$400(Lcom/android/systemui/statusbar/StatusBarPolicy;Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    const-string v4, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    #calls: Lcom/android/systemui/statusbar/StatusBarPolicy;->onBatteryOkay(Landroid/content/Intent;)V
    invoke-static {v4, p2}, Lcom/android/systemui/statusbar/StatusBarPolicy;->access$500(Lcom/android/systemui/statusbar/StatusBarPolicy;Landroid/content/Intent;)V

    goto :goto_0

    :cond_6
    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "android.bluetooth.headset.action.STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "android.bluetooth.a2dp.action.SINK_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "android.bluetooth.pbap.intent.action.PBAP_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_7
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    #calls: Lcom/android/systemui/statusbar/StatusBarPolicy;->updateBluetooth(Landroid/content/Intent;)V
    invoke-static {v4, p2}, Lcom/android/systemui/statusbar/StatusBarPolicy;->access$600(Lcom/android/systemui/statusbar/StatusBarPolicy;Landroid/content/Intent;)V

    goto :goto_0

    :cond_8
    const-string v4, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_9
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    #calls: Lcom/android/systemui/statusbar/StatusBarPolicy;->updateWifi(Landroid/content/Intent;)V
    invoke-static {v4, p2}, Lcom/android/systemui/statusbar/StatusBarPolicy;->access$700(Lcom/android/systemui/statusbar/StatusBarPolicy;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_a
    const-string v4, "android.net.wifi.WIFI_STATE_ERROR"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    #calls: Lcom/android/systemui/statusbar/StatusBarPolicy;->HQ_wifiLoadingError()V
    invoke-static {v4}, Lcom/android/systemui/statusbar/StatusBarPolicy;->access$800(Lcom/android/systemui/statusbar/StatusBarPolicy;)V

    goto/16 :goto_0

    :cond_b
    const-string v4, "android.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    const-string v4, "android.location.GPS_FIX_CHANGE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    :cond_c
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    #calls: Lcom/android/systemui/statusbar/StatusBarPolicy;->updateGps(Landroid/content/Intent;)V
    invoke-static {v4, p2}, Lcom/android/systemui/statusbar/StatusBarPolicy;->access$900(Lcom/android/systemui/statusbar/StatusBarPolicy;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_d
    const-string v4, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    const-string v4, "android.media.VIBRATE_SETTING_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    :cond_e
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    #calls: Lcom/android/systemui/statusbar/StatusBarPolicy;->updateVolume()V
    invoke-static {v4}, Lcom/android/systemui/statusbar/StatusBarPolicy;->access$1000(Lcom/android/systemui/statusbar/StatusBarPolicy;)V

    goto/16 :goto_0

    :cond_f
    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    #calls: Lcom/android/systemui/statusbar/StatusBarPolicy;->updateSimState(Landroid/content/Intent;)V
    invoke-static {v4, p2}, Lcom/android/systemui/statusbar/StatusBarPolicy;->access$1100(Lcom/android/systemui/statusbar/StatusBarPolicy;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_10
    const-string v4, "com.android.internal.telephony.cdma.intent.action.TTY_ENABLED_CHANGE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    #calls: Lcom/android/systemui/statusbar/StatusBarPolicy;->updateTTY(Landroid/content/Intent;)V
    invoke-static {v4, p2}, Lcom/android/systemui/statusbar/StatusBarPolicy;->access$1200(Lcom/android/systemui/statusbar/StatusBarPolicy;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_11
    const-string v4, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    const-string v4, "state"

    const/4 v5, -0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "StatusBarPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "state of Intent.ACTION_HEADSET_PLUG is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v3, v7, :cond_12

    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    #calls: Lcom/android/systemui/statusbar/StatusBarPolicy;->updateHeadSet(Z)V
    invoke-static {v4, v7}, Lcom/android/systemui/statusbar/StatusBarPolicy;->access$1300(Lcom/android/systemui/statusbar/StatusBarPolicy;Z)V

    goto/16 :goto_0

    :cond_12
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    #calls: Lcom/android/systemui/statusbar/StatusBarPolicy;->updateHeadSet(Z)V
    invoke-static {v4, v6}, Lcom/android/systemui/statusbar/StatusBarPolicy;->access$1300(Lcom/android/systemui/statusbar/StatusBarPolicy;Z)V

    goto/16 :goto_0

    :cond_13
    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    const-string v4, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    :cond_14
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    #calls: Lcom/android/systemui/statusbar/StatusBarPolicy;->updateConnectivity(Landroid/content/Intent;)V
    invoke-static {v4, p2}, Lcom/android/systemui/statusbar/StatusBarPolicy;->access$1400(Lcom/android/systemui/statusbar/StatusBarPolicy;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_15
    const-string v4, "android.net.wimax.WIMAX_STATUS_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    const-string v4, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    const-string v4, "android.net.wimax.WIMAX_STATE_CHANGE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    :cond_16
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    #calls: Lcom/android/systemui/statusbar/StatusBarPolicy;->updateWiMAX(Landroid/content/Intent;)V
    invoke-static {v4, p2}, Lcom/android/systemui/statusbar/StatusBarPolicy;->access$1500(Lcom/android/systemui/statusbar/StatusBarPolicy;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_17
    const-string v4, "interruptforfaraway"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    const-string v4, "wifi_last_ssid"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    #getter for: Lcom/android/systemui/statusbar/StatusBarPolicy;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/systemui/statusbar/StatusBarPolicy;->access$1600(Lcom/android/systemui/statusbar/StatusBarPolicy;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_auto_connect"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_18

    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    #calls: Lcom/android/systemui/statusbar/StatusBarPolicy;->showDialog(Ljava/lang/String;)V
    invoke-static {v4, v2}, Lcom/android/systemui/statusbar/StatusBarPolicy;->access$1700(Lcom/android/systemui/statusbar/StatusBarPolicy;Ljava/lang/String;)V

    :cond_18
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    #calls: Lcom/android/systemui/statusbar/StatusBarPolicy;->beforeShowDisconnDialog(Ljava/lang/String;)Z
    invoke-static {v4, v2}, Lcom/android/systemui/statusbar/StatusBarPolicy;->access$1800(Lcom/android/systemui/statusbar/StatusBarPolicy;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    #calls: Lcom/android/systemui/statusbar/StatusBarPolicy;->showWifiDisconnDialog()V
    invoke-static {v4}, Lcom/android/systemui/statusbar/StatusBarPolicy;->access$1900(Lcom/android/systemui/statusbar/StatusBarPolicy;)V

    goto/16 :goto_0

    :cond_19
    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x0

    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    #getter for: Lcom/android/systemui/statusbar/StatusBarPolicy;->numPhones:I
    invoke-static {v4}, Lcom/android/systemui/statusbar/StatusBarPolicy;->access$2000(Lcom/android/systemui/statusbar/StatusBarPolicy;)I

    move-result v4

    if-ge v1, v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    #calls: Lcom/android/systemui/statusbar/StatusBarPolicy;->updateSignalStrength(I)V
    invoke-static {v4, v1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->access$2100(Lcom/android/systemui/statusbar/StatusBarPolicy;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
