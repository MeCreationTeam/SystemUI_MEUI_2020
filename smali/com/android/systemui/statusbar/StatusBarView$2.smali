.class Lcom/android/systemui/statusbar/StatusBarView$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "StatusBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/StatusBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/StatusBarView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/StatusBarView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarView$2;->this$0:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 3

    sget-object v1, Lcom/android/systemui/statusbar/StatusBarView;->c:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->goToSleep(J)V

    :cond_0
    const/4 v1, 0x1

    return v1
.end method
