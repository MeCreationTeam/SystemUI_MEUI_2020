.class public Lcom/android/systemui/statusbar/StatusBarService;
.super Landroid/app/Service;
.source "StatusBarService.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/StatusBarService$MyTicker;,
        Lcom/android/systemui/statusbar/StatusBarService$Launcher;,
        Lcom/android/systemui/statusbar/StatusBarService$H;,
        Lcom/android/systemui/statusbar/StatusBarService$ExpandedDialog;
    }
.end annotation


# instance fields
.field private isLastNavBarEnabled:Z

.field private isLastNavBarExchange:Z

.field private isLastSameColor:Z

.field private isNewBarEnabled:Z

.field private isNewBarExchange:Z

.field private isNewSameColor:Z

.field expanded:Lcom/android/systemui/statusbar/ExpandedView;

.field mAbsPos:[I

.field mAnimAccel:F

.field mAnimLastTime:J

.field mAnimVel:F

.field mAnimY:F

.field mAnimating:Z

.field mAnimatingReveal:Z

.field mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mCarrierLabels:[Lcom/android/systemui/statusbar/CarrierLabel;

.field mClearButton:Landroid/widget/TextView;

.field private mClearButtonListener:Landroid/view/View$OnClickListener;

.field mCloseView:Lcom/android/systemui/statusbar/CloseDragHandle;

.field mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field private mContext:Landroid/content/Context;

.field mCurAnimationTime:J

.field mDateView:Lcom/android/systemui/statusbar/DateView;

.field mDisabled:I

.field mDisplay:Landroid/view/Display;

.field mDisplayHeight:F

.field mEdgeBorder:I

.field mExpanded:Z

.field mExpandedContents:Landroid/view/View;

.field mExpandedDialog:Landroid/app/Dialog;

.field mExpandedParams:Landroid/view/WindowManager$LayoutParams;

.field mExpandedView:Lcom/android/systemui/statusbar/ExpandedView;

.field mExpandedVisible:Z

.field mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

.field mIconPolicy:Lcom/android/systemui/statusbar/StatusBarPolicy;

.field mIconSize:I

.field mIcons:Landroid/widget/LinearLayout;

.field mLatest:Lcom/android/systemui/statusbar/NotificationData;

.field mLatestItems:Landroid/widget/LinearLayout;

.field mLatestTitle:Landroid/widget/TextView;

.field private mNavigationBarView:Lcom/android/systemui/statusbar/NavigationBarView;

.field mNoNotificationsTitle:Landroid/widget/TextView;

.field mNotificationIcons:Lcom/android/systemui/statusbar/IconMerger;

.field mNotificationLinearLayout:Landroid/view/View;

.field mOngoing:Lcom/android/systemui/statusbar/NotificationData;

.field mOngoingItems:Landroid/widget/LinearLayout;

.field mOngoingTitle:Landroid/widget/TextView;

.field private mPanelSlightlyVisible:Z

.field mPixelFormat:I

.field mPositionTmp:[I

.field mPowerWidget:Lcom/lidroid/systemui/quickpanel/PowerWidget;

.field mQueueLock:Ljava/lang/Object;

.field private mResId:[I

.field mScrollView:Landroid/widget/ScrollView;

.field mStartTracing:Ljava/lang/Runnable;

.field mStatusBarBGResId:I

.field mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

.field mStatusIcons:Landroid/widget/LinearLayout;

.field mStopTracing:Ljava/lang/Runnable;

.field private mTicker:Lcom/android/systemui/statusbar/Ticker;

.field private mTickerView:Landroid/view/View;

.field private mTicking:Z

.field mTouchDispatcher:Lcom/android/systemui/statusbar/ItemTouchDispatcher;

.field mTracking:Z

.field mTrackingParams:Landroid/view/WindowManager$LayoutParams;

.field mTrackingPosition:I

.field mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

.field mVelocityTracker:Landroid/view/VelocityTracker;

.field mViewDelta:I


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x2 

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/android/systemui/statusbar/StatusBarService$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/StatusBarService$H;-><init>(Lcom/android/systemui/statusbar/StatusBarService;Lcom/android/systemui/statusbar/StatusBarService$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mQueueLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/systemui/statusbar/NotificationData;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/NotificationData;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoing:Lcom/android/systemui/statusbar/NotificationData;

    new-instance v0, Lcom/android/systemui/statusbar/NotificationData;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/NotificationData;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatest:Lcom/android/systemui/statusbar/NotificationData;

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mPositionTmp:[I

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimatingReveal:Z

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAbsPos:[I

    iput v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisabled:I
# MEUI
    const/4 v1, 0x1
    
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->isLastNavBarEnabled:Z

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->isLastNavBarExchange:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->isNewBarEnabled:Z

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->isNewBarExchange:Z

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->isLastSameColor:Z

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->isNewSameColor:Z

    const v0, 0x7f020107

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarBGResId:I

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mResId:[I

    new-instance v0, Lcom/android/systemui/statusbar/StatusBarService$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/StatusBarService$1;-><init>(Lcom/android/systemui/statusbar/StatusBarService;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    new-instance v0, Lcom/android/systemui/statusbar/StatusBarService$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/StatusBarService$3;-><init>(Lcom/android/systemui/statusbar/StatusBarService;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mClearButtonListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/systemui/statusbar/StatusBarService$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/StatusBarService$4;-><init>(Lcom/android/systemui/statusbar/StatusBarService;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/statusbar/StatusBarService$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/StatusBarService$5;-><init>(Lcom/android/systemui/statusbar/StatusBarService;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStartTracing:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/statusbar/StatusBarService$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/StatusBarService$6;-><init>(Lcom/android/systemui/statusbar/StatusBarService;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStopTracing:Ljava/lang/Runnable;

    return-void

    :array_0
    .array-data 0x4
        0xct 0x0t 0xat 0x7ft
        0xdt 0x0t 0xat 0x7ft
    .end array-data
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/StatusBarService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTicking:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/StatusBarService;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTickerView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/StatusBarService;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/StatusBarService;->loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/StatusBarService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mContext:Landroid/content/Context;

    return-object v0
.end method
# MEUI
.method static synthetic access$1000033(Lcom/android/systemui/statusbar/StatusBarService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->addNavigationBar()V

    return-void
.end method

.method static synthetic access$1000036(Lcom/android/systemui/statusbar/StatusBarService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->removeNavigationBar()V

    return-void
.end method
.method static synthetic access$L1000006(Lcom/android/systemui/statusbar/StatusBarService;)Lcom/android/systemui/statusbar/NavigationBarView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mNavigationBarView:Lcom/android/systemui/statusbar/NavigationBarView;

    return-object v0
.end method

.method static synthetic access$L1000007(Lcom/android/systemui/statusbar/StatusBarService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->isLastNavBarEnabled:Z

    return v0
.end method

.method static synthetic access$L1000008(Lcom/android/systemui/statusbar/StatusBarService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->isLastNavBarExchange:Z

    return v0
.end method

.method static synthetic access$L1000009(Lcom/android/systemui/statusbar/StatusBarService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->isNewBarEnabled:Z

    return v0
.end method

.method static synthetic access$L1000010(Lcom/android/systemui/statusbar/StatusBarService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->isNewBarExchange:Z

    return v0
.end method

.method static synthetic access$L1000011(Lcom/android/systemui/statusbar/StatusBarService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->isLastSameColor:Z

    return v0
.end method

.method static synthetic access$L1000012(Lcom/android/systemui/statusbar/StatusBarService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->isNewSameColor:Z

    return v0
.end method
.method static synthetic access$S1000006(Lcom/android/systemui/statusbar/StatusBarService;Lcom/android/systemui/statusbar/NavigationBarView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mNavigationBarView:Lcom/android/systemui/statusbar/NavigationBarView;

    return-void
.end method

.method static synthetic access$S1000007(Lcom/android/systemui/statusbar/StatusBarService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StatusBarService;->isLastNavBarEnabled:Z

    return-void
.end method

.method static synthetic access$S1000008(Lcom/android/systemui/statusbar/StatusBarService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StatusBarService;->isLastNavBarExchange:Z

    return-void
.end method

.method static synthetic access$S1000009(Lcom/android/systemui/statusbar/StatusBarService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StatusBarService;->isNewBarEnabled:Z

    return-void
.end method

.method static synthetic access$S1000010(Lcom/android/systemui/statusbar/StatusBarService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StatusBarService;->isNewBarExchange:Z

    return-void
.end method

.method static synthetic access$S1000011(Lcom/android/systemui/statusbar/StatusBarService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StatusBarService;->isLastSameColor:Z

    return-void
.end method

.method static synthetic access$S1000012(Lcom/android/systemui/statusbar/StatusBarService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StatusBarService;->isNewSameColor:Z

    return-void
.end method


.method private addNavigationBar()V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1513
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mNavigationBarView:Lcom/android/systemui/statusbar/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NavigationBarView;->reorient()V

    .line 1514
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mNavigationBarView:Lcom/android/systemui/statusbar/NavigationBarView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->getNavigationBarLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private chooseIconIndex(ZI)I
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatest:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoing:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v1

    sub-int/2addr v1, p2

    add-int/2addr v1, v0

    :goto_0
    return v1

    :cond_0
    sub-int v1, v0, p2

    goto :goto_0
.end method

.method private getNavBarSize()I
    .locals 3

    .prologue
    .line 1555
    const/16 v0, 0x19

    .line 1557
    const/4 v1, 0x1

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v1, v0, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 1559
    return v0
.end method

.method private getNavigationBarLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1525
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->isNewBarEnabled:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->getNavBarSize()I

    move-result v0

    move v2, v0

    .line 1527
    :goto_0
    const/4 v5, -0x3

    .line 1535
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/16 v3, 0x7e0

    const v4, 0x800368

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 1548
    const-string v1, "NavigationBar"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1549
    const/16 v1, 0x57

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1550
    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1552
    return-object v0

    :cond_0
    move v2, v6

    .line 1525
    goto :goto_0
.end method

.method private loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    .locals 1

    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_0
    return-object v0
.end method

.method private makeExpandedVisible()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v0, "StatusBarService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Make expanded visible: expanded visible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedVisible:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedVisible:Z

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/StatusBarService;->visibilityChanged(Z)V

    const/16 v0, -0x2710

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedViewPos(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x9

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedView:Lcom/android/systemui/statusbar/ExpandedView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandedView;->requestFocus(I)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/TrackingView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedView:Lcom/android/systemui/statusbar/ExpandedView;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/ExpandedView;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTicking:Z

    if-nez v0, :cond_0

    const/high16 v0, 0x10a

    invoke-virtual {p0, v3, v0}, Lcom/android/systemui/statusbar/StatusBarService;->setDateViewVisibility(ZI)V

    goto :goto_0
.end method

.method private makeStatusBarView(Landroid/content/Context;)V
    .locals 11

    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/statusbar/ItemTouchDispatcher;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/ItemTouchDispatcher;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTouchDispatcher:Lcom/android/systemui/statusbar/ItemTouchDispatcher;

    const v8, 0x1050005

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mIconSize:I

    const v8, 0x7f030005

    const/4 v9, 0x0

    invoke-static {p1, v8, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandedView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->expanded:Lcom/android/systemui/statusbar/ExpandedView;

    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->expanded:Lcom/android/systemui/statusbar/ExpandedView;

    iput-object p0, v8, Lcom/android/systemui/statusbar/ExpandedView;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v6, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTouchDispatcher:Lcom/android/systemui/statusbar/ItemTouchDispatcher;

    iput-object v6, v8, Lcom/android/systemui/statusbar/ExpandedView;->mTouchDispatcher:Lcom/android/systemui/statusbar/ItemTouchDispatcher;

    const v8, 0x7f030004

    const/4 v9, 0x0

    invoke-static {p1, v8, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/StatusBarView;

    iput-object p0, v6, Lcom/android/systemui/statusbar/StatusBarView;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    const/4 v8, -0x3

    iput v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mPixelFormat:I

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/StatusBarView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v8

    iput v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mPixelFormat:I

    :cond_0
    iput-object v6, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    const v8, 0x7f0a0006

    invoke-virtual {v6, v8}, Lcom/android/systemui/statusbar/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusIcons:Landroid/widget/LinearLayout;

    const v8, 0x7f0a0005

    invoke-virtual {v6, v8}, Lcom/android/systemui/statusbar/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/IconMerger;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mNotificationIcons:Lcom/android/systemui/statusbar/IconMerger;

    const v8, 0x7f0a0004

    invoke-virtual {v6, v8}, Lcom/android/systemui/statusbar/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mIcons:Landroid/widget/LinearLayout;

    const v8, 0x7f0a0007

    invoke-virtual {v6, v8}, Lcom/android/systemui/statusbar/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTickerView:Landroid/view/View;

    const v8, 0x7f0a000a

    invoke-virtual {v6, v8}, Lcom/android/systemui/statusbar/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/DateView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDateView:Lcom/android/systemui/statusbar/DateView;

    const v8, 0x7f03001b

    const/4 v9, 0x0

    invoke-static {p1, v8, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NavigationBarView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mNavigationBarView:Lcom/android/systemui/statusbar/NavigationBarView;

    new-instance v8, Lcom/android/systemui/statusbar/StatusBarService$ExpandedDialog;

    invoke-direct {v8, p0, p1}, Lcom/android/systemui/statusbar/StatusBarService$ExpandedDialog;-><init>(Lcom/android/systemui/statusbar/StatusBarService;Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->expanded:Lcom/android/systemui/statusbar/ExpandedView;

    iput-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedView:Lcom/android/systemui/statusbar/ExpandedView;

    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->expanded:Lcom/android/systemui/statusbar/ExpandedView;

    const v9, 0x7f0a0010

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedContents:Landroid/view/View;

    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->expanded:Lcom/android/systemui/statusbar/ExpandedView;

    const v9, 0x7f0a0012

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoingTitle:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->expanded:Lcom/android/systemui/statusbar/ExpandedView;

    const v9, 0x7f0a0013

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoingItems:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->expanded:Lcom/android/systemui/statusbar/ExpandedView;

    const v9, 0x7f0a0014

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatestTitle:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->expanded:Lcom/android/systemui/statusbar/ExpandedView;

    const v9, 0x7f0a0015

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatestItems:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->expanded:Lcom/android/systemui/statusbar/ExpandedView;

    const v9, 0x7f0a0011

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mNoNotificationsTitle:Landroid/widget/TextView;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    new-array v8, v4, [Lcom/android/systemui/statusbar/CarrierLabel;

    iput-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCarrierLabels:[Lcom/android/systemui/statusbar/CarrierLabel;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCarrierLabels:[Lcom/android/systemui/statusbar/CarrierLabel;

    iget-object v9, p0, Lcom/android/systemui/statusbar/StatusBarService;->expanded:Lcom/android/systemui/statusbar/ExpandedView;

    iget-object v10, p0, Lcom/android/systemui/statusbar/StatusBarService;->mResId:[I

    aget v10, v10, v2

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CarrierLabel;

    aput-object v0, v8, v2

    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCarrierLabels:[Lcom/android/systemui/statusbar/CarrierLabel;

    aget-object v8, v8, v2

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/CarrierLabel;->setVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->expanded:Lcom/android/systemui/statusbar/ExpandedView;

    const v9, 0x7f0a000e

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mClearButton:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mClearButton:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/systemui/statusbar/StatusBarService;->mClearButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->expanded:Lcom/android/systemui/statusbar/ExpandedView;

    const v9, 0x7f0a000f

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mScrollView:Landroid/widget/ScrollView;

    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->expanded:Lcom/android/systemui/statusbar/ExpandedView;

    const v9, 0x7f0a0010

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mNotificationLinearLayout:Landroid/view/View;

    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedView:Lcom/android/systemui/statusbar/ExpandedView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/ExpandedView;->setVisibility(I)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoingTitle:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatestTitle:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v8, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;

    invoke-direct {v8, p0, p1, v6}, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;-><init>(Lcom/android/systemui/statusbar/StatusBarService;Landroid/content/Context;Lcom/android/systemui/statusbar/StatusBarView;)V

    iput-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTicker:Lcom/android/systemui/statusbar/Ticker;

    const v8, 0x7f0a0009

    invoke-virtual {v6, v8}, Lcom/android/systemui/statusbar/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/TickerView;

    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTicker:Lcom/android/systemui/statusbar/Ticker;

    iput-object v8, v7, Lcom/android/systemui/statusbar/TickerView;->mTicker:Lcom/android/systemui/statusbar/Ticker;

    const v8, 0x7f030008

    const/4 v9, 0x0

    invoke-static {p1, v8, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/TrackingView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    iput-object p0, v8, Lcom/android/systemui/statusbar/TrackingView;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    const v9, 0x7f0a0018

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/TrackingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CloseDragHandle;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCloseView:Lcom/android/systemui/statusbar/CloseDragHandle;

    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCloseView:Lcom/android/systemui/statusbar/CloseDragHandle;

    iput-object p0, v8, Lcom/android/systemui/statusbar/CloseDragHandle;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    const/high16 v8, 0x7f07

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mEdgeBorder:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->setAreThereNotifications()V

    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDateView:Lcom/android/systemui/statusbar/DateView;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/DateView;->setVisibility(I)V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v8, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v8, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v8, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v8, "android.provider.Telephony.SPN_STRINGS_UPDATED0"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v8, "android.provider.Telephony.SPN_STRINGS_UPDATED1"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v8, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v8, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v8, "ACTION_STATUSBAR_BACKGROUD_NOT_BLACK"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v8, "ACTION_STATUSBAR_BACKGROUD_BLACK"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v8, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedView:Lcom/android/systemui/statusbar/ExpandedView;

    const v6, 0x7f0a0058

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lidroid/systemui/quickpanel/PowerWidget;

    iput-object v5, p0, Lcom/android/systemui/statusbar/StatusBarService;->mPowerWidget:Lcom/lidroid/systemui/quickpanel/PowerWidget;

    iget-object v6, p0, Lcom/android/systemui/statusbar/StatusBarService;->mPowerWidget:Lcom/lidroid/systemui/quickpanel/PowerWidget;

    invoke-virtual {v6}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->setupWidget()V

    return-void
.end method

# MEUI
.method private removeNavigationBar()V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1562
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mNavigationBarView:Lcom/android/systemui/statusbar/NavigationBarView;

    invoke-virtual {v0, v1}, Landroid/view/WindowManagerImpl;->removeView(Landroid/view/View;)V

    return-void
.end method

.method private setAreThereNotifications()V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoing:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationData;->hasVisibleItems()Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatest:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationData;->hasVisibleItems()Z

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatest:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationData;->hasClearableItems()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mClearButton:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoingTitle:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    move v3, v4

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatestTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    move v3, v4

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    if-nez v1, :cond_0

    if-eqz v0, :cond_4

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mNoNotificationsTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mClearButton:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v3, v5

    goto :goto_1

    :cond_3
    move v3, v5

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mNoNotificationsTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method

.method private tick(Lcom/android/internal/statusbar/StatusBarNotification;)V
    .locals 1

    iget-object v0, p1, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisabled:I

    and-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTicker:Lcom/android/systemui/statusbar/Ticker;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/Ticker;->addEntry(Lcom/android/internal/statusbar/StatusBarNotification;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 5

    new-instance v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusIcons:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mIconSize:I

    iget v4, p0, Lcom/android/systemui/statusbar/StatusBarService;->mIconSize:I

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, p3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mPowerWidget:Lcom/lidroid/systemui/quickpanel/PowerWidget;

    invoke-virtual {v1}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->updateWidget()V

    return-void
.end method

.method public addNotification(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)V
    .locals 4

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    const-string v2, "StatusBarService"

    const-string v3, "Notification has fullScreenIntent; sending fullScreenIntent"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/StatusBarService;->addNotificationViews(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_1
    if-eqz v1, :cond_2

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/StatusBarService;->tick(Lcom/android/internal/statusbar/StatusBarNotification;)V

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->setAreThereNotifications()V

    const/16 v2, -0x2710

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedViewPos(I)V

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    nop
.end method

.method addNotificationViews(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)Lcom/android/systemui/statusbar/StatusBarIconView;
    .locals 13

    const/4 v12, 0x0

    invoke-virtual {p2}, Lcom/android/internal/statusbar/StatusBarNotification;->isOngoing()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoing:Lcom/android/systemui/statusbar/NotificationData;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoingItems:Landroid/widget/LinearLayout;

    move-object v8, v1

    :goto_0
    invoke-virtual {p0, p2, v8}, Lcom/android/systemui/statusbar/StatusBarService;->makeNotificationView(Lcom/android/internal/statusbar/StatusBarNotification;Landroid/view/ViewGroup;)[Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t expand RemoteViews for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/StatusBarService;->handleNotificationError(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Ljava/lang/String;)V

    move-object v0, v12

    :goto_1
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatest:Lcom/android/systemui/statusbar/NotificationData;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatestItems:Landroid/widget/LinearLayout;

    move-object v8, v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    aget-object v3, v1, v2

    const/4 v2, 0x1

    aget-object v4, v1, v2

    const/4 v2, 0x2

    aget-object v5, v1, v2

    new-instance v6, Lcom/android/systemui/statusbar/StatusBarIconView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p2, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, p0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Lcom/android/internal/statusbar/StatusBarIcon;

    iget-object v2, p2, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    iget-object v9, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v9, v9, Landroid/app/Notification;->icon:I

    iget-object v10, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v10, v10, Landroid/app/Notification;->iconLevel:I

    iget-object v11, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v11, v11, Landroid/app/Notification;->number:I

    invoke-direct {v1, v2, v9, v10, v11}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v6, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Coulding create icon: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/StatusBarService;->handleNotificationError(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Ljava/lang/String;)V

    move-object v0, v12

    goto :goto_1

    :cond_2
    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/NotificationData;->add(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/android/systemui/statusbar/StatusBarIconView;)I

    move-result v0

    invoke-virtual {v8, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    invoke-direct {p0, v7, v0}, Lcom/android/systemui/statusbar/StatusBarService;->chooseIconIndex(ZI)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mNotificationIcons:Lcom/android/systemui/statusbar/IconMerger;

    invoke-virtual {v1, v6, v0}, Lcom/android/systemui/statusbar/IconMerger;->addView(Lcom/android/systemui/statusbar/StatusBarIconView;I)V

    move-object v0, v6

    goto :goto_1
.end method

.method protected addStatusBarView()V
    .locals 8

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v1, 0x1050004

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/16 v3, 0x7d0

    const/16 v4, 0x48

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 v1, 0x37

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const-string v1, "StatusBar"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const v1, 0x103006d

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v1

    invoke-virtual {v1, v7, v0}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public animateCollapse()V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "StatusBarService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animateCollapse(): mExpanded="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mExpandedVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mExpanded="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mAnimating="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimating:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mAnimY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mAnimVel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimVel:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedVisible:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimating:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    float-to-int v0, v0

    :goto_1
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/StatusBarService;->prepareTracking(IZ)V

    const/high16 v1, -0x3b06

    invoke-virtual {p0, v0, v1, v3}, Lcom/android/systemui/statusbar/StatusBarService;->performFling(IFZ)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    sub-int/2addr v0, v3

    goto :goto_1
.end method

.method public animateExpand()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "StatusBarService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Animate expand: expanded="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisabled:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/statusbar/StatusBarService;->prepareTracking(IZ)V

    const/high16 v0, 0x44fa

    invoke-virtual {p0, v3, v0, v4}, Lcom/android/systemui/statusbar/StatusBarService;->performFling(IFZ)V

    goto :goto_0
.end method

.method public disable(I)V
    .locals 3

    const-string v2, "StatusBarService"

    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisabled:I

    xor-int/2addr v0, p1

    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisabled:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    const-string v1, "StatusBarService"

    const-string v1, "DISABLE_EXPAND: yes"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->animateCollapse()V

    :cond_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_4

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_3

    const-string v0, "StatusBarService"

    const-string v0, "DISABLE_NOTIFICATION_ICONS: yes"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTicking:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTicker:Lcom/android/systemui/statusbar/Ticker;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/Ticker;->halt()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x0

    const v1, 0x10a0001

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/StatusBarService;->setNotificationIconVisibility(ZI)V

    goto :goto_0

    :cond_3
    const-string v0, "StatusBarService"

    const-string v0, "DISABLE_NOTIFICATION_ICONS: no"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedVisible:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    const/high16 v1, 0x10a

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/StatusBarService;->setNotificationIconVisibility(ZI)V

    goto :goto_0

    :cond_4
    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTicking:Z

    if-eqz v0, :cond_1

    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_1

    const-string v0, "StatusBarService"

    const-string v0, "DISABLE_NOTIFICATION_TICKER: yes"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTicker:Lcom/android/systemui/statusbar/Ticker;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/Ticker;->halt()V

    goto :goto_0
.end method

.method doAnimation()V
    .locals 5

    const/4 v4, 0x0

    const-string v3, "StatusBarService"

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimating:Z

    if-eqz v0, :cond_0

    const-string v0, "StatusBarService"

    const-string v0, "doAnimation"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "StatusBarService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doAnimation before mAnimY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->incrementAnim()V

    const-string v0, "StatusBarService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doAnimation after  mAnimY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    const-string v0, "StatusBarService"

    const-string v0, "Animation completed to expanded state."

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimating:Z

    const/16 v0, -0x2711

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedViewPos(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->performExpand()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    const-string v0, "StatusBarService"

    const-string v0, "Animation completed to collapsed state."

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimating:Z

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedViewPos(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->performCollapse()V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedViewPos(I)V

    iget-wide v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCurAnimationTime:J

    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCurAnimationTime:J

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/StatusBarService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCurAnimationTime:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/StatusBarService$H;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method doRevealAnimation()V
    .locals 5

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCloseView:Lcom/android/systemui/statusbar/CloseDragHandle;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/CloseDragHandle;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/StatusBarView;->getHeight()I

    move-result v2

    add-int v0, v1, v2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimatingReveal:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimating:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    int-to-float v2, v0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->incrementAnim()V

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    int-to-float v2, v0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    int-to-float v1, v0

    iput v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedViewPos(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedViewPos(I)V

    iget-wide v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCurAnimationTime:J

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCurAnimationTime:J

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/StatusBarService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCurAnimationTime:J

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/StatusBarService$H;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    const-string v0, "  mDisplayHeight="

    const-string v0, "android.permission.DUMP"

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarService;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump StatusBar from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "Current Status Bar state:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mExpanded="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mExpandedVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mTicking="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTicking:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mTracking="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTracking:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mAnimating="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimating:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mAnimY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mAnimVel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimVel:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mAnimAccel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimAccel:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCurAnimationTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCurAnimationTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mAnimLastTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimLastTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDisplayHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisplayHeight:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mAnimatingReveal="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimatingReveal:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mViewDelta="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mViewDelta:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDisplayHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisplayHeight:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mExpandedParams: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mExpandedView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedView:Lcom/android/systemui/statusbar/ExpandedView;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mExpandedDialog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mTrackingParams: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mTrackingView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mOngoingTitle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoingTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mOngoingItems: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoingItems:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLatestTitle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatestTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLatestItems: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatestItems:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mNoNotificationsTitle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mNoNotificationsTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCloseView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCloseView:Lcom/android/systemui/statusbar/CloseDragHandle;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mTickerView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTickerView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mScrollView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " scroll "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getScrollX()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNotificationLinearLayout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mNotificationLinearLayout:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    new-instance v1, Lcom/android/systemui/statusbar/StatusBarService$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/StatusBarService$2;-><init>(Lcom/android/systemui/statusbar/StatusBarService;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarService$H;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    nop
.end method

.method getExpandedHeight()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCloseView:Lcom/android/systemui/statusbar/CloseDragHandle;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/CloseDragHandle;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method handleNotificationError(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/StatusBarService;->removeNotification(Landroid/os/IBinder;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v1, p2, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/internal/statusbar/StatusBarNotification;->tag:Ljava/lang/String;

    iget v3, p2, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    iget v4, p2, Lcom/android/internal/statusbar/StatusBarNotification;->uid:I

    iget v5, p2, Lcom/android/internal/statusbar/StatusBarNotification;->initialPid:I

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationError(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method incrementAnim()V
    .locals 7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimLastTime:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    const/high16 v3, 0x447a

    div-float/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    iget v4, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimVel:F

    iget v5, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimAccel:F

    mul-float v6, v4, v2

    add-float/2addr v3, v6

    const/high16 v6, 0x3f00

    mul-float/2addr v6, v5

    mul-float/2addr v6, v2

    mul-float/2addr v6, v2

    add-float/2addr v3, v6

    iput v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    mul-float/2addr v2, v5

    add-float/2addr v2, v4

    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimVel:F

    iput-wide v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimLastTime:J

    return-void
.end method

.method interceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const/high16 v5, 0x4316

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v7, 0x0

    const-string v0, "StatusBarService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Touch: rawY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mDisabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisabled:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisabled:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    move v0, v7

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarView;->getHeight()I

    move-result v0

    mul-int/lit8 v1, v0, 0x2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    if-nez v3, :cond_4

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mViewDelta:I

    :goto_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    if-nez v0, :cond_1

    if-lt v2, v1, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    sub-int/2addr v0, v1

    if-le v2, v0, :cond_3

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mEdgeBorder:I

    if-lt v0, v1, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    sub-int v1, v3, v1

    if-ge v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    if-nez v0, :cond_5

    move v0, v4

    :goto_2
    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/statusbar/StatusBarService;->prepareTracking(IZ)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_3
    :goto_3
    move v0, v7

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAbsPos:[I

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/TrackingView;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAbsPos:[I

    aget v0, v0, v4

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/TrackingView;->getHeight()I

    move-result v3

    add-int/2addr v0, v3

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mViewDelta:I

    goto :goto_1

    :cond_5
    move v0, v7

    goto :goto_2

    :cond_6
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTracking:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCloseView:Lcom/android/systemui/statusbar/CloseDragHandle;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/CloseDragHandle;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimatingReveal:Z

    if-eqz v2, :cond_7

    if-lt v1, v0, :cond_3

    :cond_7
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimatingReveal:Z

    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mViewDelta:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedViewPos(I)V

    goto :goto_3

    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    cmpg-float v1, v0, v3

    if-gez v1, :cond_c

    move v1, v4

    :goto_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    cmpg-float v3, v2, v3

    if-gez v3, :cond_9

    neg-float v2, v2

    :cond_9
    cmpl-float v3, v2, v5

    if-lez v3, :cond_a

    move v2, v5

    :cond_a
    float-to-double v3, v0

    float-to-double v5, v2

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v0, v2

    if-eqz v1, :cond_b

    neg-float v0, v0

    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v1, v0, v7}, Lcom/android/systemui/statusbar/StatusBarService;->performFling(IFZ)V

    goto :goto_3

    :cond_c
    move v1, v7

    goto :goto_4
.end method

.method public isExpanded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    return v0
.end method

.method makeNotificationView(Lcom/android/internal/statusbar/StatusBarNotification;Landroid/view/ViewGroup;)[Landroid/view/View;
    .locals 19

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v17, v0

    if-nez v17, :cond_0

    :goto_0
    return-object v4

    :cond_0
    const-string v4, "layout_inflater"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/LayoutInflater;

    const v4, 0x7f030007

    move-object v0, v15

    move v1, v4

    move-object/from16 v2, p2

    move v3, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/android/systemui/statusbar/LatestItemContainer;

    move-object/from16 v0, v16

    iget v0, v0, Landroid/app/Notification;->flags:I

    move v4, v0

    and-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_1

    move-object/from16 v0, v16

    iget v0, v0, Landroid/app/Notification;->flags:I

    move v4, v0

    and-int/lit8 v4, v4, 0x20

    if-nez v4, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mTouchDispatcher:Lcom/android/systemui/statusbar/ItemTouchDispatcher;

    move-object v4, v0

    new-instance v5, Lcom/android/systemui/statusbar/StatusBarService$7;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/StatusBarService$7;-><init>(Lcom/android/systemui/statusbar/StatusBarService;Lcom/android/internal/statusbar/StatusBarNotification;)V

    move-object/from16 v0, v18

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/LatestItemContainer;->setOnSwipeCallback(Lcom/android/systemui/statusbar/ItemTouchDispatcher;Ljava/lang/Runnable;)V

    :cond_1
    const v4, 0x7f0a0017

    move-object/from16 v0, v18

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/LatestItemContainer;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    const/high16 v4, 0x6

    invoke-virtual {v10, v4}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    move-object v4, v0

    invoke-virtual {v10, v4}, Landroid/view/ViewGroup;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    move-object v6, v0

    if-eqz v6, :cond_2

    new-instance v4, Lcom/android/systemui/statusbar/StatusBarService$Launcher;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    move-object v7, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->tag:Ljava/lang/String;

    move-object v8, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    move v9, v0

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/systemui/statusbar/StatusBarService$Launcher;-><init>(Lcom/android/systemui/statusbar/StatusBarService;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v10, v4}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    const/4 v13, 0x0

    const/4 v12, 0x0

    :try_start_0
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    :goto_1
    if-nez v13, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    move v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v4, "StatusBarService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "couldn\'t inflate view for notification "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v4, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v11

    move-object v12, v11

    goto :goto_1

    :cond_3
    invoke-virtual {v10, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 v4, 0x1

    move-object/from16 v0, v18

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/LatestItemContainer;->setDrawingCacheEnabled(Z)V

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/view/View;

    const/4 v5, 0x0

    aput-object v18, v4, v5

    const/4 v5, 0x1

    aput-object v10, v4, v5

    const/4 v5, 0x2

    aput-object v13, v4, v5

    goto/16 :goto_0

    nop
.end method

.method onBarViewAttached()V
    .locals 6

    const/4 v1, -0x1

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/TrackingView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    move v5, v0

    :goto_0
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d3

    const v4, 0x20304

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 v1, 0x37

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const-string v1, "TrackingView"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x3f00

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingPosition:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    invoke-virtual {v1, v2, v0}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    move v5, v0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 10
# MEUI
    .line 163
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "navbar_enabled"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/meui/MeSettings;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->isLastNavBarEnabled:Z

    .line 164
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->isLastNavBarEnabled:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->isNewBarEnabled:Z

    .line 165
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "navbar_exchange"

    invoke-static {v0, v2, v1}, Lcom/meui/MeSettings;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->isLastNavBarExchange:Z

    .line 166
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->isLastNavBarExchange:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->isNewBarExchange:Z

    .line 167
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "navbar_statusbarcolor"

    invoke-static {v0, v2, v1}, Lcom/meui/MeSettings;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->isLastSameColor:Z

    .line 168
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->isLastSameColor:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->isNewSameColor:Z

    .line 169
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "content://com.meui.settings"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/statusbar/StatusBarService$100000000;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/statusbar/StatusBarService$100000000;-><init>(Lcom/android/systemui/statusbar/StatusBarService;Landroid/os/Handler;)V

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
# MEUI END
    const-string v7, "window"

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/StatusBarService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisplay:Landroid/view/Display;

    invoke-direct {p0, p0}, Lcom/android/systemui/statusbar/StatusBarService;->makeStatusBarView(Landroid/content/Context;)V

    new-instance v3, Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-direct {v3}, Lcom/android/internal/statusbar/StatusBarIconList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-direct {v7, p0, v3}, Lcom/android/systemui/statusbar/CommandQueue;-><init>(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;Lcom/android/internal/statusbar/StatusBarIconList;)V

    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    const-string v7, "statusbar"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    :try_start_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-interface {v7, v8, v3, v4, v5}, Lcom/android/internal/statusbar/IStatusBarService;->registerStatusBar(Lcom/android/internal/statusbar/IStatusBar;Lcom/android/internal/statusbar/StatusBarIconList;Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v3}, Lcom/android/internal/statusbar/StatusBarIconList;->size()I

    move-result v0

    const/4 v6, 0x0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    invoke-virtual {v3, v1}, Lcom/android/internal/statusbar/StatusBarIconList;->getIcon(I)Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v3, v1}, Lcom/android/internal/statusbar/StatusBarIconList;->getSlot(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7, v1, v6, v2}, Lcom/android/systemui/statusbar/StatusBarService;->addIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;)V

    add-int/lit8 v6, v6, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v0, v7, :cond_2

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_3

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/IBinder;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/statusbar/StatusBarNotification;

    invoke-virtual {p0, v7, v8}, Lcom/android/systemui/statusbar/StatusBarService;->addNotification(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    const-string v7, "StatusBarService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Notification list length mismatch: keys="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " notifications="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->addStatusBarView()V
# MEUI ADD
    .line 236
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->isNewBarEnabled:Z

    if-eqz v0, :cond_0

    .line 237
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->addNavigationBar()V

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    new-instance v1, Lcom/android/systemui/statusbar/StatusBarService$100000001;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/StatusBarService$100000001;-><init>(Lcom/android/systemui/statusbar/StatusBarService;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarView;->setOnBarColorChangeListener(Lcom/android/systemui/statusbar/OnBarColorChangeListener;)V
# MEUI END
    new-instance v7, Lcom/android/systemui/statusbar/StatusBarPolicy;

    invoke-direct {v7, p0}, Lcom/android/systemui/statusbar/StatusBarPolicy;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mIconPolicy:Lcom/android/systemui/statusbar/StatusBarPolicy;

    return-void

    :catch_0
    move-exception v7

    goto :goto_0

    nop
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method onTrackingViewAttached()V
    .locals 5

    const/4 v4, -0x1

    const/4 v0, -0x3

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->getExpandedHeight()I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v3, 0x0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    neg-int v1, v1

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingPosition:I

    const/16 v1, 0x7d3

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x1328

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v1, 0x37

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const-string v1, "StatusBarExpanded"

    invoke-virtual {v2, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setFormat(I)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedView:Lcom/android/systemui/statusbar/ExpandedView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedView:Lcom/android/systemui/statusbar/ExpandedView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandedView;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout;

    return-void
.end method

.method performCollapse()V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    const-string v0, "StatusBarService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "performCollapse: mExpanded="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mExpandedVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mTicking="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTicking:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedVisible:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedVisible:Z

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/StatusBarService;->visibilityChanged(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x20001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/TrackingView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedView:Lcom/android/systemui/statusbar/ExpandedView;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/ExpandedView;->setVisibility(I)V

    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisabled:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    const/4 v0, 0x1

    const/high16 v1, 0x10a

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/StatusBarService;->setNotificationIconVisibility(ZI)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDateView:Lcom/android/systemui/statusbar/DateView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/DateView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    const v0, 0x10a0001

    invoke-virtual {p0, v3, v0}, Lcom/android/systemui/statusbar/StatusBarService;->setDateViewVisibility(ZI)V

    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    goto :goto_0
.end method

.method performExpand()V
    .locals 3

    const-string v0, "StatusBarService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "performExpand: mExpanded="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisabled:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->makeExpandedVisible()V

    const/16 v0, -0x2711

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedViewPos(I)V

    goto :goto_0
.end method

.method performFling(IFZ)V
    .locals 7

    const/high16 v6, 0x44fa

    const/high16 v1, 0x4348

    const/high16 v5, -0x3b06

    const/high16 v4, -0x3cb8

    const/4 v3, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimatingReveal:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisplayHeight:F

    int-to-float v0, p1

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    iput p2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimVel:F

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    if-eqz v0, :cond_3

    if-nez p3, :cond_2

    cmpl-float v0, p2, v1

    if-gtz v0, :cond_0

    int-to-float v0, p1

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisplayHeight:F

    const/high16 v2, 0x41c8

    sub-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    cmpl-float v0, p2, v4

    if-lez v0, :cond_2

    :cond_0
    iput v6, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimAccel:F

    cmpg-float v0, p2, v3

    if-gez v0, :cond_1

    iput v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimVel:F

    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimLastTime:J

    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCurAnimationTime:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimating:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarService$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarService$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/StatusBarService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCurAnimationTime:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/StatusBarService$H;->sendMessageAtTime(Landroid/os/Message;J)Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->stopTracking()V

    return-void

    :cond_2
    iput v5, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimAccel:F

    cmpl-float v0, p2, v3

    if-lez v0, :cond_1

    iput v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimVel:F

    goto :goto_0

    :cond_3
    if-nez p3, :cond_4

    cmpl-float v0, p2, v1

    if-gtz v0, :cond_4

    int-to-float v0, p1

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisplayHeight:F

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    cmpl-float v0, p2, v4

    if-lez v0, :cond_5

    :cond_4
    iput v6, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimAccel:F

    cmpg-float v0, p2, v3

    if-gez v0, :cond_1

    iput v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimVel:F

    goto :goto_0

    :cond_5
    iput v5, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimAccel:F

    cmpl-float v0, p2, v3

    if-lez v0, :cond_1

    iput v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimVel:F

    goto :goto_0
.end method

.method prepareTracking(IZ)V
    .locals 6

    const/16 v5, 0x3e9

    const/16 v1, 0x3e8

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTracking:Z

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p2, :cond_0

    const/high16 v0, 0x44fa

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimAccel:F

    const/high16 v0, 0x4348

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimVel:F

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedViewPos(I)V

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimating:Z

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimatingReveal:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarService$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/StatusBarService$H;->removeMessages(I)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimLastTime:J

    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCurAnimationTime:J

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimating:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/StatusBarService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCurAnimationTime:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/StatusBarService$H;->sendMessageAtTime(Landroid/os/Message;J)Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->makeExpandedVisible()V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimating:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimating:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarService$H;->removeMessages(I)V

    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mViewDelta:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedViewPos(I)V

    goto :goto_0
.end method

.method public removeIcon(Ljava/lang/String;II)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    return-void
.end method

.method public removeNotification(Landroid/os/IBinder;)V
    .locals 4

    const-string v1, "StatusBarService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeNotification key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/StatusBarService;->removeNotificationViews(Landroid/os/IBinder;)Lcom/android/internal/statusbar/StatusBarNotification;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTicker:Lcom/android/systemui/statusbar/Ticker;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/Ticker;->removeEntry(Lcom/android/internal/statusbar/StatusBarNotification;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->setAreThereNotifications()V

    const/16 v1, -0x2710

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedViewPos(I)V

    :cond_0
    return-void
.end method

.method removeNotificationViews(Landroid/os/IBinder;)Lcom/android/internal/statusbar/StatusBarNotification;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoing:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationData;->remove(Landroid/os/IBinder;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatest:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationData;->remove(Landroid/os/IBinder;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "StatusBarService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeNotification for unknown key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    goto :goto_0
.end method

.method setDateViewVisibility(ZI)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDateView:Lcom/android/systemui/statusbar/DateView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/DateView;->setUpdates(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDateView:Lcom/android/systemui/statusbar/DateView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/DateView;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v1, 0x4

    goto :goto_0
.end method

.method setNotificationIconVisibility(ZI)V
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mNotificationIcons:Lcom/android/systemui/statusbar/IconMerger;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/IconMerger;->getVisibility()I

    move-result v0

    if-eqz p1, :cond_1

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    if-eq v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mNotificationIcons:Lcom/android/systemui/statusbar/IconMerger;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/IconMerger;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mNotificationIcons:Lcom/android/systemui/statusbar/IconMerger;

    const/4 v3, 0x0

    invoke-direct {p0, p2, v3}, Lcom/android/systemui/statusbar/StatusBarService;->loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/IconMerger;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x4

    move v1, v2

    goto :goto_0
.end method

.method stopTracking()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTracking:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-void
.end method

.method updateExpandedHeight()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedView:Lcom/android/systemui/statusbar/ExpandedView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->getExpandedHeight()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method

.method updateExpandedViewPos(I)V
    .locals 11

    const/16 v6, -0x2710

    const/4 v7, 0x1

    const-string v10, " mTrackingPosition="

    const-string v9, " mTrackingParams.y="

    const-string v8, "StatusBarService"

    const-string v0, "StatusBarService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateExpandedViewPos before expandedPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mTrackingParams.y="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v1, :cond_2

    const-string v1, "???"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mTrackingPosition="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedVisible:Z

    if-nez v2, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    if-eqz v0, :cond_0

    neg-int v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingPosition:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingPosition:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v2, v3}, Landroid/view/WindowManagerImpl;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    neg-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_3
    const/16 v2, -0x2711

    if-ne p1, v2, :cond_8

    move v2, v0

    :goto_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingPosition:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    sub-int v4, v1, v0

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v3, v4, v5}, Landroid/view/WindowManagerImpl;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCloseView:Lcom/android/systemui/statusbar/CloseDragHandle;

    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarService;->mPositionTmp:[I

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/CloseDragHandle;->getLocationInWindow([I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mPositionTmp:[I

    aget v3, v3, v7

    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedContents:Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarService;->mPositionTmp:[I

    invoke-virtual {v4, v5}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarService;->mPositionTmp:[I

    aget v4, v4, v7

    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedContents:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    if-eq p1, v6, :cond_7

    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v6, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/TrackingView;->getHeight()I

    move-result v6

    add-int/2addr v2, v6

    iget-object v6, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    sub-int v3, v6, v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v4

    iput v2, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    if-le v2, v0, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_4
    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingPosition:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    if-ge v3, v2, :cond_5

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_5
    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingPosition:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/TrackingView;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    if-le v2, v0, :cond_b

    move v0, v7

    :goto_3
    if-nez v0, :cond_6

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    neg-int v1, v1

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const-string v1, "StatusBarService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateExpandedViewPos visibilityChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarService;->visibilityChanged(Z)V

    :cond_7
    const-string v0, "StatusBarService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateExpandedViewPos after  expandedPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mTrackingParams.y="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mTrackingPosition="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mExpandedParams.y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mExpandedParams.height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_8
    if-ne p1, v6, :cond_9

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingPosition:I

    goto/16 :goto_2

    :cond_9
    if-gt p1, v1, :cond_a

    move v2, p1

    :goto_4
    sub-int v3, v1, v0

    sub-int/2addr v2, v3

    goto/16 :goto_2

    :cond_a
    move v2, v1

    goto :goto_4

    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_3
.end method

.method public updateIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;Lcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v0, p5}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    return-void
.end method

.method public updateNotification(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoing:Lcom/android/systemui/statusbar/NotificationData;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationData;->findEntry(Landroid/os/IBinder;)I

    move-result v15

    if-ltz v15, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoing:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v16, v0

    :goto_0
    move-object/from16 v0, v16

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationData;->getEntryAt(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v14

    move-object v0, v14

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    move-object v4, v0

    iget-object v13, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    move-object v4, v0

    iget-object v10, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    move-object v4, v0

    iget-wide v4, v4, Landroid/app/Notification;->when:J

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    move-object v6, v0

    iget-wide v6, v6, Landroid/app/Notification;->when:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_5

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/statusbar/StatusBarNotification;->isOngoing()Z

    move-result v4

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/statusbar/StatusBarNotification;->isOngoing()Z

    move-result v5

    if-ne v4, v5, :cond_5

    iget-object v4, v14, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    if-eqz v4, :cond_5

    if-eqz v10, :cond_5

    if-eqz v13, :cond_5

    invoke-virtual {v10}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v13}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v13}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v13}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v4

    invoke-virtual {v10}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v5

    if-ne v4, v5, :cond_5

    const-string v4, "StatusBarService"

    const-string v5, "reusing notification"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p2

    move-object v1, v14

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    :try_start_0
    iget-object v4, v14, Lcom/android/systemui/statusbar/NotificationData$Entry;->content:Landroid/view/View;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;)V

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    move-object v4, v0

    iget-object v6, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v6, :cond_0

    iget-object v11, v14, Lcom/android/systemui/statusbar/NotificationData$Entry;->content:Landroid/view/View;

    new-instance v4, Lcom/android/systemui/statusbar/StatusBarService$Launcher;

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    move-object v7, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->tag:Ljava/lang/String;

    move-object v8, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    move v9, v0

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/systemui/statusbar/StatusBarService$Launcher;-><init>(Lcom/android/systemui/statusbar/StatusBarService;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v11, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    new-instance v12, Lcom/android/internal/statusbar/StatusBarIcon;

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    move-object v5, v0

    iget v5, v5, Landroid/app/Notification;->icon:I

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    move-object v6, v0

    iget v6, v6, Landroid/app/Notification;->iconLevel:I

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    move-object v7, v0

    iget v7, v7, Landroid/app/Notification;->number:I

    invoke-direct {v12, v4, v5, v6, v7}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;III)V

    iget-object v4, v14, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v4, v12}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t update icon: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/StatusBarService;->handleNotificationError(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mLatest:Lcom/android/systemui/statusbar/NotificationData;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationData;->findEntry(Landroid/os/IBinder;)I

    move-result v15

    if-gez v15, :cond_2

    const-string v4, "StatusBarService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateNotification for unknown key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mLatest:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v16, v0

    goto/16 :goto_0

    :catch_0
    move-exception v4

    move-object v11, v4

    const-string v4, "StatusBarService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t reapply views for package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v10}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/StatusBarService;->removeNotificationViews(Landroid/os/IBinder;)Lcom/android/internal/statusbar/StatusBarNotification;

    invoke-virtual/range {p0 .. p2}, Lcom/android/systemui/statusbar/StatusBarService;->addNotificationViews(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)Lcom/android/systemui/statusbar/StatusBarIconView;

    :cond_3
    :goto_2
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    move-object v4, v0

    iget-object v4, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v4, :cond_4

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    move-object v4, v0

    iget-object v4, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v5, v14, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    iget-object v5, v5, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v5, v5, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/StatusBarService;->tick(Lcom/android/internal/statusbar/StatusBarNotification;)V

    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/StatusBarService;->setAreThereNotifications()V

    const/16 v4, -0x2710

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedViewPos(I)V

    goto/16 :goto_1

    :cond_5
    const-string v4, "StatusBarService"

    const-string v5, "not reusing notification"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/StatusBarService;->removeNotificationViews(Landroid/os/IBinder;)Lcom/android/internal/statusbar/StatusBarNotification;

    invoke-virtual/range {p0 .. p2}, Lcom/android/systemui/statusbar/StatusBarService;->addNotificationViews(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)Lcom/android/systemui/statusbar/StatusBarIconView;

    goto :goto_2
.end method

.method updateResources()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mClearButton:Landroid/widget/TextView;

    const v2, 0x7f080001

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoingTitle:Landroid/widget/TextView;

    const v2, 0x7f080003

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatestTitle:Landroid/widget/TextView;

    const v2, 0x7f080004

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mNoNotificationsTitle:Landroid/widget/TextView;

    const v2, 0x7f080002

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x7f07

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mEdgeBorder:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->expanded:Lcom/android/systemui/statusbar/ExpandedView;

    const v1, 0x7f0a000b

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method

.method vibrate()V
    .locals 2

    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    const-wide/16 v0, 0xfa

    invoke-virtual {p0, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method

.method public viewInfo(Landroid/view/View;)Ljava/lang/String;
    .locals 3

    const-string v2, ","

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method visibilityChanged(Z)V
    .locals 4

    const v3, 0x7f020108

    const v2, 0x7f020107

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mPanelSlightlyVisible:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mPanelSlightlyVisible:Z

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->onPanelRevealed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarBGResId:I

    const v1, 0x7f020109

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mPanelSlightlyVisible:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/StatusBarView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDateView:Lcom/android/systemui/statusbar/DateView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/DateView;->setBackgroundResource(I)V

    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarBGResId:I

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/StatusBarView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDateView:Lcom/android/systemui/statusbar/DateView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/DateView;->setBackgroundResource(I)V

    iput v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarBGResId:I

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method
