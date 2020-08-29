.class public Lcom/android/systemui/statusbar/NavigationBarView;
.super Landroid/widget/LinearLayout;
.source "NavigationBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/NavigationBarView$100000003;,
        Lcom/android/systemui/statusbar/NavigationBarView$100000004;,
        Lcom/android/systemui/statusbar/NavigationBarView$100000005;,
        Lcom/android/systemui/statusbar/NavigationBarView$100000000;,
        Lcom/android/systemui/statusbar/NavigationBarView$100000001;,
        Lcom/android/systemui/statusbar/NavigationBarView$100000002;,
        Lcom/android/systemui/statusbar/NavigationBarView$KeyEventInjector;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field public static final KEYCODE_VIRTUAL_BACK_LONG:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final KEYCODE_VIRTUAL_HOME_LONG:I = 0x0

.field private static final TAG:Ljava/lang/String; = "NavigationBarView"


# instance fields
.field mBackButton:Landroid/widget/ImageButton;

.field mHandler:Landroid/os/Handler;

.field mHomeButton:Landroid/widget/ImageButton;

.field mMenuButton:Landroid/widget/ImageButton;

.field mNaviAdd:Landroid/view/View;

.field mResetBack:Ljava/lang/Runnable;

.field mResetHome:Ljava/lang/Runnable;

.field mResetMenu:Ljava/lang/Runnable;


# direct methods
.method static final constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/systemui/statusbar/NavigationBarView;->KEYCODE_VIRTUAL_HOME_LONG:I

    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    sput v0, Lcom/android/systemui/statusbar/NavigationBarView;->KEYCODE_VIRTUAL_BACK_LONG:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 151
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/systemui/statusbar/NavigationBarView$100000003;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/NavigationBarView$100000003;-><init>(Lcom/android/systemui/statusbar/NavigationBarView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mResetHome:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/statusbar/NavigationBarView$100000004;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/NavigationBarView$100000004;-><init>(Lcom/android/systemui/statusbar/NavigationBarView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mResetBack:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/statusbar/NavigationBarView$100000005;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/NavigationBarView$100000005;-><init>(Lcom/android/systemui/statusbar/NavigationBarView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mResetMenu:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$1000005(Lcom/android/systemui/statusbar/NavigationBarView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NavigationBarView;->updateNaviButtons()V

    return-void
.end method

.method static synthetic access$1000009(Lcom/android/systemui/statusbar/NavigationBarView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NavigationBarView;->simulateKeypress(I)V

    return-void
.end method

.method static synthetic access$L1000000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/NavigationBarView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$Landroid$view$View$124(Lcom/android/systemui/statusbar/NavigationBarView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$S1000000(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/android/systemui/statusbar/NavigationBarView;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$Sandroid$view$View$124(Lcom/android/systemui/statusbar/NavigationBarView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-void
.end method

.method private isEventInButton(Landroid/widget/ImageButton;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 907
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getRight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getTop()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getBottom()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private simulateKeypress(I)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 1374
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/systemui/statusbar/NavigationBarView$KeyEventInjector;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/NavigationBarView$KeyEventInjector;-><init>(Lcom/android/systemui/statusbar/NavigationBarView;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private updateNaviButtons()V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    const/16 v4, 0xa

    .line 1049
    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mResetHome:Ljava/lang/Runnable;

    int-to-long v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1050
    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mResetMenu:Ljava/lang/Runnable;

    int-to-long v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1051
    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mResetBack:Ljava/lang/Runnable;

    int-to-long v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public exchangeKeys(Z)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 927
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NavigationBarView;->removeAllViews()V

    .line 928
    if-eqz p1, :cond_0

    .line 929
    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NavigationBarView;->addView(Landroid/view/View;)V

    .line 930
    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mHomeButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NavigationBarView;->addView(Landroid/view/View;)V

    .line 931
    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mBackButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NavigationBarView;->addView(Landroid/view/View;)V

    .line 935
    :goto_0
    return-void

    .line 933
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mBackButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NavigationBarView;->addView(Landroid/view/View;)V

    .line 934
    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mHomeButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NavigationBarView;->addView(Landroid/view/View;)V

    .line 935
    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NavigationBarView;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 903
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 162
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 164
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mHandler:Landroid/os/Handler;

    .line 166
    const v0, 0x7f0a0053

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mNaviAdd:Landroid/view/View;

    .line 167
    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mNaviAdd:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 172
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 461
    const v0, 0x7f0a0044

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mHomeButton:Landroid/widget/ImageButton;

    .line 462
    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mHomeButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/systemui/statusbar/NavigationBarView$100000000;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/NavigationBarView$100000000;-><init>(Lcom/android/systemui/statusbar/NavigationBarView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 542
    const v0, 0x7f0a0048

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mMenuButton:Landroid/widget/ImageButton;

    .line 543
    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mMenuButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/systemui/statusbar/NavigationBarView$100000001;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/NavigationBarView$100000001;-><init>(Lcom/android/systemui/statusbar/NavigationBarView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 623
    const v0, 0x7f0a0051

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mBackButton:Landroid/widget/ImageButton;

    .line 624
    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mBackButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/systemui/statusbar/NavigationBarView$100000002;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/NavigationBarView$100000002;-><init>(Lcom/android/systemui/statusbar/NavigationBarView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 975
    iget-object v1, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mHomeButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v1, p1}, Lcom/android/systemui/statusbar/NavigationBarView;->isEventInButton(Landroid/widget/ImageButton;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 976
    iget-object v1, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mHomeButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1004
    :goto_0
    return v0

    .line 979
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mMenuButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v1, p1}, Lcom/android/systemui/statusbar/NavigationBarView;->isEventInButton(Landroid/widget/ImageButton;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 980
    iget-object v1, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 983
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mBackButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v1, p1}, Lcom/android/systemui/statusbar/NavigationBarView;->isEventInButton(Landroid/widget/ImageButton;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 984
    iget-object v1, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 1004
    :cond_2
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method
