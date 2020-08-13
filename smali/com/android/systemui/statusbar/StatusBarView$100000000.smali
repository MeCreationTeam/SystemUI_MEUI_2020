.class Lcom/android/systemui/statusbar/StatusBarView$100000000;
.super Landroid/os/Handler;
.source "StatusBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/StatusBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field private final this$0:Lcom/android/systemui/statusbar/StatusBarView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/StatusBarView;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarView$100000000;->this$0:Lcom/android/systemui/statusbar/StatusBarView;

    return-void
.end method

.method static access$0(Lcom/android/systemui/statusbar/StatusBarView$100000000;)Lcom/android/systemui/statusbar/StatusBarView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView$100000000;->this$0:Lcom/android/systemui/statusbar/StatusBarView;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView$100000000;->this$0:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "pkgName"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/systemui/statusbar/StatusBarView;->tint(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/StatusBarView;->access$1000006(Lcom/android/systemui/statusbar/StatusBarView;Ljava/lang/String;)V

    return-void
.end method
