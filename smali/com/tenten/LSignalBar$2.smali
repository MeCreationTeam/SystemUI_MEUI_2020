.class Lcom/tenten/LSignalBar$2;
.super Landroid/telephony/PhoneStateListener;
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

    iput-object p1, p0, Lcom/tenten/LSignalBar$2;->this$0:Lcom/tenten/LSignalBar;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tenten/LSignalBar$2;->this$0:Lcom/tenten/LSignalBar;

    #calls: Lcom/tenten/LSignalBar;->isCdma()Z
    invoke-static {v0}, Lcom/tenten/LSignalBar;->access$100(Lcom/tenten/LSignalBar;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tenten/LSignalBar$2;->this$0:Lcom/tenten/LSignalBar;

    #calls: Lcom/tenten/LSignalBar;->updateSignalStrength()V
    invoke-static {v0}, Lcom/tenten/LSignalBar;->access$000(Lcom/tenten/LSignalBar;)V

    :cond_0
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1

    iget-object v0, p0, Lcom/tenten/LSignalBar$2;->this$0:Lcom/tenten/LSignalBar;

    iput-object p1, v0, Lcom/tenten/LSignalBar;->mServiceState:Landroid/telephony/ServiceState;

    iget-object v0, p0, Lcom/tenten/LSignalBar$2;->this$0:Lcom/tenten/LSignalBar;

    #calls: Lcom/tenten/LSignalBar;->updateSignalStrength()V
    invoke-static {v0}, Lcom/tenten/LSignalBar;->access$000(Lcom/tenten/LSignalBar;)V

    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 1

    iget-object v0, p0, Lcom/tenten/LSignalBar$2;->this$0:Lcom/tenten/LSignalBar;

    iput-object p1, v0, Lcom/tenten/LSignalBar;->mSignalStrength:Landroid/telephony/SignalStrength;

    iget-object v0, p0, Lcom/tenten/LSignalBar$2;->this$0:Lcom/tenten/LSignalBar;

    #calls: Lcom/tenten/LSignalBar;->updateSignalStrength()V
    invoke-static {v0}, Lcom/tenten/LSignalBar;->access$000(Lcom/tenten/LSignalBar;)V

    return-void
.end method
