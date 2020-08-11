.class public Lcom/android/systemui/statusbar/StatusBarView;
.super Landroid/widget/FrameLayout;
.source "StatusBarView.java"


# static fields
.field static c:Landroid/content/Context;


# instance fields
.field private final CONTENT_URI:Landroid/net/Uri;

.field mBackground:Lcom/android/systemui/statusbar/FixedSizeDrawable;

.field mDate:Landroid/view/View;

.field private mDefaultColor:I

.field private mDoubleTapGesture:Landroid/view/GestureDetector;

.field mNotificationIcons:Landroid/view/ViewGroup;

.field private final mObserver:Lcom/android/systemui/statusbar/StatusBarView$MeSettingsObserver;

.field mService:Lcom/android/systemui/statusbar/StatusBarService;

.field mStatusIcons:Landroid/view/ViewGroup;

.field private final resolver:Landroid/content/ContentResolver;

.field private watcher:Landroid/app/IActivityWatcher$Stub;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sput-object p1, Lcom/android/systemui/statusbar/StatusBarView;->c:Landroid/content/Context;

    new-instance v0, Landroid/view/GestureDetector;

    sget-object v1, Lcom/android/systemui/statusbar/StatusBarView;->c:Landroid/content/Context;

    new-instance v2, Lcom/android/systemui/statusbar/StatusBarView$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/StatusBarView$2;-><init>(Lcom/android/systemui/statusbar/StatusBarView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mDoubleTapGesture:Landroid/view/GestureDetector;
    
    .line 28
    const-string v0, "content://com.meui.RomCtrl/BarColors"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->CONTENT_URI:Landroid/net/Uri;

    const/high16 v0, 0x4d00

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mDefaultColor:I

    .line 29
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarView;->mContext:Landroid/content/Context;

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->resolver:Landroid/content/ContentResolver;

    .line 31
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarView$MeSettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/StatusBarView$MeSettingsObserver;-><init>(Lcom/android/systemui/statusbar/StatusBarView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mObserver:Lcom/android/systemui/statusbar/StatusBarView$MeSettingsObserver;

    .line 34
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->resolver:Landroid/content/ContentResolver;

    const-string v1, "sb_default_color"

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarView;->mDefaultColor:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mDefaultColor:I

    return-void
.end method

.method static synthetic access$1000006(Lcom/android/systemui/statusbar/StatusBarView;Landroid/app/ActivityManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarView;->tint(Landroid/app/ActivityManager;)V

    return-void
.end method

.method static synthetic access$L1000001(Lcom/android/systemui/statusbar/StatusBarView;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->resolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$L1000003(Lcom/android/systemui/statusbar/StatusBarView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mDefaultColor:I

    return v0
.end method

.method static synthetic access$S1000003(Lcom/android/systemui/statusbar/StatusBarView;I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarView;->mDefaultColor:I

    return-void
.end method

.method static synthetic access$Landroid$view$View$150(Lcom/android/systemui/statusbar/StatusBarView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$Sandroid$view$View$150(Lcom/android/systemui/statusbar/StatusBarView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getDateSize(Landroid/view/ViewGroup;II)I
    .locals 6

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    add-int v2, v5, p3

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v5

    add-int v3, v5, p3

    if-lt p2, v2, :cond_0

    if-gt p2, v3, :cond_0

    move v5, v3

    :goto_1
    return v5

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, -0x1

    goto :goto_1
.end method

.method private getViewOffset(Landroid/view/View;)I
    .locals 6

    const/4 v1, 0x0

    :goto_0
    if-eq p1, p0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v3, p1, Landroid/view/View;

    if-eqz v3, :cond_0

    move-object v0, v2

    check-cast v0, Landroid/view/View;

    move-object p1, v0

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not a child of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    return v1
.end method

.method private final tint(Landroid/app/ActivityManager;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityManager;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 54
    invoke-virtual {p1, v7}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 55
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 56
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "packageName=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->resolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarView;->CONTENT_URI:Landroid/net/Uri;

    move-object v2, v5

    check-cast v2, [Ljava/lang/String;

    move-object v4, v5

    check-cast v4, [Ljava/lang/String;

    check-cast v5, Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 58
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 59
    const-string v0, "hasColor"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eq v0, v7, :cond_0

    move v0, v6

    .line 60
    :goto_0
    if-eqz v0, :cond_1

    .line 62
    const-string v0, "color"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 64
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarView;->setBackgroundColor(I)V

    .line 65
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 67
    :goto_2
    return-void

    :cond_0
    move v0, v7

    .line 59
    goto :goto_0

    .line 63
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mDefaultColor:I

    goto :goto_1

    .line 67
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mDefaultColor:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarView;->setBackgroundColor(I)V

    goto :goto_2
.end method

# virtual methods
.method protected onAttachedToWindow()V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarService;->onBarViewAttached()V

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

   .line 77
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->resolver:Landroid/content/ContentResolver;

    const-string v1, "sb_default_color"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarView;->mObserver:Lcom/android/systemui/statusbar/StatusBarView$MeSettingsObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 78
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 79
    new-instance v1, Lcom/android/systemui/statusbar/StatusBarView$100000000;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/StatusBarView$100000000;-><init>(Lcom/android/systemui/statusbar/StatusBarView;Landroid/app/ActivityManager;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/StatusBarView;->watcher:Landroid/app/IActivityWatcher$Stub;

    .line 88
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarView;->watcher:Landroid/app/IActivityWatcher$Stub;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->registerActivityWatcher(Landroid/app/IActivityWatcher;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/StatusBarView;->tint(Landroid/app/ActivityManager;)V

    return-void

    .line 88
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 108
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mObserver:Lcom/android/systemui/statusbar/StatusBarView$MeSettingsObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->resolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarView;->mObserver:Lcom/android/systemui/statusbar/StatusBarView$MeSettingsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a0005

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mNotificationIcons:Landroid/view/ViewGroup;

    const v0, 0x7f0a0006

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mStatusIcons:Landroid/view/ViewGroup;

    const v0, 0x7f0a000a

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mDate:Landroid/view/View;

    new-instance v0, Lcom/android/systemui/statusbar/FixedSizeDrawable;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarView;->mDate:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/FixedSizeDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mBackground:Lcom/android/systemui/statusbar/FixedSizeDrawable;

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mBackground:Lcom/android/systemui/statusbar/FixedSizeDrawable;

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/android/systemui/statusbar/FixedSizeDrawable;->setFixedBounds(IIII)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mDate:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarView;->mBackground:Lcom/android/systemui/statusbar/FixedSizeDrawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/StatusBarService;->interceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 9

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarView;->mDate:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarView;->mNotificationIcons:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarView;->mNotificationIcons:Landroid/view/ViewGroup;

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/StatusBarView;->getViewOffset(Landroid/view/View;)I

    move-result v5

    invoke-direct {p0, v4, v3, v5}, Lcom/android/systemui/statusbar/StatusBarView;->getDateSize(Landroid/view/ViewGroup;II)I

    move-result v1

    if-gez v1, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarView;->mStatusIcons:Landroid/view/ViewGroup;

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/StatusBarView;->getViewOffset(Landroid/view/View;)I

    move-result v2

    if-ge v3, v2, :cond_2

    move v1, v3

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarView;->getPaddingRight()I

    move-result v4

    sub-int v0, p4, v4

    if-le v1, v0, :cond_1

    move v1, v0

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarView;->mDate:Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarView;->mDate:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/StatusBarView;->mDate:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarView;->mDate:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {v4, v5, v6, v1, v7}, Landroid/view/View;->layout(IIII)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarView;->mBackground:Lcom/android/systemui/statusbar/FixedSizeDrawable;

    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarView;->mDate:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    neg-int v5, v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/StatusBarView;->mDate:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    neg-int v6, v6

    sub-int v7, p4, p2

    sub-int v8, p5, p3

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/systemui/statusbar/FixedSizeDrawable;->setFixedBounds(IIII)V

    return-void

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarView;->mStatusIcons:Landroid/view/ViewGroup;

    invoke-direct {p0, v4, v3, v2}, Lcom/android/systemui/statusbar/StatusBarView;->getDateSize(Landroid/view/ViewGroup;II)I

    move-result v1

    if-gez v1, :cond_0

    move v1, p4

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    const/16 v1, -0x2710

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedViewPos(I)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mDoubleTapGesture:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/StatusBarService;->interceptTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
