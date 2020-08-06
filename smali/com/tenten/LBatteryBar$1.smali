.class Lcom/tenten/LBatteryBar$1;
.super Landroid/content/BroadcastReceiver;
.source "LBatteryBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tenten/LBatteryBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tenten/LBatteryBar;


# direct methods
.method constructor <init>(Lcom/tenten/LBatteryBar;)V
    .locals 0

    iput-object p1, p0, Lcom/tenten/LBatteryBar$1;->this$0:Lcom/tenten/LBatteryBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v0, 0x0

    const-string v3, "level"

    invoke-virtual {p2, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v3, p0, Lcom/tenten/LBatteryBar$1;->this$0:Lcom/tenten/LBatteryBar;

    invoke-virtual {v3, v1}, Lcom/tenten/LBatteryBar;->setImageLevel(I)V

    const-string v3, "status"

    invoke-virtual {p2, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/tenten/LBatteryBar$1;->this$0:Lcom/tenten/LBatteryBar;

    invoke-virtual {v3, v1}, Lcom/tenten/LBatteryBar;->setImageLevel(I)V

    iget-object v3, p0, Lcom/tenten/LBatteryBar$1;->this$0:Lcom/tenten/LBatteryBar;

    const v4, 0x10802f0

    invoke-virtual {v3, v4}, Lcom/tenten/LBatteryBar;->setImageResource(I)V

    :goto_0
    return-void

    :cond_2
    iget-object v3, p0, Lcom/tenten/LBatteryBar$1;->this$0:Lcom/tenten/LBatteryBar;

    const v4, 0x10802da

    invoke-virtual {v3, v4}, Lcom/tenten/LBatteryBar;->setImageResource(I)V

    goto :goto_0
.end method
