.class public Lcom/lidroid/systemui/quickpanel/WifiApButton;
.super Lcom/lidroid/systemui/quickpanel/PowerButton;
.source "WifiApButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lidroid/systemui/quickpanel/WifiApButton$1;,
        Lcom/lidroid/systemui/quickpanel/WifiApButton$WifiApStateTracker;
    }
.end annotation


# static fields
.field private static final sWifiApState:Lcom/lidroid/systemui/quickpanel/StateTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/lidroid/systemui/quickpanel/WifiApButton$WifiApStateTracker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/lidroid/systemui/quickpanel/WifiApButton$WifiApStateTracker;-><init>(Lcom/lidroid/systemui/quickpanel/WifiApButton$1;)V

    sput-object v0, Lcom/lidroid/systemui/quickpanel/WifiApButton;->sWifiApState:Lcom/lidroid/systemui/quickpanel/StateTracker;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/PowerButton;-><init>()V

    const-string v0, "toggleWifiAp"

    iput-object v0, p0, Lcom/lidroid/systemui/quickpanel/WifiApButton;->mType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getBroadcastIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method

.method protected getText()I
    .locals 1

    const v0, 0x7f080096

    return v0
.end method

.method protected handleLongClick()Z
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.TetherSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/WifiApButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x1

    return v1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    sget-object v0, Lcom/lidroid/systemui/quickpanel/WifiApButton;->sWifiApState:Lcom/lidroid/systemui/quickpanel/StateTracker;

    invoke-virtual {v0, p1, p2}, Lcom/lidroid/systemui/quickpanel/StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method protected toggleState()V
    .locals 2

    sget-object v0, Lcom/lidroid/systemui/quickpanel/WifiApButton;->sWifiApState:Lcom/lidroid/systemui/quickpanel/StateTracker;

    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/WifiApButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lidroid/systemui/quickpanel/StateTracker;->toggleState(Landroid/content/Context;)V

    return-void
.end method

.method protected updateState()V
    .locals 4

    const v3, 0x7f0201fd

    const v2, 0x7f0201fc

    sget-object v0, Lcom/lidroid/systemui/quickpanel/WifiApButton;->sWifiApState:Lcom/lidroid/systemui/quickpanel/StateTracker;

    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/WifiApButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lidroid/systemui/quickpanel/StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/lidroid/systemui/quickpanel/WifiApButton;->mState:I

    iget v0, p0, Lcom/lidroid/systemui/quickpanel/WifiApButton;->mState:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iput v2, p0, Lcom/lidroid/systemui/quickpanel/WifiApButton;->mIcon:I

    goto :goto_0

    :pswitch_2
    iput v3, p0, Lcom/lidroid/systemui/quickpanel/WifiApButton;->mIcon:I

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/lidroid/systemui/quickpanel/WifiApButton;->sWifiApState:Lcom/lidroid/systemui/quickpanel/StateTracker;

    invoke-virtual {v0}, Lcom/lidroid/systemui/quickpanel/StateTracker;->isTurningOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iput v3, p0, Lcom/lidroid/systemui/quickpanel/WifiApButton;->mIcon:I

    goto :goto_0

    :cond_0
    iput v2, p0, Lcom/lidroid/systemui/quickpanel/WifiApButton;->mIcon:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
