.class public Lcom/android/systemui/statusbar/LatestItemContainer;
.super Landroid/widget/LinearLayout;
.source "LatestItemContainer.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "NotificationContainer"


# instance fields
.field private mDispatcher:Lcom/android/systemui/statusbar/ItemTouchDispatcher;

.field private mEventsControlledByDispatcher:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mStartPoint:Landroid/graphics/Point;

.field private mSwipeCallback:Ljava/lang/Runnable;

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/LatestItemContainer;->mEventsControlledByDispatcher:Z

    iput-object v2, p0, Lcom/android/systemui/statusbar/LatestItemContainer;->mDispatcher:Lcom/android/systemui/statusbar/ItemTouchDispatcher;

    iput-object v2, p0, Lcom/android/systemui/statusbar/LatestItemContainer;->mSwipeCallback:Ljava/lang/Runnable;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/LatestItemContainer;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/LatestItemContainer;->mStartPoint:Landroid/graphics/Point;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/LatestItemContainer;->mTouchSlop:I

    return-void
.end method

.method private reset()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/statusbar/LatestItemContainer;->scrollTo(II)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/LatestItemContainer;->mDispatcher:Lcom/android/systemui/statusbar/ItemTouchDispatcher;

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/LatestItemContainer;->mEventsControlledByDispatcher:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/LatestItemContainer;->mDispatcher:Lcom/android/systemui/statusbar/ItemTouchDispatcher;

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/ItemTouchDispatcher;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    packed-switch v3, :pswitch_data_0

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2

    :pswitch_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/LatestItemContainer;->mStartPoint:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Point;->set(II)V

    const/4 v2, 0x1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/LatestItemContainer;->mStartPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    sub-int v0, v3, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/LatestItemContainer;->mStartPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    sub-int v1, v3, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/LatestItemContainer;->mTouchSlop:I

    if-le v3, v4, :cond_3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-le v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/LatestItemContainer;->mDispatcher:Lcom/android/systemui/statusbar/ItemTouchDispatcher;

    invoke-virtual {v3, p0}, Lcom/android/systemui/statusbar/ItemTouchDispatcher;->setItem(Lcom/android/systemui/statusbar/LatestItemContainer;)V

    :cond_3
    neg-int v3, v0

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/statusbar/LatestItemContainer;->scrollTo(II)V

    const/4 v2, 0x1

    goto :goto_0

    :pswitch_2
    if-nez v2, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/LatestItemContainer;->reset()V

    :cond_4
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/LatestItemContainer;->mEventsControlledByDispatcher:Z

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/systemui/statusbar/LatestItemContainer;->mDispatcher:Lcom/android/systemui/statusbar/ItemTouchDispatcher;

    invoke-virtual {v3, p0}, Lcom/android/systemui/statusbar/ItemTouchDispatcher;->releaseItem(Lcom/android/systemui/statusbar/LatestItemContainer;)V

    :cond_5
    const/4 v2, 0x1

    goto :goto_0

    :pswitch_3
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/LatestItemContainer;->mEventsControlledByDispatcher:Z

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/android/systemui/statusbar/LatestItemContainer;->mDispatcher:Lcom/android/systemui/statusbar/ItemTouchDispatcher;

    invoke-virtual {v3, p0}, Lcom/android/systemui/statusbar/ItemTouchDispatcher;->releaseItem(Lcom/android/systemui/statusbar/LatestItemContainer;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/LatestItemContainer;->reset()V

    :cond_6
    const/4 v2, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public finishSwipe(Z)V
    .locals 6

    if-eqz p1, :cond_0

    const v2, 0x7f0c0001

    move v1, v2

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/LatestItemContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/LatestItemContainer;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/LatestItemContainer;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/statusbar/LatestItemContainer;->mSwipeCallback:Ljava/lang/Runnable;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/LatestItemContainer;->mEventsControlledByDispatcher:Z

    return-void

    :cond_0
    const/high16 v2, 0x7f0c

    move v1, v2

    goto :goto_0
.end method

.method public setEventsControlledByDispatcher()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/LatestItemContainer;->mEventsControlledByDispatcher:Z

    return-void
.end method

.method public setOnSwipeCallback(Lcom/android/systemui/statusbar/ItemTouchDispatcher;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/LatestItemContainer;->mDispatcher:Lcom/android/systemui/statusbar/ItemTouchDispatcher;

    iput-object p2, p0, Lcom/android/systemui/statusbar/LatestItemContainer;->mSwipeCallback:Ljava/lang/Runnable;

    return-void
.end method

.method public stopSwipe()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/LatestItemContainer;->reset()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/LatestItemContainer;->mEventsControlledByDispatcher:Z

    return-void
.end method
