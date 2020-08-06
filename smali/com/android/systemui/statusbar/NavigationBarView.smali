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
.field private static final DEBUG:Z = false

#the value of this static final field might be set in the static constructor
.field public static final KEYCODE_VIRTUAL_BACK_LONG:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final KEYCODE_VIRTUAL_HOME_LONG:I = 0x0

.field private static final TAG:Ljava/lang/String; = "NavigationBarView"


# instance fields
.field mBackButton:Landroid/widget/ImageButton;

.field private mCustomBackIcon:Landroid/graphics/Bitmap;

.field private mCustomHomeIcon:Landroid/graphics/Bitmap;

.field private mCustomMenuIcon:Landroid/graphics/Bitmap;

.field mHandler:Landroid/os/Handler;

.field private mHidden:Z

.field mHomeButton:Landroid/widget/ImageButton;

.field private mInputShow:Z

.field private mLongPressBackKills:Z

.field mMenuButton:Landroid/widget/ImageButton;

.field private mNVColor:I

.field private mNVShow:Z

.field private mNVTrans:I

.field mNaviAdd:Landroid/view/View;

.field mNaviBackground:Landroid/view/View;

.field mQuickButton:Landroid/widget/ImageButton;

.field mResetBack:Ljava/lang/Runnable;

.field mResetHome:Ljava/lang/Runnable;

.field mResetMenu:Ljava/lang/Runnable;

.field mSearchButton:Landroid/widget/ImageButton;

.field private mShowBack:I

.field private mShowHome:I

.field private mShowMenu:I

.field private mShowNV:Z

.field mSoftButtons:Landroid/view/ViewGroup;

.field private mVisible:Z

.field mVolDownButton:Landroid/widget/ImageButton;

.field mVolUpButton:Landroid/widget/ImageButton;


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
    .locals 2

    const/4 v1, 0x1

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

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mNVShow:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mShowNV:Z

    iput v1, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mShowHome:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mShowMenu:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mShowBack:I

    return-void
.end method

.method static synthetic access$1000020(Lcom/android/systemui/statusbar/NavigationBarView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NavigationBarView;->updateNaviButtons()V

    return-void
.end method

.method static synthetic access$1000028(Lcom/android/systemui/statusbar/NavigationBarView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NavigationBarView;->simulateKeypress(I)V

    return-void
.end method

.method static synthetic access$L1000000()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/statusbar/NavigationBarView;->DEBUG:Z

    return v0
.end method

.method static synthetic access$L1000001()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/NavigationBarView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$L1000006(Lcom/android/systemui/statusbar/NavigationBarView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mShowHome:I

    return v0
.end method

.method static synthetic access$L1000007(Lcom/android/systemui/statusbar/NavigationBarView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mShowMenu:I

    return v0
.end method

.method static synthetic access$L1000008(Lcom/android/systemui/statusbar/NavigationBarView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mShowBack:I

    return v0
.end method

.method static synthetic access$L1000010(Lcom/android/systemui/statusbar/NavigationBarView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mInputShow:Z

    return v0
.end method

.method static synthetic access$Landroid$view$View$124(Lcom/android/systemui/statusbar/NavigationBarView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$S1000000(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/systemui/statusbar/NavigationBarView;->DEBUG:Z

    return-void
.end method

.method static synthetic access$S1000001(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/android/systemui/statusbar/NavigationBarView;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$S1000006(Lcom/android/systemui/statusbar/NavigationBarView;I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mShowHome:I

    return-void
.end method

.method static synthetic access$S1000007(Lcom/android/systemui/statusbar/NavigationBarView;I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mShowMenu:I

    return-void
.end method

.method static synthetic access$S1000008(Lcom/android/systemui/statusbar/NavigationBarView;I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mShowBack:I

    return-void
.end method

.method static synthetic access$S1000010(Lcom/android/systemui/statusbar/NavigationBarView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mInputShow:Z

    return-void
.end method

.method static synthetic access$Sandroid$view$View$124(Lcom/android/systemui/statusbar/NavigationBarView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-void
.end method

.method private isEventInButton(Landroid/widget/ImageButton;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mNVShow:Z

    if-eqz v0, :cond_0

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

.method private runCustomApp(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x1020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private runCustomIconBack(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201cb

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-double v1, v1

    const/4 v3, 0x2

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    div-double/2addr v1, v3

    double-to-int v1, v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mCustomBackIcon:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private runCustomIconHome(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201cb

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-double v1, v1

    const/4 v3, 0x2

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    div-double/2addr v1, v3

    double-to-int v1, v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mCustomHomeIcon:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private runCustomIconMenu(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201cb

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-double v1, v1

    const/4 v3, 0x2

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    div-double/2addr v1, v3

    double-to-int v1, v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mCustomMenuIcon:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private simulateKeypress(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

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

    const/16 v4, 0xa

    const/4 v2, 0x4

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mNVShow:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mHomeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mVisible:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mShowNV:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mNaviBackground:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mSoftButtons:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mShowNV:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mNaviBackground:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mVisible:Z

    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mShowHome:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mHomeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_3
    iget v0, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mShowMenu:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_4
    iget v0, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mShowBack:I

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mResetHome:Ljava/lang/Runnable;

    int-to-long v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mResetMenu:Ljava/lang/Runnable;

    int-to-long v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mResetBack:Ljava/lang/Runnable;

    int-to-long v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

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

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mHandler:Landroid/os/Handler;

    const v0, 0x7f0a0053

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mNaviAdd:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mNaviAdd:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    const v0, 0x7f0a004a

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mNaviBackground:Landroid/view/View;

    const v0, 0x7f0a0049

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mSoftButtons:Landroid/view/ViewGroup;

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    iput v1, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mNVTrans:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mNVShow:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mNVShow:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0a0044

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mHomeButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mHomeButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/systemui/statusbar/NavigationBarView$100000000;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/NavigationBarView$100000000;-><init>(Lcom/android/systemui/statusbar/NavigationBarView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0048

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mMenuButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mMenuButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/systemui/statusbar/NavigationBarView$100000001;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/NavigationBarView$100000001;-><init>(Lcom/android/systemui/statusbar/NavigationBarView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0051

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mBackButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mBackButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/systemui/statusbar/NavigationBarView$100000002;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/NavigationBarView$100000002;-><init>(Lcom/android/systemui/statusbar/NavigationBarView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mNVShow:Z

    if-nez v1, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mHomeButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v1, p1}, Lcom/android/systemui/statusbar/NavigationBarView;->isEventInButton(Landroid/widget/ImageButton;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mHomeButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mMenuButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v1, p1}, Lcom/android/systemui/statusbar/NavigationBarView;->isEventInButton(Landroid/widget/ImageButton;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mBackButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v1, p1}, Lcom/android/systemui/statusbar/NavigationBarView;->isEventInButton(Landroid/widget/ImageButton;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_3
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public reorient()V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mNVShow:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mNVShow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mNaviAdd:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NavigationBarView;->updateNaviButtons()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mNaviAdd:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setHidden(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mHidden:Z

    if-nez v0, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mHidden:Z

    if-nez v0, :cond_0

    :cond_2
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mHidden:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mShowNV:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mSoftButtons:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NavigationBarView;->updateNaviButtons()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mSoftButtons:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1
.end method

.method public setIMEVisible(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mInputShow:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NavigationBarView;->updateNaviButtons()V

    return-void
.end method

.method public setNaviVisible(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mShowNV:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mNaviBackground:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mVisible:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NavigationBarView;->updateNaviButtons()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarView;->mNaviBackground:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
