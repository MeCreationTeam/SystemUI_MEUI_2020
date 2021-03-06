.class public Lcom/lidroid/systemui/quickpanel/WifiButton;
.super Lcom/lidroid/systemui/quickpanel/PowerButton;
.source "WifiButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lidroid/systemui/quickpanel/WifiButton$1;,
        Lcom/lidroid/systemui/quickpanel/WifiButton$WifiStateTracker;
    }
.end annotation


# static fields
.field private static final sWifiState:Lcom/lidroid/systemui/quickpanel/StateTracker;


# instance fields
.field private mWiFiInfo:Landroid/net/wifi/WifiInfo;

.field private mWiFiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/lidroid/systemui/quickpanel/WifiButton$WifiStateTracker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/lidroid/systemui/quickpanel/WifiButton$WifiStateTracker;-><init>(Lcom/lidroid/systemui/quickpanel/WifiButton$1;)V

    sput-object v0, Lcom/lidroid/systemui/quickpanel/WifiButton;->sWifiState:Lcom/lidroid/systemui/quickpanel/StateTracker;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/PowerButton;-><init>()V

    const-string v0, "toggleWifi"

    iput-object v0, p0, Lcom/lidroid/systemui/quickpanel/WifiButton;->mType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getBroadcastIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method

.method protected getText()I
    .locals 1

    const v0, 0x7f08006d

    return v0
.end method

.method public getWiFiString(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/lidroid/systemui/quickpanel/WifiButton;->mWiFiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/WifiButton;->mWiFiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/systemui/quickpanel/WifiButton;->mWiFiInfo:Landroid/net/wifi/WifiInfo;

    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/WifiButton;->mWiFiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/WifiButton;->mWiFiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/WifiButton;->mWiFiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "WLAN"

    goto :goto_0
.end method

.method protected handleLongClick()Z
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/WifiButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x1

    return v1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    sget-object v0, Lcom/lidroid/systemui/quickpanel/WifiButton;->sWifiState:Lcom/lidroid/systemui/quickpanel/StateTracker;

    invoke-virtual {v0, p1, p2}, Lcom/lidroid/systemui/quickpanel/StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method protected toggleState()V
    .locals 2

    sget-object v0, Lcom/lidroid/systemui/quickpanel/WifiButton;->sWifiState:Lcom/lidroid/systemui/quickpanel/StateTracker;

    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/WifiButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lidroid/systemui/quickpanel/StateTracker;->toggleState(Landroid/content/Context;)V

    return-void
.end method

.method protected updateState()V
    .locals 4

    invoke-virtual {p0}, Lcom/lidroid/systemui/quickpanel/WifiButton;->updateText()V

    const v3, 0x7f0201ff

    const v2, 0x7f0201fe

    sget-object v0, Lcom/lidroid/systemui/quickpanel/WifiButton;->sWifiState:Lcom/lidroid/systemui/quickpanel/StateTracker;

    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/WifiButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lidroid/systemui/quickpanel/StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/lidroid/systemui/quickpanel/WifiButton;->mState:I

    iget v0, p0, Lcom/lidroid/systemui/quickpanel/WifiButton;->mState:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iput v2, p0, Lcom/lidroid/systemui/quickpanel/WifiButton;->mIcon:I

    goto :goto_0

    :pswitch_2
    iput v3, p0, Lcom/lidroid/systemui/quickpanel/WifiButton;->mIcon:I

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/lidroid/systemui/quickpanel/WifiButton;->sWifiState:Lcom/lidroid/systemui/quickpanel/StateTracker;

    invoke-virtual {v0}, Lcom/lidroid/systemui/quickpanel/StateTracker;->isTurningOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iput v3, p0, Lcom/lidroid/systemui/quickpanel/WifiButton;->mIcon:I

    goto :goto_0

    :cond_0
    iput v2, p0, Lcom/lidroid/systemui/quickpanel/WifiButton;->mIcon:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected updateText()V
    .locals 4

    iget-object v2, p0, Lcom/lidroid/systemui/quickpanel/PowerButton;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v2, :cond_0

    const v0, 0x7f0a0055

    iget-object v2, p0, Lcom/lidroid/systemui/quickpanel/PowerButton;->mView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/lidroid/systemui/quickpanel/WifiButton;->getWiFiString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
