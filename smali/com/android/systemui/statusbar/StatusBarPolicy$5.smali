.class Lcom/android/systemui/statusbar/StatusBarPolicy$5;
.super Landroid/telephony/PhoneStateListener;
.source "StatusBarPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/StatusBarPolicy;->getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/StatusBarPolicy;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$5;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3

    const-string v0, "StatusBarPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallStateChanged Received on subscription :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$5;->mSubscription:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$5;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    #calls: Lcom/android/systemui/statusbar/StatusBarPolicy;->updateCallState(I)V
    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->access$2500(Lcom/android/systemui/statusbar/StatusBarPolicy;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$5;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$5;->mSubscription:I

    #calls: Lcom/android/systemui/statusbar/StatusBarPolicy;->updateSignalStrength(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->access$2100(Lcom/android/systemui/statusbar/StatusBarPolicy;I)V

    return-void
.end method

.method public onDataActivity(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$5;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    iput p1, v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataActivity:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$5;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$5;->mSubscription:I

    #calls: Lcom/android/systemui/statusbar/StatusBarPolicy;->requireUpdateDataIcon(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->access$2400(Lcom/android/systemui/statusbar/StatusBarPolicy;I)V

    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 3

    const-string v0, "StatusBarPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StatusBarPolicy onDataConnectionStateChanged to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "for nw : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "on subscription : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$5;->mSubscription:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$5;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataState:[I

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$5;->mSubscription:I

    aput p1, v0, v1

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$5;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    #calls: Lcom/android/systemui/statusbar/StatusBarPolicy;->updateDataNetType(I)V
    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/StatusBarPolicy;->access$2600(Lcom/android/systemui/statusbar/StatusBarPolicy;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$5;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$5;->mSubscription:I

    #calls: Lcom/android/systemui/statusbar/StatusBarPolicy;->requireUpdateDataIcon(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->access$2400(Lcom/android/systemui/statusbar/StatusBarPolicy;I)V

    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3

    const-string v0, "StatusBarPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceStateChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "for subscription :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$5;->mSubscription:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$5;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mServiceState:[Landroid/telephony/ServiceState;

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$5;->mSubscription:I

    aput-object p1, v0, v1

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$5;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$5;->mSubscription:I

    #calls: Lcom/android/systemui/statusbar/StatusBarPolicy;->updateSignalStrength(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->access$2100(Lcom/android/systemui/statusbar/StatusBarPolicy;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$5;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$5;->mSubscription:I

    #calls: Lcom/android/systemui/statusbar/StatusBarPolicy;->requireUpdateDataIcon(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->access$2400(Lcom/android/systemui/statusbar/StatusBarPolicy;I)V

    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 3

    const-string v0, "StatusBarPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSignalStrengthsChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for subscription"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$5;->mSubscription:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$5;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mSignalStrength:[Landroid/telephony/SignalStrength;

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$5;->mSubscription:I

    aput-object p1, v0, v1

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$5;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$5;->mSubscription:I

    #calls: Lcom/android/systemui/statusbar/StatusBarPolicy;->updateSignalStrength(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->access$2100(Lcom/android/systemui/statusbar/StatusBarPolicy;I)V

    return-void
.end method
