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

.field private final val$am:Landroid/app/ActivityManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/StatusBarView;Landroid/app/ActivityManager;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarView$100000000;->this$0:Lcom/android/systemui/statusbar/StatusBarView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/StatusBarView$100000000;->val$am:Landroid/app/ActivityManager;

    return-void
.end method

.method static access$0(Lcom/android/systemui/statusbar/StatusBarView$100000000;)Lcom/android/systemui/statusbar/StatusBarView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView$100000000;->this$0:Lcom/android/systemui/statusbar/StatusBarView;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
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
    .line 81
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView$100000000;->this$0:Lcom/android/systemui/statusbar/StatusBarView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarView$100000000;->val$am:Landroid/app/ActivityManager;

    #calls: Lcom/android/systemui/statusbar/StatusBarView;->tint(Landroid/app/ActivityManager;)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/StatusBarView;->access$1000006(Lcom/android/systemui/statusbar/StatusBarView;Landroid/app/ActivityManager;)V

    return-void
.end method
