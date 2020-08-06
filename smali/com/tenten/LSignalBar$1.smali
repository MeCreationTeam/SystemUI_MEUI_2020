.class Lcom/tenten/LSignalBar$1;
.super Landroid/content/BroadcastReceiver;
.source "LSignalBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tenten/LSignalBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tenten/LSignalBar;


# direct methods
.method constructor <init>(Lcom/tenten/LSignalBar;)V
    .locals 0

    iput-object p1, p0, Lcom/tenten/LSignalBar$1;->this$0:Lcom/tenten/LSignalBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v1, 0x0

    const-string v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    const-string v3, "inetCondition"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v3, 0x32

    if-le v0, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v3, p0, Lcom/tenten/LSignalBar$1;->this$0:Lcom/tenten/LSignalBar;

    iput v1, v3, Lcom/tenten/LSignalBar;->mInetCondition:I

    iget-object v3, p0, Lcom/tenten/LSignalBar$1;->this$0:Lcom/tenten/LSignalBar;

    #calls: Lcom/tenten/LSignalBar;->updateSignalStrength()V
    invoke-static {v3}, Lcom/tenten/LSignalBar;->access$000(Lcom/tenten/LSignalBar;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
