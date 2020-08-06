.class Lcom/android/systemui/statusbar/StatusBarView$100000000;
.super Ljava/lang/Object;
.source "StatusBarView.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field private final val$mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/StatusBarView;Landroid/os/Handler;Landroid/app/ActivityManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarView$100000000;->this$0:Lcom/android/systemui/statusbar/StatusBarView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/StatusBarView$100000000;->val$mHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/systemui/statusbar/StatusBarView$100000000;->val$am:Landroid/app/ActivityManager;

    return-void
.end method

.method static access$0(Lcom/android/systemui/statusbar/StatusBarView$100000000;)Lcom/android/systemui/statusbar/StatusBarView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView$100000000;->this$0:Lcom/android/systemui/statusbar/StatusBarView;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView$100000000;->val$mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarView$100000000;->this$0:Lcom/android/systemui/statusbar/StatusBarView;

    #getter for: Lcom/android/systemui/statusbar/StatusBarView;->update:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/systemui/statusbar/StatusBarView;->access$L1000000(Lcom/android/systemui/statusbar/StatusBarView;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarView$100000000;->this$0:Lcom/android/systemui/statusbar/StatusBarView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarView$100000000;->val$am:Landroid/app/ActivityManager;

    #calls: Lcom/android/systemui/statusbar/StatusBarView;->tint(Landroid/app/ActivityManager;)I
    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/StatusBarView;->access$1000006(Lcom/android/systemui/statusbar/StatusBarView;Landroid/app/ActivityManager;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
