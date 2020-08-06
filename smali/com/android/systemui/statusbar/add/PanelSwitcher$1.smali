.class Lcom/android/systemui/statusbar/add/PanelSwitcher$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PanelSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/add/PanelSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/add/PanelSwitcher;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/add/PanelSwitcher;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/add/PanelSwitcher$1;->this$0:Lcom/android/systemui/statusbar/add/PanelSwitcher;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v2, 0x50

    if-le v1, v2, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v1, v2, :cond_1

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/add/PanelSwitcher$1;->this$0:Lcom/android/systemui/statusbar/add/PanelSwitcher;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/add/PanelSwitcher;->moveRight(I)V

    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/add/PanelSwitcher$1;->this$0:Lcom/android/systemui/statusbar/add/PanelSwitcher;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/add/PanelSwitcher;->moveLeft(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
