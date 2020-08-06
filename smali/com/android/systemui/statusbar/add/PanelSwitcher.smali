.class Lcom/android/systemui/statusbar/add/PanelSwitcher;
.super Landroid/widget/FrameLayout;
.source "PanelSwitcher.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# static fields
.field private static final ANIM_DURATION:I = 0x100

.field private static final LEFT:I = 0x1

.field private static final MAJOR_MOVE:I = 0x3c

.field private static final RIGHT:I = 0x2


# instance fields
.field private inLeft:Landroid/view/animation/TranslateAnimation;

.field private inRight:Landroid/view/animation/TranslateAnimation;

.field private mChildren:[Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field mCurrentView:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mWidth:I

.field private outLeft:Landroid/view/animation/TranslateAnimation;

.field private outRight:Landroid/view/animation/TranslateAnimation;

.field tab1:Landroid/widget/TextView;

.field tab2:Landroid/widget/TextView;

.field tab3:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-array v0, v1, [Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/statusbar/add/PanelSwitcher;->mChildren:[Landroid/view/View;

    iput v1, p0, Lcom/android/systemui/statusbar/add/PanelSwitcher;->mCurrentView:I

    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/android/systemui/statusbar/add/PanelSwitcher$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/add/PanelSwitcher$1;-><init>(Lcom/android/systemui/statusbar/add/PanelSwitcher;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/add/PanelSwitcher;->mGestureDetector:Landroid/view/GestureDetector;

    iput-object p1, p0, Lcom/android/systemui/statusbar/add/PanelSwitcher;->mContext:Landroid/content/Context;

    return-void
.end method

.method private updateCurrentView()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/16 v4, 0x8

    iget-object v3, p0, Lcom/android/systemui/statusbar/add/PanelSwitcher;->mChildren:[Landroid/view/View;

    aget-object v3, v3, v0

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/add/PanelSwitcher;->mChildren:[Landroid/view/View;

    aget-object v3, v3, v1

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/add/PanelSwitcher;->mChildren:[Landroid/view/View;

    aget-object v3, v3, v2

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method moveLeft(I)V
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Lcom/android/systemui/statusbar/add/PanelSwitcher;->mCurrentView:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/add/PanelSwitcher;->mChildren:[Landroid/view/View;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/add/PanelSwitcher;->mChildren:[Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/statusbar/add/PanelSwitcher;->mCurrentView:I

    add-int/2addr v1, p1

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/add/PanelSwitcher;->mChildren:[Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/statusbar/add/PanelSwitcher;->mCurrentView:I

    add-int/2addr v1, p1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/add/PanelSwitcher;->inLeft:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/add/PanelSwitcher;->mChildren:[Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/statusbar/add/PanelSwitcher;->mCurrentView:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/add/PanelSwitcher;->outLeft:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/add/PanelSwitcher;->mChildren:[Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/statusbar/add/PanelSwitcher;->mCurrentView:I

    aget-object v0, v0, v1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget v0, p0, Lcom/android/systemui/statusbar/add/PanelSwitcher;->mCurrentView:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/statusbar/add/PanelSwitcher;->mCurrentView:I

    :cond_0
    return-void
.end method

.method moveRight(I)V
    .locals 3

    const/4 v2, 0x2

    iget v0, p0, Lcom/android/systemui/statusbar/add/PanelSwitcher;->mCurrentView:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/add/PanelSwitcher;->mChildren:[Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/statusbar/add/PanelSwitcher;->mCurrentView:I

    sub-int/2addr v1, p1

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/add/PanelSwitcher;->mChildren:[Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/statusbar/add/PanelSwitcher;->mCurrentView:I

    sub-int/2addr v1, p1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/add/PanelSwitcher;->inRight:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/add/PanelSwitcher;->mChildren:[Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/statusbar/add/PanelSwitcher;->mCurrentView:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/add/PanelSwitcher;->outRight:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/add/PanelSwitcher;->mChildren:[Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/statusbar/add/PanelSwitcher;->mCurrentView:I

    aget-object v0, v0, v1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget v0, p0, Lcom/android/systemui/statusbar/add/PanelSwitcher;->mCurrentView:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/statusbar/add/PanelSwitcher;->mCurrentView:I

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x2

    new-array v2, v3, [Landroid/view/View;

    iput-object v2, p0, Lcom/android/systemui/statusbar/add/PanelSwitcher;->mChildren:[Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/add/PanelSwitcher;->mChildren:[Landroid/view/View;

    const v3, 0x7f0a0035

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/add/PanelSwitcher;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/add/PanelSwitcher;->mChildren:[Landroid/view/View;

    const v3, 0x7f0a0036

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/add/PanelSwitcher;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/add/PanelSwitcher;->mChildren:[Landroid/view/View;

    const v3, 0x7f0a0037

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/add/PanelSwitcher;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x7f0a0038

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/add/PanelSwitcher;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/systemui/statusbar/add/PanelSwitcher;->tab1:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/add/PanelSwitcher;->tab1:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/add/PanelSwitcher;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/systemui/statusbar/add/PanelSwitcher$2;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/add/PanelSwitcher$2;-><init>(Lcom/android/systemui/statusbar/add/PanelSwitcher;Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0a0039

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/add/PanelSwitcher;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/systemui/statusbar/add/PanelSwitcher;->tab2:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/add/PanelSwitcher;->tab2:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/add/PanelSwitcher;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/systemui/statusbar/add/PanelSwitcher$3;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/add/PanelSwitcher$3;-><init>(Lcom/android/systemui/statusbar/add/PanelSwitcher;Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0a003a

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/add/PanelSwitcher;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/systemui/statusbar/add/PanelSwitcher;->tab3:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/add/PanelSwitcher;->tab3:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/add/PanelSwitcher;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/systemui/statusbar/add/PanelSwitcher$4;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/add/PanelSwitcher$4;-><init>(Lcom/android/systemui/statusbar/add/PanelSwitcher;Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/add/PanelSwitcher;->updateCurrentView()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/add/PanelSwitcher;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onSizeChanged(IIII)V
    .locals 5

    const-wide/16 v3, 0x190

    const/4 v2, 0x0

    iput p1, p0, Lcom/android/systemui/statusbar/add/PanelSwitcher;->mWidth:I

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/android/systemui/statusbar/add/PanelSwitcher;->mWidth:I

    int-to-float v1, v1

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/add/PanelSwitcher;->inLeft:Landroid/view/animation/TranslateAnimation;

    iget-object v0, p0, Lcom/android/systemui/statusbar/add/PanelSwitcher;->inLeft:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, p0}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/android/systemui/statusbar/add/PanelSwitcher;->mWidth:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/add/PanelSwitcher;->outLeft:Landroid/view/animation/TranslateAnimation;

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/android/systemui/statusbar/add/PanelSwitcher;->mWidth:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/add/PanelSwitcher;->inRight:Landroid/view/animation/TranslateAnimation;

    iget-object v0, p0, Lcom/android/systemui/statusbar/add/PanelSwitcher;->inRight:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, p0}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/android/systemui/statusbar/add/PanelSwitcher;->mWidth:I

    int-to-float v1, v1

    invoke-direct {v0, v2, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/add/PanelSwitcher;->outRight:Landroid/view/animation/TranslateAnimation;

    iget-object v0, p0, Lcom/android/systemui/statusbar/add/PanelSwitcher;->inLeft:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/add/PanelSwitcher;->outLeft:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/add/PanelSwitcher;->inRight:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/add/PanelSwitcher;->outRight:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/add/PanelSwitcher;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 v0, 0x1

    return v0
.end method
