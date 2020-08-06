.class public Lcom/tenten/LSignalBar;
.super Landroid/widget/ImageView;
.source "LSignalBar.java"


# instance fields
.field private mAlwaysUseCdmaRssi:Z

.field mInetCondition:I

.field private mPhone:Landroid/telephony/TelephonyManager;

.field mPhoneState:I

.field mServiceState:Landroid/telephony/ServiceState;

.field mSignalStrength:Landroid/telephony/SignalStrength;

.field private final sSignalImages:[[Landroid/graphics/drawable/Drawable;

.field private final sSignalImages_r:[[Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v5, p0, Lcom/tenten/LSignalBar;->mPhoneState:I

    new-array v2, v7, [[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x5

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    const-string v4, "stat_sys_signal_0"

    invoke-virtual {p0, v4}, Lcom/tenten/LSignalBar;->setDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v5

    const-string v4, "stat_sys_signal_1"

    invoke-virtual {p0, v4}, Lcom/tenten/LSignalBar;->setDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v6

    const-string v4, "stat_sys_signal_2"

    invoke-virtual {p0, v4}, Lcom/tenten/LSignalBar;->setDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v7

    const-string v4, "stat_sys_signal_3"

    invoke-virtual {p0, v4}, Lcom/tenten/LSignalBar;->setDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v8

    const-string v4, "stat_sys_signal_4"

    invoke-virtual {p0, v4}, Lcom/tenten/LSignalBar;->setDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v9

    aput-object v3, v2, v5

    const/4 v3, 0x5

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    const-string v4, "stat_sys_signal_0_fully"

    invoke-virtual {p0, v4}, Lcom/tenten/LSignalBar;->setDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v5

    const-string v4, "stat_sys_signal_1_fully"

    invoke-virtual {p0, v4}, Lcom/tenten/LSignalBar;->setDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v6

    const-string v4, "stat_sys_signal_2_fully"

    invoke-virtual {p0, v4}, Lcom/tenten/LSignalBar;->setDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v7

    const-string v4, "stat_sys_signal_3_fully"

    invoke-virtual {p0, v4}, Lcom/tenten/LSignalBar;->setDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v8

    const-string v4, "stat_sys_signal_4_fully"

    invoke-virtual {p0, v4}, Lcom/tenten/LSignalBar;->setDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v9

    aput-object v3, v2, v6

    iput-object v2, p0, Lcom/tenten/LSignalBar;->sSignalImages:[[Landroid/graphics/drawable/Drawable;

    new-array v2, v7, [[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x5

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    const-string v4, "stat_sys_r_signal_0"

    invoke-virtual {p0, v4}, Lcom/tenten/LSignalBar;->setDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v5

    const-string v4, "stat_sys_r_signal_1"

    invoke-virtual {p0, v4}, Lcom/tenten/LSignalBar;->setDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v6

    const-string v4, "stat_sys_r_signal_2"

    invoke-virtual {p0, v4}, Lcom/tenten/LSignalBar;->setDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v7

    const-string v4, "stat_sys_r_signal_3"

    invoke-virtual {p0, v4}, Lcom/tenten/LSignalBar;->setDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v8

    const-string v4, "stat_sys_r_signal_4"

    invoke-virtual {p0, v4}, Lcom/tenten/LSignalBar;->setDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v9

    aput-object v3, v2, v5

    const/4 v3, 0x5

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    const-string v4, "stat_sys_r_signal_0_fully"

    invoke-virtual {p0, v4}, Lcom/tenten/LSignalBar;->setDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v5

    const-string v4, "stat_sys_r_signal_1_fully"

    invoke-virtual {p0, v4}, Lcom/tenten/LSignalBar;->setDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v6

    const-string v4, "stat_sys_r_signal_2_fully"

    invoke-virtual {p0, v4}, Lcom/tenten/LSignalBar;->setDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v7

    const-string v4, "stat_sys_r_signal_3_fully"

    invoke-virtual {p0, v4}, Lcom/tenten/LSignalBar;->setDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v8

    const-string v4, "stat_sys_r_signal_4_fully"

    invoke-virtual {p0, v4}, Lcom/tenten/LSignalBar;->setDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v9

    aput-object v3, v2, v6

    iput-object v2, p0, Lcom/tenten/LSignalBar;->sSignalImages_r:[[Landroid/graphics/drawable/Drawable;

    iput-boolean v6, p0, Lcom/tenten/LSignalBar;->mAlwaysUseCdmaRssi:Z

    const v2, 0x7f0200f0

    invoke-virtual {p0, v2}, Lcom/tenten/LSignalBar;->setImageResource(I)V

    const-string v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/tenten/LSignalBar;->mPhone:Landroid/telephony/TelephonyManager;

    new-instance v2, Landroid/telephony/SignalStrength;

    invoke-direct {v2}, Landroid/telephony/SignalStrength;-><init>()V

    iput-object v2, p0, Lcom/tenten/LSignalBar;->mSignalStrength:Landroid/telephony/SignalStrength;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v2, Lcom/tenten/LSignalBar$1;

    invoke-direct {v2, p0}, Lcom/tenten/LSignalBar$1;-><init>(Lcom/tenten/LSignalBar;)V

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Lcom/tenten/LSignalBar$2;

    invoke-direct {v1, p0}, Lcom/tenten/LSignalBar$2;-><init>(Lcom/tenten/LSignalBar;)V

    iget-object v2, p0, Lcom/tenten/LSignalBar;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    const/16 v3, 0x1e1

    invoke-virtual {v2, v1, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/tenten/LSignalBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/tenten/LSignalBar;->updateSignalStrength()V

    return-void
.end method

.method static synthetic access$100(Lcom/tenten/LSignalBar;)Z
    .locals 1

    invoke-direct {p0}, Lcom/tenten/LSignalBar;->isCdma()Z

    move-result v0

    return v0
.end method

.method private getCdmaLevel()I
    .locals 5

    iget-object v4, p0, Lcom/tenten/LSignalBar;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    iget-object v4, p0, Lcom/tenten/LSignalBar;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, -0x4b

    if-lt v0, v4, :cond_0

    const/4 v2, 0x4

    :goto_0
    const/16 v4, -0x5a

    if-lt v1, v4, :cond_4

    const/4 v3, 0x4

    :goto_1
    if-ge v2, v3, :cond_8

    :goto_2
    return v2

    :cond_0
    const/16 v4, -0x55

    if-lt v0, v4, :cond_1

    const/4 v2, 0x3

    goto :goto_0

    :cond_1
    const/16 v4, -0x5f

    if-lt v0, v4, :cond_2

    const/4 v2, 0x2

    goto :goto_0

    :cond_2
    const/16 v4, -0x64

    if-lt v0, v4, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    const/16 v4, -0x6e

    if-lt v1, v4, :cond_5

    const/4 v3, 0x3

    goto :goto_1

    :cond_5
    const/16 v4, -0x82

    if-lt v1, v4, :cond_6

    const/4 v3, 0x2

    goto :goto_1

    :cond_6
    const/16 v4, -0x96

    if-lt v1, v4, :cond_7

    const/4 v3, 0x1

    goto :goto_1

    :cond_7
    const/4 v3, 0x0

    goto :goto_1

    :cond_8
    move v2, v3

    goto :goto_2
.end method

.method private getEvdoLevel()I
    .locals 5

    iget-object v4, p0, Lcom/tenten/LSignalBar;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    iget-object v4, p0, Lcom/tenten/LSignalBar;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, -0x41

    if-lt v0, v4, :cond_0

    const/4 v2, 0x4

    :goto_0
    const/4 v4, 0x7

    if-lt v1, v4, :cond_4

    const/4 v3, 0x4

    :goto_1
    if-ge v2, v3, :cond_8

    :goto_2
    return v2

    :cond_0
    const/16 v4, -0x4b

    if-lt v0, v4, :cond_1

    const/4 v2, 0x3

    goto :goto_0

    :cond_1
    const/16 v4, -0x5a

    if-lt v0, v4, :cond_2

    const/4 v2, 0x2

    goto :goto_0

    :cond_2
    const/16 v4, -0x69

    if-lt v0, v4, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    const/4 v4, 0x5

    if-lt v1, v4, :cond_5

    const/4 v3, 0x3

    goto :goto_1

    :cond_5
    const/4 v4, 0x3

    if-lt v1, v4, :cond_6

    const/4 v3, 0x2

    goto :goto_1

    :cond_6
    const/4 v4, 0x1

    if-lt v1, v4, :cond_7

    const/4 v3, 0x1

    goto :goto_1

    :cond_7
    const/4 v3, 0x0

    goto :goto_1

    :cond_8
    move v2, v3

    goto :goto_2
.end method

.method private hasService()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tenten/LSignalBar;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tenten/LSignalBar;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x1

    :cond_0
    :pswitch_1
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isCdma()Z
    .locals 1

    iget-object v0, p0, Lcom/tenten/LSignalBar;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tenten/LSignalBar;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEvdo()Z
    .locals 2

    iget-object v0, p0, Lcom/tenten/LSignalBar;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tenten/LSignalBar;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/tenten/LSignalBar;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/tenten/LSignalBar;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateSignalStrength()V
    .locals 7

    const/4 v1, -0x1

    iget-object v4, p0, Lcom/tenten/LSignalBar;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/tenten/LSignalBar;->hasService()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/tenten/LSignalBar;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    iget-object v4, p0, Lcom/tenten/LSignalBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    const-string v4, "stat_sys_signal_null"

    invoke-virtual {p0, v4}, Lcom/tenten/LSignalBar;->setDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_0
    invoke-virtual {p0, v3}, Lcom/tenten/LSignalBar;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void

    :cond_1
    const-string v4, "stat_sys_signal_null"

    invoke-virtual {p0, v4}, Lcom/tenten/LSignalBar;->setDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/tenten/LSignalBar;->isCdma()Z

    move-result v4

    if-nez v4, :cond_9

    iget-object v4, p0, Lcom/tenten/LSignalBar;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    const/4 v4, 0x2

    if-le v0, v4, :cond_3

    const/16 v4, 0x63

    if-ne v0, v4, :cond_4

    :cond_3
    const/4 v1, 0x0

    :goto_2
    iget-object v4, p0, Lcom/tenten/LSignalBar;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/tenten/LSignalBar;->sSignalImages_r:[[Landroid/graphics/drawable/Drawable;

    iget v5, p0, Lcom/tenten/LSignalBar;->mInetCondition:I

    aget-object v2, v4, v5

    :goto_3
    aget-object v3, v2, v1

    invoke-virtual {p0, v3}, Lcom/tenten/LSignalBar;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_4
    const/16 v4, 0xc

    if-lt v0, v4, :cond_5

    const/4 v1, 0x4

    goto :goto_2

    :cond_5
    const/16 v4, 0x8

    if-lt v0, v4, :cond_6

    const/4 v1, 0x3

    goto :goto_2

    :cond_6
    const/4 v4, 0x5

    if-lt v0, v4, :cond_7

    const/4 v1, 0x2

    goto :goto_2

    :cond_7
    const/4 v1, 0x1

    goto :goto_2

    :cond_8
    iget-object v4, p0, Lcom/tenten/LSignalBar;->sSignalImages:[[Landroid/graphics/drawable/Drawable;

    iget v5, p0, Lcom/tenten/LSignalBar;->mInetCondition:I

    aget-object v2, v4, v5

    goto :goto_3

    :cond_9
    iget-object v4, p0, Lcom/tenten/LSignalBar;->sSignalImages:[[Landroid/graphics/drawable/Drawable;

    iget v5, p0, Lcom/tenten/LSignalBar;->mInetCondition:I

    aget-object v2, v4, v5

    iget v4, p0, Lcom/tenten/LSignalBar;->mPhoneState:I

    if-nez v4, :cond_a

    invoke-direct {p0}, Lcom/tenten/LSignalBar;->isEvdo()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-boolean v4, p0, Lcom/tenten/LSignalBar;->mAlwaysUseCdmaRssi:Z

    if-nez v4, :cond_a

    invoke-direct {p0}, Lcom/tenten/LSignalBar;->getEvdoLevel()I

    move-result v1

    goto :goto_3

    :cond_a
    invoke-direct {p0}, Lcom/tenten/LSignalBar;->getCdmaLevel()I

    move-result v1

    goto :goto_3
.end method


# virtual methods
.method public setDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 8

    const-string v5, "com.android.systemui"

    const/4 v2, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/tenten/LSignalBar;->getContext()Landroid/content/Context;

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
