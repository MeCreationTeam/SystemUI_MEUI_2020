.class public Lcom/android/systemui/statusbar/ExpandedView;
.super Landroid/widget/LinearLayout;
.source "ExpandedView.java"


# instance fields
.field mPrevHeight:I

.field mService:Lcom/android/systemui/statusbar/StatusBarService;

.field mTouchDispatcher:Lcom/android/systemui/statusbar/ItemTouchDispatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/ExpandedView;->mPrevHeight:I

    return-void
.end method


# virtual methods
.method public getSuggestedMinimumHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandedView;->mTouchDispatcher:Lcom/android/systemui/statusbar/ItemTouchDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/ItemTouchDispatcher;->needsInterceptTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    sub-int v0, p5, p3

    iget v1, p0, Lcom/android/systemui/statusbar/ExpandedView;->mPrevHeight:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/android/systemui/statusbar/ExpandedView;->mPrevHeight:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandedView;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    const/16 v2, -0x2710

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedViewPos(I)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandedView;->mTouchDispatcher:Lcom/android/systemui/statusbar/ItemTouchDispatcher;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/ItemTouchDispatcher;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
