.class Lcom/android/systemui/statusbar/StatusBarPolicy$StatusBarHandler;
.super Landroid/os/Handler;
.source "StatusBarPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/StatusBarPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusBarHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/StatusBarPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$StatusBarHandler;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/StatusBarPolicy;Lcom/android/systemui/statusbar/StatusBarPolicy$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarPolicy$StatusBarHandler;-><init>(Lcom/android/systemui/statusbar/StatusBarPolicy;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$StatusBarHandler;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    #getter for: Lcom/android/systemui/statusbar/StatusBarPolicy;->mBatteryViewSequence:I
    invoke-static {v3}, Lcom/android/systemui/statusbar/StatusBarPolicy;->access$3000(Lcom/android/systemui/statusbar/StatusBarPolicy;)I

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$StatusBarHandler;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    #calls: Lcom/android/systemui/statusbar/StatusBarPolicy;->closeLastBatteryView()V
    invoke-static {v2}, Lcom/android/systemui/statusbar/StatusBarPolicy;->access$3100(Lcom/android/systemui/statusbar/StatusBarPolicy;)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$StatusBarHandler;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    #calls: Lcom/android/systemui/statusbar/StatusBarPolicy;->updateSignalStrength(I)V
    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->access$2100(Lcom/android/systemui/statusbar/StatusBarPolicy;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
