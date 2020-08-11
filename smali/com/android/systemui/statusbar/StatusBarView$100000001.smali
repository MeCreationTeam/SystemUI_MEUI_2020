.class Lcom/android/systemui/statusbar/StatusBarView$100000001;
.super Landroid/app/IActivityWatcher$Stub;
.source "StatusBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/StatusBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000001"
.end annotation


# instance fields
.field private final this$0:Lcom/android/systemui/statusbar/StatusBarView;

.field private final val$mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/StatusBarView;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/IActivityWatcher$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarView$100000001;->this$0:Lcom/android/systemui/statusbar/StatusBarView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/StatusBarView$100000001;->val$mHandler:Landroid/os/Handler;

    return-void
.end method

.method static access$0(Lcom/android/systemui/statusbar/StatusBarView$100000001;)Lcom/android/systemui/statusbar/StatusBarView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView$100000001;->this$0:Lcom/android/systemui/statusbar/StatusBarView;

    return-object v0
.end method


# virtual methods
.method public activityResuming(I)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView$100000001;->val$mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public closingSystemDialogs(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method
