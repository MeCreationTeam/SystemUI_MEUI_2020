.class public Lcom/tenten/LWifiBar;
.super Landroid/widget/ImageView;
.source "LWifiBar.java"


# instance fields
.field mInetCondition:I

.field private mIsWifiConnected:Z

.field private mLastWifiSignalLevel:I

.field private final sWifiSignalImages:[[Landroid/graphics/drawable/Drawable;

.field private final sWifiTemporarilyNotConnectedImage:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-array v1, v6, [[Landroid/graphics/drawable/Drawable;

    new-array v2, v8, [Landroid/graphics/drawable/Drawable;

    const-string v3, "stat_sys_wifi_signal_1"

    invoke-virtual {p0, v3}, Lcom/tenten/LWifiBar;->setDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "stat_sys_wifi_signal_2"

    invoke-virtual {p0, v3}, Lcom/tenten/LWifiBar;->setDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, "stat_sys_wifi_signal_3"

    invoke-virtual {p0, v3}, Lcom/tenten/LWifiBar;->setDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v6

    const-string v3, "stat_sys_wifi_signal_4"

    invoke-virtual {p0, v3}, Lcom/tenten/LWifiBar;->setDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v7

    aput-object v2, v1, v4

    new-array v2, v8, [Landroid/graphics/drawable/Drawable;

    const-string v3, "stat_sys_wifi_signal_1_fully"

    invoke-virtual {p0, v3}, Lcom/tenten/LWifiBar;->setDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "stat_sys_wifi_signal_2_fully"

    invoke-virtual {p0, v3}, Lcom/tenten/LWifiBar;->setDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, "stat_sys_wifi_signal_3_fully"

    invoke-virtual {p0, v3}, Lcom/tenten/LWifiBar;->setDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v6

    const-string v3, "stat_sys_wifi_signal_4_fully"

    invoke-virtual {p0, v3}, Lcom/tenten/LWifiBar;->setDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v7

    aput-object v2, v1, v5

    iput-object v1, p0, Lcom/tenten/LWifiBar;->sWifiSignalImages:[[Landroid/graphics/drawable/Drawable;

    const-string v1, "stat_sys_wifi_signal_0"

    invoke-virtual {p0, v1}, Lcom/tenten/LWifiBar;->setDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/tenten/LWifiBar;->sWifiTemporarilyNotConnectedImage:Landroid/graphics/drawable/Drawable;

    const/4 v1, -0x1

    iput v1, p0, Lcom/tenten/LWifiBar;->mLastWifiSignalLevel:I

    iput-boolean v4, p0, Lcom/tenten/LWifiBar;->mIsWifiConnected:Z

    iget-object v1, p0, Lcom/tenten/LWifiBar;->sWifiSignalImages:[[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    invoke-virtual {p0, v1}, Lcom/tenten/LWifiBar;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/tenten/LWifiBar;->setVisibility(I)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/tenten/LWifiBar$1;

    invoke-direct {v1, p0}, Lcom/tenten/LWifiBar$1;-><init>(Lcom/tenten/LWifiBar;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/tenten/LWifiBar;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tenten/LWifiBar;->updateWifi(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/tenten/LWifiBar;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tenten/LWifiBar;->updateConnectivity(Landroid/content/Intent;)V

    return-void
.end method

.method private updateConnectivity(Landroid/content/Intent;)V
    .locals 8

    const/4 v4, 0x1

    const/4 v7, -0x1

    const/4 v5, 0x0

    const-string v6, "networkInfo"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    const-string v6, "inetCondition"

    invoke-virtual {p1, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v6, 0x32

    if-le v0, v6, :cond_0

    move v2, v4

    :goto_0
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :goto_1
    return-void

    :cond_0
    move v2, v5

    goto :goto_0

    :pswitch_0
    iput v2, p0, Lcom/tenten/LWifiBar;->mInetCondition:I

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_2

    iput-boolean v4, p0, Lcom/tenten/LWifiBar;->mIsWifiConnected:Z

    iget v4, p0, Lcom/tenten/LWifiBar;->mLastWifiSignalLevel:I

    if-ne v4, v7, :cond_1

    iget-object v4, p0, Lcom/tenten/LWifiBar;->sWifiSignalImages:[[Landroid/graphics/drawable/Drawable;

    iget v6, p0, Lcom/tenten/LWifiBar;->mInetCondition:I

    aget-object v4, v4, v6

    aget-object v1, v4, v5

    :goto_2
    invoke-virtual {p0, v1}, Lcom/tenten/LWifiBar;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v5}, Lcom/tenten/LWifiBar;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/tenten/LWifiBar;->sWifiSignalImages:[[Landroid/graphics/drawable/Drawable;

    iget v6, p0, Lcom/tenten/LWifiBar;->mInetCondition:I

    aget-object v4, v4, v6

    iget v6, p0, Lcom/tenten/LWifiBar;->mLastWifiSignalLevel:I

    aget-object v1, v4, v6

    goto :goto_2

    :cond_2
    iput v7, p0, Lcom/tenten/LWifiBar;->mLastWifiSignalLevel:I

    iput-boolean v5, p0, Lcom/tenten/LWifiBar;->mIsWifiConnected:Z

    iget-object v4, p0, Lcom/tenten/LWifiBar;->sWifiSignalImages:[[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v5

    aget-object v1, v4, v5

    invoke-virtual {p0, v1}, Lcom/tenten/LWifiBar;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lcom/tenten/LWifiBar;->setVisibility(I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private updateWifi(Landroid/content/Intent;)V
    .locals 8

    const/16 v7, 0x8

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "wifi_state"

    const/4 v6, 0x4

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-nez v1, :cond_1

    invoke-virtual {p0, v7}, Lcom/tenten/LWifiBar;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v5, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "connected"

    invoke-virtual {p1, v5, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v7}, Lcom/tenten/LWifiBar;->setVisibility(I)V

    goto :goto_0

    :cond_3
    const-string v5, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "newRssi"

    const/16 v6, -0xc8

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iget-object v5, p0, Lcom/tenten/LWifiBar;->sWifiSignalImages:[[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v1

    array-length v5, v5

    invoke-static {v3, v5}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v4

    iget v5, p0, Lcom/tenten/LWifiBar;->mLastWifiSignalLevel:I

    if-eq v4, v5, :cond_1

    iput v4, p0, Lcom/tenten/LWifiBar;->mLastWifiSignalLevel:I

    iget-boolean v5, p0, Lcom/tenten/LWifiBar;->mIsWifiConnected:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/tenten/LWifiBar;->sWifiSignalImages:[[Landroid/graphics/drawable/Drawable;

    iget v6, p0, Lcom/tenten/LWifiBar;->mInetCondition:I

    aget-object v5, v5, v6

    aget-object v2, v5, v4

    :goto_1
    invoke-virtual {p0, v2}, Lcom/tenten/LWifiBar;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/tenten/LWifiBar;->sWifiTemporarilyNotConnectedImage:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method


# virtual methods
.method public setDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 8

    const-string v5, "com.android.systemui"

    const/4 v2, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/tenten/LWifiBar;->getContext()Landroid/content/Context;

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
