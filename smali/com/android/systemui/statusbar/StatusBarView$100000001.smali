.class Lcom/android/systemui/statusbar/StatusBarView$100000001;
.super Landroid/app/IActivityController$Stub;
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

    invoke-direct {p0}, Landroid/app/IActivityController$Stub;-><init>()V

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
.method public activityResuming(Ljava/lang/String;)Z
    .locals 3
    .parameter
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 107
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 108
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 109
    const-string v2, "pkgName"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 111
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarView$100000001;->val$mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 112
    const/4 v0, 0x1

    return v0
.end method

.method public activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 118
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 119
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 120
    const-string v2, "pkgName"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 122
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarView$100000001;->val$mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 123
    const/4 v0, 0x1

    return v0
.end method

.method public appCrashed(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method public appEarlyNotResponding(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public appNotResponding(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 145
    const/4 v0, 0x0

    return v0
.end method
