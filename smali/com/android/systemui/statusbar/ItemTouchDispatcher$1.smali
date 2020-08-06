.class Lcom/android/systemui/statusbar/ItemTouchDispatcher$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ItemTouchDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/ItemTouchDispatcher;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/ItemTouchDispatcher;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/ItemTouchDispatcher;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/ItemTouchDispatcher$1;->this$0:Lcom/android/systemui/statusbar/ItemTouchDispatcher;

    iput-object p2, p0, Lcom/android/systemui/statusbar/ItemTouchDispatcher$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6

    iget-object v4, p0, Lcom/android/systemui/statusbar/ItemTouchDispatcher$1;->val$context:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v0, v4

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/ItemTouchDispatcher$1;->this$0:Lcom/android/systemui/statusbar/ItemTouchDispatcher;

    #getter for: Lcom/android/systemui/statusbar/ItemTouchDispatcher;->mItem:Lcom/android/systemui/statusbar/LatestItemContainer;
    invoke-static {v4}, Lcom/android/systemui/statusbar/ItemTouchDispatcher;->access$000(Lcom/android/systemui/statusbar/ItemTouchDispatcher;)Lcom/android/systemui/statusbar/LatestItemContainer;

    move-result-object v4

    const/4 v5, 0x0

    cmpl-float v5, p3, v5

    if-lez v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/LatestItemContainer;->finishSwipe(Z)V

    const/4 v2, 0x1

    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/ItemTouchDispatcher$1;->this$0:Lcom/android/systemui/statusbar/ItemTouchDispatcher;

    const/4 v5, 0x0

    #setter for: Lcom/android/systemui/statusbar/ItemTouchDispatcher;->mItem:Lcom/android/systemui/statusbar/LatestItemContainer;
    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/ItemTouchDispatcher;->access$002(Lcom/android/systemui/statusbar/ItemTouchDispatcher;Lcom/android/systemui/statusbar/LatestItemContainer;)Lcom/android/systemui/statusbar/LatestItemContainer;

    return v2

    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/ItemTouchDispatcher$1;->this$0:Lcom/android/systemui/statusbar/ItemTouchDispatcher;

    #getter for: Lcom/android/systemui/statusbar/ItemTouchDispatcher;->mItem:Lcom/android/systemui/statusbar/LatestItemContainer;
    invoke-static {v4}, Lcom/android/systemui/statusbar/ItemTouchDispatcher;->access$000(Lcom/android/systemui/statusbar/ItemTouchDispatcher;)Lcom/android/systemui/statusbar/LatestItemContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/LatestItemContainer;->stopSwipe()V

    goto :goto_1
.end method
