.class Lcom/tenten/LWifiBar$1;
.super Landroid/content/BroadcastReceiver;
.source "LWifiBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tenten/LWifiBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tenten/LWifiBar;


# direct methods
.method constructor <init>(Lcom/tenten/LWifiBar;)V
    .locals 0

    iput-object p1, p0, Lcom/tenten/LWifiBar$1;->this$0:Lcom/tenten/LWifiBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/tenten/LWifiBar$1;->this$0:Lcom/tenten/LWifiBar;

    #calls: Lcom/tenten/LWifiBar;->updateWifi(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/tenten/LWifiBar;->access$000(Lcom/tenten/LWifiBar;Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_3
    iget-object v1, p0, Lcom/tenten/LWifiBar$1;->this$0:Lcom/tenten/LWifiBar;

    #calls: Lcom/tenten/LWifiBar;->updateConnectivity(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/tenten/LWifiBar;->access$100(Lcom/tenten/LWifiBar;Landroid/content/Intent;)V

    goto :goto_0
.end method
